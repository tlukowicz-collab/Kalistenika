import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../models.dart';
import '../state.dart';

class ActiveWorkoutScreen extends StatefulWidget {
  final WorkoutDay workoutDay;
  const ActiveWorkoutScreen({super.key, required this.workoutDay});

  @override
  State<ActiveWorkoutScreen> createState() => _ActiveWorkoutScreenState();
}

class _ActiveWorkoutScreenState extends State<ActiveWorkoutScreen> {
  int _exerciseIdx = 0;
  int _currentSet = 0;
  bool _resting = false;
  int _restSecsLeft = 0;
  Timer? _timer;
  bool _warmingUp = true;
  int _warmupSecsLeft = 30;
  bool _finished = false;
  late DateTime _startTime;
  int _timedSecsLeft = 0;
  bool _timedRunning = false;

  @override
  void initState() {
    super.initState();
    _startTime = DateTime.now();
    _startWarmup();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startWarmup() {
    _warmupSecsLeft = 30;
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_warmupSecsLeft <= 0) {
        t.cancel();
        setState(() => _warmingUp = false);
      } else {
        setState(() => _warmupSecsLeft--);
      }
    });
  }

  WorkSet get _currentWorkSet => widget.workoutDay.sets[_exerciseIdx];

  void _startRest() {
    setState(() {
      _resting = true;
      _restSecsLeft = _currentWorkSet.restSecs;
    });
    HapticFeedback.mediumImpact();
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_restSecsLeft <= 0) {
        t.cancel();
        HapticFeedback.heavyImpact();
        setState(() {
          _resting = false;
          _currentSet++;
        });
      } else {
        setState(() => _restSecsLeft--);
      }
    });
  }

  void _skipRest() {
    _timer?.cancel();
    setState(() {
      _resting = false;
      _currentSet++;
    });
  }

  void _startTimedExercise() {
    setState(() {
      _timedRunning = true;
      _timedSecsLeft = _currentWorkSet.secs;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_timedSecsLeft <= 0) {
        t.cancel();
        HapticFeedback.heavyImpact();
        setState(() => _timedRunning = false);
        _onSetDone();
      } else {
        setState(() => _timedSecsLeft--);
      }
    });
  }

  void _onSetDone() {
    final ws = _currentWorkSet;
    final isLastSet = _currentSet >= ws.sets - 1;
    final isLastExercise = _exerciseIdx >= widget.workoutDay.sets.length - 1;

    if (isLastSet && isLastExercise) {
      setState(() => _finished = true);
      final duration = DateTime.now().difference(_startTime).inMinutes;
      context.read<AppState>().logWorkout(widget.workoutDay.title, duration.clamp(1, 999));
      HapticFeedback.heavyImpact();
    } else if (isLastSet) {
      setState(() {
        _exerciseIdx++;
        _currentSet = 0;
      });
    } else {
      _startRest();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_finished) return _FinishedScreen(workoutDay: widget.workoutDay, startTime: _startTime);

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        foregroundColor: Colors.white,
        title: Text(widget.workoutDay.emoji + '  ' + 'Trening'),
        actions: [
          TextButton(
            onPressed: () => _confirmQuit(context),
            child: const Text('Zakończ', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
      body: _warmingUp ? _WarmupView(secsLeft: _warmupSecsLeft) : _MainView(
        workoutDay: widget.workoutDay,
        exerciseIdx: _exerciseIdx,
        currentSet: _currentSet,
        resting: _resting,
        restSecsLeft: _restSecsLeft,
        timedRunning: _timedRunning,
        timedSecsLeft: _timedSecsLeft,
        onSetDone: _onSetDone,
        onStartTimed: _startTimedExercise,
        onSkipRest: _skipRest,
      ),
    );
  }

  void _confirmQuit(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: const Color(0xFF1E1E1E),
        title: const Text('Zakończyć trening?', style: TextStyle(color: Colors.white)),
        content: const Text('Postęp nie zostanie zapisany.', style: TextStyle(color: Colors.white70)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Kontynuuj')),
          TextButton(
            onPressed: () { Navigator.pop(context); Navigator.pop(context); },
            child: const Text('Zakończ', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

class _WarmupView extends StatelessWidget {
  final int secsLeft;
  const _WarmupView({required this.secsLeft});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('🔥', style: TextStyle(fontSize: 64)),
            const SizedBox(height: 24),
            const Text('Rozgrzewka', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 12),
            const Text('Wymachy ramionami, rotacje bioder, pajacyki.\nRusz każdy staw przed treningiem.',
                textAlign: TextAlign.center, style: TextStyle(color: Colors.white70, fontSize: 15)),
            const SizedBox(height: 32),
            _TimerCircle(secs: secsLeft, total: 30, color: const Color(0xFFFF6B35)),
          ],
        ),
      ),
    );
  }
}

class _MainView extends StatelessWidget {
  final WorkoutDay workoutDay;
  final int exerciseIdx;
  final int currentSet;
  final bool resting;
  final int restSecsLeft;
  final bool timedRunning;
  final int timedSecsLeft;
  final VoidCallback onSetDone;
  final VoidCallback onStartTimed;
  final VoidCallback onSkipRest;

  const _MainView({
    required this.workoutDay,
    required this.exerciseIdx,
    required this.currentSet,
    required this.resting,
    required this.restSecsLeft,
    required this.timedRunning,
    required this.timedSecsLeft,
    required this.onSetDone,
    required this.onStartTimed,
    required this.onSkipRest,
  });

  @override
  Widget build(BuildContext context) {
    final ws = workoutDay.sets[exerciseIdx];
    final ex = ws.exercise;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _ProgressBar(current: exerciseIdx, total: workoutDay.sets.length),
            const SizedBox(height: 20),
            if (resting)
              Expanded(child: _RestView(secsLeft: restSecsLeft, total: ws.restSecs, onSkip: onSkipRest))
            else
              Expanded(
                child: Column(
                  children: [
                    _ExerciseHeader(ex: ex, setNum: currentSet + 1, totalSets: ws.sets, ws: ws),
                    const SizedBox(height: 16),
                    _ExerciseInfo(ex: ex),
                    const Spacer(),
                    if (ws.isTimed) ...[
                      if (timedRunning)
                        _TimerCircle(secs: timedSecsLeft, total: ws.secs, color: const Color(0xFF00C853))
                      else
                        _StartTimedButton(ws: ws, onStart: onStartTimed),
                    ] else
                      _RepsButton(ws: ws, onDone: onSetDone),
                    const SizedBox(height: 16),
                    if (exerciseIdx + 1 < workoutDay.sets.length) ...[
                      const Divider(color: Colors.white12),
                      _NextExerciseHint(next: workoutDay.sets[exerciseIdx + 1]),
                    ],
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  final int current;
  final int total;
  const _ProgressBar({required this.current, required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Ćwiczenie ${current + 1} z $total', style: const TextStyle(color: Colors.white70, fontSize: 13)),
          ],
        ),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: (current) / total,
            minHeight: 6,
            backgroundColor: const Color(0xFF333333),
            valueColor: const AlwaysStoppedAnimation(Color(0xFF00C853)),
          ),
        ),
      ],
    );
  }
}

class _ExerciseHeader extends StatelessWidget {
  final Exercise ex;
  final int setNum;
  final int totalSets;
  final WorkSet ws;
  const _ExerciseHeader({required this.ex, required this.setNum, required this.totalSets, required this.ws});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF00C853), width: 1),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ex.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                Text(ex.muscles, style: const TextStyle(color: Colors.white70, fontSize: 13)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Seria', style: const TextStyle(color: Colors.grey, fontSize: 12)),
              Text('$setNum / $totalSets', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF00C853))),
              Text(ws.repsLabel, style: const TextStyle(color: Colors.white70, fontSize: 13)),
            ],
          ),
        ],
      ),
    );
  }
}

class _ExerciseInfo extends StatelessWidget {
  final Exercise ex;
  const _ExerciseInfo({required this.ex});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (ctx, state, _) {
        final currentStage = ex.stages != null ? state.getExerciseStage(ex.name) : -1;
        return Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Jak wykonać:', style: TextStyle(color: Colors.white70, fontSize: 12, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text(ex.description, style: const TextStyle(color: Colors.white, fontSize: 14, height: 1.4)),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.lightbulb_outline, color: Color(0xFFFFD700), size: 16),
                  const SizedBox(width: 6),
                  Expanded(child: Text(ex.tip, style: const TextStyle(color: Color(0xFFFFD700), fontSize: 13))),
                ],
              ),
              if (ex.stages != null) ...[
                const SizedBox(height: 14),
                const Divider(color: Colors.white12, height: 1),
                const SizedBox(height: 10),
                const Text('Twój etap:', style: TextStyle(color: Colors.white54, fontSize: 12, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 6,
                  children: List.generate(ex.stages!.length, (i) {
                    final selected = currentStage == i;
                    return GestureDetector(
                      onTap: () => state.setExerciseStage(ex.name, i),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 180),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: selected ? const Color(0xFF00C853) : const Color(0xFF2A2A2A),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: selected ? const Color(0xFF00C853) : Colors.white24,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (selected) ...[
                              const Icon(Icons.check, size: 13, color: Colors.black),
                              const SizedBox(width: 4),
                            ],
                            Text(
                              '${i + 1}. ${ex.stages![i]}',
                              style: TextStyle(
                                fontSize: 12,
                                color: selected ? Colors.black : Colors.white70,
                                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

class _RepsButton extends StatelessWidget {
  final WorkSet ws;
  final VoidCallback onDone;
  const _RepsButton({required this.ws, required this.onDone});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${ws.reps} powtórzeń', style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00C853),
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            ),
            onPressed: onDone,
            child: const Text('UKOŃCZYŁEM SERIĘ ✓', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ),
        ),
      ],
    );
  }
}

class _StartTimedButton extends StatelessWidget {
  final WorkSet ws;
  final VoidCallback onStart;
  const _StartTimedButton({required this.ws, required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${ws.secs} sekund', style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF6B35),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            ),
            onPressed: onStart,
            child: const Text('START TIMER ▶', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ),
        ),
      ],
    );
  }
}

class _RestView extends StatelessWidget {
  final int secsLeft;
  final int total;
  final VoidCallback onSkip;
  const _RestView({required this.secsLeft, required this.total, required this.onSkip});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('PRZERWA', style: TextStyle(color: Colors.white70, fontSize: 16, letterSpacing: 3)),
        const SizedBox(height: 24),
        _TimerCircle(secs: secsLeft, total: total, color: const Color(0xFF2196F3)),
        const SizedBox(height: 32),
        const Text('Złap oddech, nawodnij się 💧', style: TextStyle(color: Colors.white70)),
        const SizedBox(height: 24),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white38),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          onPressed: onSkip,
          child: const Text('Pomiń przerwę', style: TextStyle(color: Colors.white70)),
        ),
      ],
    );
  }
}

class _TimerCircle extends StatelessWidget {
  final int secs;
  final int total;
  final Color color;
  const _TimerCircle({required this.secs, required this.total, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 180,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: total > 0 ? secs / total : 0,
            strokeWidth: 12,
            backgroundColor: const Color(0xFF333333),
            valueColor: AlwaysStoppedAnimation(color),
          ),
          Text(
            secs >= 60 ? '${secs ~/ 60}:${(secs % 60).toString().padLeft(2, '0')}' : '$secs',
            style: TextStyle(fontSize: 52, fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }
}

class _NextExerciseHint extends StatelessWidget {
  final WorkSet next;
  const _NextExerciseHint({required this.next});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const Icon(Icons.arrow_forward, color: Colors.white38, size: 16),
          const SizedBox(width: 8),
          Text('Następne: ${next.exercise.name}  ${next.repsLabel} × ${next.sets} series',
              style: const TextStyle(color: Colors.white54, fontSize: 13)),
        ],
      ),
    );
  }
}

class _FinishedScreen extends StatelessWidget {
  final WorkoutDay workoutDay;
  final DateTime startTime;
  const _FinishedScreen({required this.workoutDay, required this.startTime});

  @override
  Widget build(BuildContext context) {
    final minutes = DateTime.now().difference(startTime).inMinutes;
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('🏆', style: TextStyle(fontSize: 80)),
                const SizedBox(height: 24),
                const Text('TRENING UKOŃCZONY!', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1)),
                const SizedBox(height: 16),
                Text(workoutDay.title, style: const TextStyle(color: Colors.white70, fontSize: 16)),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _ResultChip(icon: Icons.timer, value: '$minutes min'),
                    const SizedBox(width: 16),
                    _ResultChip(icon: Icons.fitness_center, value: '${workoutDay.sets.length} ćwiczeń'),
                  ],
                ),
                const SizedBox(height: 40),
                const Text('Doskonała robota! Każdy trening zbliża Cię\ndo wymarzonej sylwetki na wakacjach. 💪',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 15, height: 1.5)),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00C853),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                    onPressed: () { Navigator.pop(context); Navigator.pop(context); },
                    child: const Text('WRÓĆ DO GŁÓWNEJ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ResultChip extends StatelessWidget {
  final IconData icon;
  final String value;
  const _ResultChip({required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF00C853), size: 20),
          const SizedBox(width: 8),
          Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
        ],
      ),
    );
  }
}
