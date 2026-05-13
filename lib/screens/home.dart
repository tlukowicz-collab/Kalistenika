import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state.dart';
import '../program.dart';
import '../diet.dart';
import 'active_workout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppState>();

    if (!state.programStarted) {
      return _WelcomeScreen();
    }

    final week = state.currentWeek;
    final dow = state.currentDayOfWeek;
    final workout = getWorkout(week, dow);
    final meals = getMealsForDay(dow);
    final isRest = isRestDay(week, dow);
    final completedToday = state.wasCompletedToday(week, dow);

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(week: week, dow: dow, daysLeft: state.daysUntilEnd),
              const SizedBox(height: 20),
              _WeekProgress(week: week, workoutsThisWeek: state.workoutsThisWeek),
              const SizedBox(height: 20),
              if (isRest)
                _RestDayCard()
              else if (workout != null)
                _WorkoutCard(workout: workout, completed: completedToday)
              ,
              const SizedBox(height: 20),
              _TodayMealsCard(meals: meals),
              const SizedBox(height: 20),
              _StatsRow(state: state),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final int week;
  final int dow;
  final int daysLeft;
  const _Header({required this.week, required this.dow, required this.daysLeft});

  String get _dayName {
    const names = ['', 'Poniedziałek', 'Wtorek', 'Środa', 'Czwartek', 'Piątek', 'Sobota', 'Niedziela'];
    return names[dow];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tydzień $week / 6', style: const TextStyle(color: Color(0xFF00C853), fontWeight: FontWeight.bold, fontSize: 13)),
            Text(_dayName, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF1E1E1E),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Text('$daysLeft', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF00C853))),
              const Text('dni do\nwakacji', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }
}

class _WeekProgress extends StatelessWidget {
  final int week;
  final int workoutsThisWeek;
  const _WeekProgress({required this.week, required this.workoutsThisWeek});

  @override
  Widget build(BuildContext context) {
    final total = workoutsInWeek(week);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Postęp tygodnia', style: TextStyle(color: Colors.white70, fontSize: 13)),
              Text('$workoutsThisWeek / $total treningów', style: const TextStyle(color: Color(0xFF00C853), fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: total > 0 ? workoutsThisWeek / total : 0,
              minHeight: 8,
              backgroundColor: const Color(0xFF333333),
              valueColor: const AlwaysStoppedAnimation(Color(0xFF00C853)),
            ),
          ),
          const SizedBox(height: 8),
          Text(weekDescription(week), style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}

class _WorkoutCard extends StatelessWidget {
  final workoutDay;
  final bool completed;
  const _WorkoutCard({required this.workoutDay, required this.completed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: completed
            ? const LinearGradient(colors: [Color(0xFF1E1E1E), Color(0xFF1E1E1E)])
            : const LinearGradient(colors: [Color(0xFF003D1A), Color(0xFF005723)]),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: completed ? Colors.grey.shade800 : const Color(0xFF00C853), width: completed ? 1 : 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(workoutDay.emoji, style: const TextStyle(fontSize: 28)),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(workoutDay.title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white)),
                    Text(workoutDay.focus, style: const TextStyle(color: Colors.white70, fontSize: 13)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _chip(Icons.timer_outlined, '~${workoutDay.estimatedMins} min'),
              const SizedBox(width: 8),
              _chip(Icons.repeat, '${workoutDay.sets.length} ćwiczeń'),
            ],
          ),
          const SizedBox(height: 14),
          if (completed)
            const Row(children: [
              Icon(Icons.check_circle, color: Color(0xFF00C853), size: 18),
              SizedBox(width: 6),
              Text('Ukończony dziś – świetna robota!', style: TextStyle(color: Color(0xFF00C853), fontWeight: FontWeight.bold)),
            ])
          else
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00C853),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ActiveWorkoutScreen(workoutDay: workoutDay)),
                ),
                child: const Text('ZACZNIJ TRENING', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
        ],
      ),
    );
  }

  Widget _chip(IconData icon, String label) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(20)),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: Colors.white70),
        const SizedBox(width: 4),
        Text(label, style: const TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    ),
  );
}

class _RestDayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(16)),
      child: const Row(
        children: [
          Text('😴', style: TextStyle(fontSize: 36)),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dzień odpoczynku', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                SizedBox(height: 4),
                Text('Mięśnie rosną podczas regeneracji. Zjedz dobrze, wyśpij się dobrze.', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TodayMealsCard extends StatelessWidget {
  final meals;
  const _TodayMealsCard({required this.meals});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Dieta na dziś', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
              Text('${meals.totalKcal} kcal  |  ${meals.totalProtein}g białka',
                  style: const TextStyle(color: Color(0xFF00C853), fontSize: 12)),
            ],
          ),
          const SizedBox(height: 12),
          _mealRow('☀️', 'Śniadanie', meals.breakfast.name, '${meals.breakfast.kcal} kcal'),
          _mealRow('🍽️', 'Obiad', meals.lunch.name, '${meals.lunch.kcal} kcal'),
          _mealRow('🌙', 'Kolacja', meals.dinner.name, '${meals.dinner.kcal} kcal'),
          _mealRow('🍎', 'Przekąska', meals.snack.name, '${meals.snack.kcal} kcal'),
        ],
      ),
    );
  }

  Widget _mealRow(String emoji, String type, String name, String kcal) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      children: [
        Text(emoji, style: const TextStyle(fontSize: 18)),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(type, style: const TextStyle(color: Colors.grey, fontSize: 11)),
              Text(name, style: const TextStyle(color: Colors.white, fontSize: 13)),
            ],
          ),
        ),
        Text(kcal, style: const TextStyle(color: Colors.white54, fontSize: 12)),
      ],
    ),
  );
}

class _StatsRow extends StatelessWidget {
  final AppState state;
  const _StatsRow({required this.state});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _StatCard(value: '${state.totalWorkouts}', label: 'Treningów\nogółem', icon: Icons.fitness_center)),
        const SizedBox(width: 10),
        Expanded(child: _StatCard(value: state.latestWeight != null ? '${state.latestWeight!.toStringAsFixed(1)} kg' : '–', label: 'Aktualna\nwaga', icon: Icons.monitor_weight_outlined)),
        const SizedBox(width: 10),
        Expanded(child: _StatCard(
          value: state.weightChange != null
              ? '${state.weightChange! > 0 ? '+' : ''}${state.weightChange!.toStringAsFixed(1)} kg'
              : '–',
          label: 'Zmiana\nwagi',
          icon: Icons.trending_down,
          valueColor: state.weightChange != null && state.weightChange! < 0 ? const Color(0xFF00C853) : null,
        )),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;
  final Color? valueColor;
  const _StatCard({required this.value, required this.label, required this.icon, this.valueColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Icon(icon, color: const Color(0xFF00C853), size: 22),
          const SizedBox(height: 6),
          Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: valueColor ?? Colors.white)),
          const SizedBox(height: 2),
          Text(label, textAlign: TextAlign.center, style: const TextStyle(color: Colors.grey, fontSize: 11)),
        ],
      ),
    );
  }
}

class _WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('💪', style: TextStyle(fontSize: 72)),
              const SizedBox(height: 24),
              const Text('Kalistenia\n6 tygodni do wakacji',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white, height: 1.3)),
              const SizedBox(height: 16),
              const Text('Program stworzony dla Ciebie:\n• Ćwiczenia w domu bez sprzętu\n• Dieta ~2000 kcal, 150g białka/dzień\n• Proste przepisy, max 30-40 min gotowania\n• Widoczna sylwetka na wakacjach',
                  style: TextStyle(color: Colors.white70, fontSize: 15, height: 1.6)),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00C853),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  ),
                  onPressed: () => context.read<AppState>().startProgram(),
                  child: const Text('ZACZYNAM DZIŚ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
