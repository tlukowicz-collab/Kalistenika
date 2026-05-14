import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppState>();

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text('Postępy', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 16),
            _ProgramProgress(state: state),
            const SizedBox(height: 16),
            _WeightSection(state: state),
            const SizedBox(height: 16),
            _WorkoutHistory(state: state),
            const SizedBox(height: 16),
            if (state.programStarted) _ResetButton(),
          ],
        ),
      ),
    );
  }
}

class _ProgramProgress extends StatelessWidget {
  final AppState state;
  const _ProgramProgress({required this.state});

  @override
  Widget build(BuildContext context) {
    if (!state.programStarted) {
      return const _Card(child: Padding(
        padding: EdgeInsets.all(8),
        child: Text('Uruchom program w zakładce "Dziś" aby śledzić postępy.', style: TextStyle(color: Colors.white70)),
      ));
    }

    final totalDays = state.totalDaysElapsed;
    final phase = state.currentPhase;
    final weekInPhase = state.weekInPhase;
    final phaseWeeks = phase == 3 ? 12 : 6;
    final phaseProgress = (weekInPhase / phaseWeeks).clamp(0.0, 1.0);
    final phaseLabel = phase == 1 ? 'Faza 1 – Podstawy' : phase == 2 ? 'Faza 2 – Zaawansowana' : 'Faza 3 – Elitarna';

    return _Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(phaseLabel, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF00C853).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFF00C853), width: 1),
                ),
                child: Text('Faza $phase', style: const TextStyle(color: Color(0xFF00C853), fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _BigStat('Tydzień', '${state.currentWeek}'),
              _BigStat('Dzień', '$totalDays'),
              _BigStat(phase == 1 ? 'Do wakacji' : 'Koniec fazy', '${state.daysUntilEnd} dni'),
            ],
          ),
          const SizedBox(height: 14),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: phaseProgress,
              minHeight: 10,
              backgroundColor: const Color(0xFF333333),
              valueColor: const AlwaysStoppedAnimation(Color(0xFF00C853)),
            ),
          ),
          const SizedBox(height: 6),
          Text('Tydzień $weekInPhase z $phaseWeeks w Fazie $phase (${(phaseProgress * 100).round()}%)',
              style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}

class _BigStat extends StatelessWidget {
  final String label;
  final String value;
  const _BigStat(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF00C853))),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }
}

class _WeightSection extends StatefulWidget {
  final AppState state;
  const _WeightSection({required this.state});

  @override
  State<_WeightSection> createState() => _WeightSectionState();
}

class _WeightSectionState extends State<_WeightSection> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    final val = double.tryParse(_controller.text.replaceAll(',', '.'));
    if (val == null || val < 30 || val > 250) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Podaj prawidłową wagę (np. 82.5)'), backgroundColor: Colors.red),
      );
      return;
    }
    widget.state.logWeight(val);
    _controller.clear();
    FocusScope.of(context).unfocus();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Waga ${val.toStringAsFixed(1)} kg zapisana ✓'), backgroundColor: const Color(0xFF00C853)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = widget.state;
    return _Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Waga ciała', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 14),
          if (state.weights.isNotEmpty) ...[
            Row(
              children: [
                Expanded(child: _WeightStat('Start', '${state.weights.first.kg.toStringAsFixed(1)} kg')),
                Expanded(child: _WeightStat('Teraz', '${state.latestWeight!.toStringAsFixed(1)} kg')),
                Expanded(child: _WeightStat('Zmiana', () {
                  final ch = state.weightChange!;
                  return '${ch > 0 ? '+' : ''}${ch.toStringAsFixed(1)} kg';
                }(), color: state.weightChange! < 0 ? const Color(0xFF00C853) : null)),
              ],
            ),
            const SizedBox(height: 14),
            const Text('Historia wagi:', style: TextStyle(color: Colors.white70, fontSize: 13)),
            const SizedBox(height: 8),
            SizedBox(
              height: 120,
              child: _WeightChart(weights: state.weights.toList()),
            ),
            const SizedBox(height: 14),
          ],
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Podaj wagę (kg)',
                    hintStyle: const TextStyle(color: Colors.white38),
                    filled: true,
                    fillColor: const Color(0xFF2A2A2A),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  ),
                  onSubmitted: (_) => _submit(),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00C853),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: _submit,
                child: const Text('Zapisz', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _WeightStat extends StatelessWidget {
  final String label;
  final String value;
  final Color? color;
  const _WeightStat(this.label, this.value, {this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 11)),
        Text(value, style: TextStyle(color: color ?? Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class _WeightChart extends StatelessWidget {
  final List weights;
  const _WeightChart({required this.weights});

  @override
  Widget build(BuildContext context) {
    if (weights.length < 2) {
      return const Center(child: Text('Za mało danych – dodaj więcej pomiarów', style: TextStyle(color: Colors.white38, fontSize: 12)));
    }

    final kgs = weights.map((w) => w.kg as double).toList();
    final minKg = kgs.reduce((a, b) => a < b ? a : b) - 1;
    final maxKg = kgs.reduce((a, b) => a > b ? a : b) + 1;
    final range = maxKg - minKg;

    return CustomPaint(
      painter: _ChartPainter(kgs: kgs, minKg: minKg, range: range),
    );
  }
}

class _ChartPainter extends CustomPainter {
  final List<double> kgs;
  final double minKg;
  final double range;
  const _ChartPainter({required this.kgs, required this.minKg, required this.range});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF00C853)
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final dotPaint = Paint()..color = const Color(0xFF00C853);
    final path = Path();

    for (int i = 0; i < kgs.length; i++) {
      final x = i / (kgs.length - 1) * size.width;
      final y = size.height - ((kgs[i] - minKg) / range) * size.height;
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
      canvas.drawCircle(Offset(x, y), 4, dotPaint);
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_ChartPainter old) => true;
}

class _WorkoutHistory extends StatelessWidget {
  final AppState state;
  const _WorkoutHistory({required this.state});

  @override
  Widget build(BuildContext context) {
    final workouts = state.workouts.reversed.take(20).toList();
    return _Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Historia treningów', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              Text('${state.totalWorkouts} total', style: const TextStyle(color: Color(0xFF00C853), fontSize: 13)),
            ],
          ),
          const SizedBox(height: 12),
          if (workouts.isEmpty)
            const Text('Brak treningów — zacznij dziś!', style: TextStyle(color: Colors.white38))
          else
            ...workouts.map((w) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  const Icon(Icons.check_circle, color: Color(0xFF00C853), size: 18),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(w.title, style: const TextStyle(color: Colors.white, fontSize: 13)),
                        Text(_formatDate(w.date), style: const TextStyle(color: Colors.grey, fontSize: 11)),
                      ],
                    ),
                  ),
                  Text('${w.durationMins} min', style: const TextStyle(color: Colors.white54, fontSize: 12)),
                ],
              ),
            )),
        ],
      ),
    );
  }

  String _formatDate(DateTime d) {
    const months = ['', 'sty', 'lut', 'mar', 'kwi', 'maj', 'cze', 'lip', 'sie', 'wrz', 'paź', 'lis', 'gru'];
    return '${d.day} ${months[d.month]} ${d.year}';
  }
}

class _ResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog(
        context: context,
        builder: (_) => AlertDialog(
          backgroundColor: const Color(0xFF1E1E1E),
          title: const Text('Zresetować program?', style: TextStyle(color: Colors.white)),
          content: const Text('Usuwa wszystkie dane: treningi, wagę, datę startu.', style: TextStyle(color: Colors.white70)),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: const Text('Anuluj')),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<AppState>().resetProgram();
              },
              child: const Text('Resetuj', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
      child: const Text('Resetuj program', style: TextStyle(color: Colors.redAccent)),
    );
  }
}

class _Card extends StatelessWidget {
  final Widget child;
  const _Card({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(16)),
      child: child,
    );
  }
}
