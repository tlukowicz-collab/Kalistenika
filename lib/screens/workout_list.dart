import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state.dart';
import '../program.dart';
import 'active_workout.dart';

class WorkoutListScreen extends StatelessWidget {
  const WorkoutListScreen({super.key});

  List<int> _weeksToShow(int currentWeek) {
    if (currentWeek <= 6) return List.generate(6, (i) => i + 1);
    if (currentWeek <= 12) return List.generate(6, (i) => i + 7);
    final cycleStart = ((currentWeek - 13) ~/ 12) * 12 + 13;
    return List.generate(12, (i) => cycleStart + i);
  }

  String _phaseLabel(int phase, int currentWeek) {
    if (phase == 1) return 'Faza 1 – Podstawy  (tyg. 1–6)';
    if (phase == 2) return 'Faza 2 – Zaawansowana  (tyg. 7–12)';
    final cycle = (currentWeek - 13) ~/ 12 + 1;
    final cycleStart = ((currentWeek - 13) ~/ 12) * 12 + 13;
    return 'Faza 3 – Elitarna  · cykl $cycle  (tyg. $cycleStart–${cycleStart + 11})';
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppState>();
    final weeks = _weeksToShow(state.currentWeek);
    final phase = state.currentPhase;

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
                child: Text('Program treningowy', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00C853).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFF00C853), width: 1),
                      ),
                      child: Text('Faza $phase', style: const TextStyle(color: Color(0xFF00C853), fontSize: 12, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(_phaseLabel(phase, state.currentWeek),
                          style: const TextStyle(color: Colors.white70, fontSize: 13)),
                    ),
                  ],
                ),
              ),
            ),
            if (phase > 1)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      phase == 2
                          ? 'Faza 1 ukończona  ·  Fazy poprzednie dostępne po zmianie w Postępach'
                          : 'Fazy 1 i 2 ukończone  ·  Fazy poprzednie dostępne po zmianie w Postępach',
                      style: const TextStyle(color: Colors.white38, fontSize: 12),
                    ),
                  ),
                ),
              ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (ctx, i) => _WeekSection(week: weeks[i], currentWeek: state.currentWeek, currentDow: state.currentDayOfWeek),
                childCount: weeks.length,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
          ],
        ),
      ),
    );
  }
}

class _WeekSection extends StatefulWidget {
  final int week;
  final int currentWeek;
  final int currentDow;
  const _WeekSection({required this.week, required this.currentWeek, required this.currentDow});

  @override
  State<_WeekSection> createState() => _WeekSectionState();
}

class _WeekSectionState extends State<_WeekSection> {
  late bool _expanded;

  @override
  void initState() {
    super.initState();
    _expanded = widget.week == widget.currentWeek;
  }

  @override
  Widget build(BuildContext context) {
    final isCurrentWeek = widget.week == widget.currentWeek;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(16),
          border: isCurrentWeek ? Border.all(color: const Color(0xFF00C853), width: 1.5) : null,
        ),
        child: Column(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () => setState(() => _expanded = !_expanded),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: isCurrentWeek ? const Color(0xFF00C853) : const Color(0xFF333333),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text('${widget.week}', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isCurrentWeek ? Colors.black : Colors.white,
                          fontSize: 16,
                        )),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(weekDescription(widget.week), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                          if (isCurrentWeek)
                            const Text('← AKTUALNY TYDZIEŃ', style: TextStyle(color: Color(0xFF00C853), fontSize: 11)),
                        ],
                      ),
                    ),
                    Icon(_expanded ? Icons.expand_less : Icons.expand_more, color: Colors.white54),
                  ],
                ),
              ),
            ),
            if (_expanded) ...[
              const Divider(height: 1, color: Colors.white12),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: List.generate(7, (dowIdx) {
                    final dow = dowIdx + 1;
                    final workout = getWorkout(widget.week, dow);
                    final isRest = isRestDay(widget.week, dow);
                    final isTodayHere = widget.week == widget.currentWeek && dow == widget.currentDow;

                    if (isRest) {
                      return _DayTile(
                        dow: dow,
                        isRest: true,
                        isToday: isTodayHere,
                        workout: null,
                        onTap: null,
                      );
                    }
                    if (workout == null) return const SizedBox();
                    return _DayTile(
                      dow: dow,
                      isRest: false,
                      isToday: isTodayHere,
                      workout: workout,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ActiveWorkoutScreen(workoutDay: workout)),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _DayTile extends StatelessWidget {
  final int dow;
  final bool isRest;
  final bool isToday;
  final dynamic workout;
  final VoidCallback? onTap;

  const _DayTile({required this.dow, required this.isRest, required this.isToday, required this.workout, required this.onTap});

  static const _dayNames = ['', 'Pon', 'Wt', 'Śr', 'Czw', 'Pt', 'Sob', 'Nd'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            color: isToday ? const Color(0xFF002D0F) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: isToday ? Border.all(color: const Color(0xFF00C853), width: 1) : null,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 36,
                child: Text(_dayNames[dow], style: TextStyle(
                  color: isToday ? const Color(0xFF00C853) : Colors.white54,
                  fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                  fontSize: 13,
                )),
              ),
              if (isRest) ...[
                const Icon(Icons.hotel, color: Colors.white30, size: 18),
                const SizedBox(width: 8),
                const Text('Odpoczynek', style: TextStyle(color: Colors.white30, fontSize: 14)),
              ] else ...[
                Text(workout.emoji, style: const TextStyle(fontSize: 18)),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(workout.title, style: TextStyle(
                    color: isToday ? Colors.white : Colors.white70,
                    fontSize: 14,
                    fontWeight: isToday ? FontWeight.w600 : FontWeight.normal,
                  )),
                ),
                Text('~${workout.estimatedMins} min', style: const TextStyle(color: Colors.white38, fontSize: 12)),
                if (onTap != null) ...[
                  const SizedBox(width: 4),
                  const Icon(Icons.play_circle_outline, color: Color(0xFF00C853), size: 20),
                ],
              ],
            ],
          ),
        ),
      ),
    );
  }
}
