import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models.dart';

class AppState extends ChangeNotifier {
  static const _keyStartDate = 'start_date';
  static const _keyWorkouts = 'workouts';
  static const _keyWeights = 'weights';

  DateTime? _startDate;
  List<WorkoutRecord> _workouts = [];
  List<WeightRecord> _weights = [];

  DateTime? get startDate => _startDate;
  List<WorkoutRecord> get workouts => List.unmodifiable(_workouts);
  List<WeightRecord> get weights => List.unmodifiable(_weights);

  bool get programStarted => _startDate != null;

  int get currentWeek {
    if (_startDate == null) return 0;
    final days = DateTime.now().difference(_startDate!).inDays;
    final week = (days ~/ 7) + 1;
    return week.clamp(1, 6);
  }

  int get currentDayOfWeek {
    if (_startDate == null) return 0;
    final days = DateTime.now().difference(_startDate!).inDays;
    return (days % 7) + 1;
  }

  int get totalDaysElapsed {
    if (_startDate == null) return 0;
    return DateTime.now().difference(_startDate!).inDays + 1;
  }

  int get daysUntilEnd {
    if (_startDate == null) return 42;
    final elapsed = DateTime.now().difference(_startDate!).inDays;
    return (42 - elapsed).clamp(0, 42);
  }

  double? get latestWeight => _weights.isEmpty ? null : _weights.last.kg;

  double? get weightChange {
    if (_weights.length < 2) return null;
    return _weights.last.kg - _weights.first.kg;
  }

  int get workoutsThisWeek {
    if (_startDate == null) return 0;
    final weekStart = _startDate!.add(Duration(days: (currentWeek - 1) * 7));
    final weekEnd = weekStart.add(const Duration(days: 7));
    return _workouts.where((w) => w.date.isAfter(weekStart) && w.date.isBefore(weekEnd)).length;
  }

  int get totalWorkouts => _workouts.length;

  bool wasCompletedToday(int week, int dow) {
    final today = DateTime.now();
    return _workouts.any((w) =>
      w.date.year == today.year &&
      w.date.month == today.month &&
      w.date.day == today.day);
  }

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final dateStr = prefs.getString(_keyStartDate);
    if (dateStr != null) {
      _startDate = DateTime.parse(dateStr);
    }
    final workoutsJson = prefs.getStringList(_keyWorkouts) ?? [];
    _workouts = workoutsJson
        .map((s) => WorkoutRecord.fromJson(jsonDecode(s) as Map<String, dynamic>))
        .toList();
    final weightsJson = prefs.getStringList(_keyWeights) ?? [];
    _weights = weightsJson
        .map((s) => WeightRecord.fromJson(jsonDecode(s) as Map<String, dynamic>))
        .toList();
    notifyListeners();
  }

  Future<void> startProgram() async {
    _startDate = DateTime.now();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyStartDate, _startDate!.toIso8601String());
    notifyListeners();
  }

  Future<void> logWorkout(String title, int durationMins) async {
    final record = WorkoutRecord(date: DateTime.now(), title: title, durationMins: durationMins);
    _workouts.add(record);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_keyWorkouts, _workouts.map((w) => jsonEncode(w.toJson())).toList());
    notifyListeners();
  }

  Future<void> logWeight(double kg) async {
    final record = WeightRecord(date: DateTime.now(), kg: kg);
    _weights.add(record);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_keyWeights, _weights.map((w) => jsonEncode(w.toJson())).toList());
    notifyListeners();
  }

  Future<void> resetProgram() async {
    _startDate = null;
    _workouts = [];
    _weights = [];
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyStartDate);
    await prefs.remove(_keyWorkouts);
    await prefs.remove(_keyWeights);
    notifyListeners();
  }
}
