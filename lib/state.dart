import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models.dart';

class AppState extends ChangeNotifier {
  static const _keyStartDate = 'start_date';
  static const _keyWorkouts = 'workouts';
  static const _keyWeights = 'weights';
  static const _keyMeasurements = 'measurements';
  static const _keyStages = 'exercise_stages';

  DateTime? _startDate;
  List<WorkoutRecord> _workouts = [];
  List<WeightRecord> _weights = [];
  List<MeasurementRecord> _measurements = [];
  Map<String, int> _exerciseStages = {};

  DateTime? get startDate => _startDate;
  List<WorkoutRecord> get workouts => List.unmodifiable(_workouts);
  List<WeightRecord> get weights => List.unmodifiable(_weights);
  List<MeasurementRecord> get measurements => List.unmodifiable(_measurements);

  bool get programStarted => _startDate != null;

  int get currentWeek {
    if (_startDate == null) return 0;
    final days = DateTime.now().difference(_startDate!).inDays;
    return (days ~/ 7) + 1;
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

  int get currentPhase {
    final w = currentWeek;
    if (w <= 6) return 1;
    if (w <= 12) return 2;
    return 3;
  }

  int get weekInPhase {
    final w = currentWeek;
    if (w <= 6) return w;
    if (w <= 12) return w - 6;
    return ((w - 13) % 12) + 1;
  }

  int get daysUntilEnd {
    if (_startDate == null) return 42;
    final elapsed = DateTime.now().difference(_startDate!).inDays;
    final w = currentWeek;
    final int phaseEndDay;
    if (w <= 6) {
      phaseEndDay = 42;
    } else if (w <= 12) {
      phaseEndDay = 84;
    } else {
      final cyclesDone = (w - 13) ~/ 12;
      phaseEndDay = 84 + (cyclesDone + 1) * 84;
    }
    return (phaseEndDay - elapsed).clamp(0, phaseEndDay);
  }

  double? get latestWeight => _weights.isEmpty ? null : _weights.last.kg;

  double? get weightChange {
    if (_weights.length < 2) return null;
    return _weights.last.kg - _weights.first.kg;
  }

  MeasurementRecord? get latestMeasurement => _measurements.isEmpty ? null : _measurements.last;
  MeasurementRecord? get firstMeasurement => _measurements.isEmpty ? null : _measurements.first;

  int getExerciseStage(String exerciseName) => _exerciseStages[exerciseName] ?? 0;

  Future<void> setExerciseStage(String exerciseName, int stage) async {
    _exerciseStages[exerciseName] = stage;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyStages, jsonEncode(_exerciseStages));
    notifyListeners();
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
    if (dateStr != null) _startDate = DateTime.parse(dateStr);
    final workoutsJson = prefs.getStringList(_keyWorkouts) ?? [];
    _workouts = workoutsJson
        .map((s) => WorkoutRecord.fromJson(jsonDecode(s) as Map<String, dynamic>))
        .toList();
    final weightsJson = prefs.getStringList(_keyWeights) ?? [];
    _weights = weightsJson
        .map((s) => WeightRecord.fromJson(jsonDecode(s) as Map<String, dynamic>))
        .toList();
    final measurementsJson = prefs.getStringList(_keyMeasurements) ?? [];
    _measurements = measurementsJson
        .map((s) => MeasurementRecord.fromJson(jsonDecode(s) as Map<String, dynamic>))
        .toList();
    final stagesStr = prefs.getString(_keyStages);
    if (stagesStr != null) {
      final raw = jsonDecode(stagesStr) as Map<String, dynamic>;
      _exerciseStages = raw.map((k, v) => MapEntry(k, (v as num).toInt()));
    }
    notifyListeners();
  }

  Future<void> startProgram() async {
    _startDate = DateTime.now();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyStartDate, _startDate!.toIso8601String());
    notifyListeners();
  }

  Future<void> startProgramFromWeek(int week) async {
    _startDate = DateTime.now().subtract(Duration(days: (week - 1) * 7));
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

  Future<void> logMeasurement(double chest, double waist, double arm) async {
    final record = MeasurementRecord(date: DateTime.now(), chest: chest, waist: waist, arm: arm);
    _measurements.add(record);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_keyMeasurements, _measurements.map((m) => jsonEncode(m.toJson())).toList());
    notifyListeners();
  }

  Future<void> resetProgram() async {
    _startDate = null;
    _workouts = [];
    _weights = [];
    _measurements = [];
    _exerciseStages = {};
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyStartDate);
    await prefs.remove(_keyWorkouts);
    await prefs.remove(_keyWeights);
    await prefs.remove(_keyMeasurements);
    await prefs.remove(_keyStages);
    notifyListeners();
  }
}
