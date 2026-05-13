class Exercise {
  final String name;
  final String muscles;
  final String description;
  final String tip;
  const Exercise({required this.name, required this.muscles, required this.description, required this.tip});
}

class WorkSet {
  final Exercise exercise;
  final int sets;
  final int reps;
  final int secs;
  final int restSecs;
  const WorkSet({required this.exercise, required this.sets, this.reps = 0, this.secs = 0, this.restSecs = 60});
  bool get isTimed => secs > 0;
  String get repsLabel => isTimed ? '${secs}s' : '$reps powtórzeń';
}

class WorkoutDay {
  final int week;
  final int dow;
  final String title;
  final String emoji;
  final String focus;
  final List<WorkSet> sets;
  const WorkoutDay({required this.week, required this.dow, required this.title, required this.emoji, required this.focus, required this.sets});

  int get estimatedMins {
    int total = 5;
    for (final s in sets) {
      total += s.isTimed ? (s.secs * s.sets + s.restSecs * (s.sets - 1)) ~/ 60 : (s.sets * 50 + s.restSecs * (s.sets - 1)) ~/ 60;
    }
    return total + 3;
  }
}

class Ingredient {
  final String name;
  final String amount;
  const Ingredient(this.name, this.amount);
}

class Meal {
  final String name;
  final String type;
  final int kcal;
  final int protein;
  final List<Ingredient> ingredients;
  final List<String> steps;
  final int prepMins;
  const Meal({required this.name, required this.type, required this.kcal, required this.protein, required this.ingredients, required this.steps, required this.prepMins});
}

class DayMeals {
  final String dayName;
  final Meal breakfast;
  final Meal lunch;
  final Meal dinner;
  final Meal snack;
  const DayMeals({required this.dayName, required this.breakfast, required this.lunch, required this.dinner, required this.snack});
  int get totalKcal => breakfast.kcal + lunch.kcal + dinner.kcal + snack.kcal;
  int get totalProtein => breakfast.protein + lunch.protein + dinner.protein + snack.protein;
}

class WorkoutRecord {
  final DateTime date;
  final String title;
  final int durationMins;
  WorkoutRecord({required this.date, required this.title, required this.durationMins});
  Map<String, dynamic> toJson() => {'date': date.toIso8601String(), 'title': title, 'duration': durationMins};
  factory WorkoutRecord.fromJson(Map<String, dynamic> j) => WorkoutRecord(
    date: DateTime.parse(j['date'] as String),
    title: j['title'] as String,
    durationMins: j['duration'] as int,
  );
}

class WeightRecord {
  final DateTime date;
  final double kg;
  WeightRecord({required this.date, required this.kg});
  Map<String, dynamic> toJson() => {'date': date.toIso8601String(), 'kg': kg};
  factory WeightRecord.fromJson(Map<String, dynamic> j) => WeightRecord(
    date: DateTime.parse(j['date'] as String),
    kg: (j['kg'] as num).toDouble(),
  );
}
