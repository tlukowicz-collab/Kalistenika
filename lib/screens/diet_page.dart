import 'package:flutter/material.dart';
import '../diet.dart';
import '../models.dart';

class DietPage extends StatefulWidget {
  const DietPage({super.key});

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> with SingleTickerProviderStateMixin {
  late TabController _tabs;
  int _selectedWeek = 0;
  int _selectedDay = 0;

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Row(
                children: [
                  const Expanded(child: Text('Plan diety', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white))),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(10)),
                    child: const Text('~2000 kcal / dzień', style: TextStyle(color: Color(0xFF00C853), fontSize: 12, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            _InfoBanner(),
            TabBar(
              controller: _tabs,
              labelColor: const Color(0xFF00C853),
              unselectedLabelColor: Colors.white54,
              indicatorColor: const Color(0xFF00C853),
              tabs: const [Tab(text: 'Jadłospis'), Tab(text: 'Przepisy')],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabs,
                children: [
                  _MealPlanTab(
                    selectedWeek: _selectedWeek,
                    selectedDay: _selectedDay,
                    onWeekChanged: (w) => setState(() => _selectedWeek = w),
                    onDayChanged: (d) => setState(() => _selectedDay = d),
                  ),
                  _RecipesTab(selectedWeek: _selectedWeek, selectedDay: _selectedDay),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: const Color(0xFF1A2E1A), borderRadius: BorderRadius.circular(12)),
      child: const Row(
        children: [
          Text('🥗', style: TextStyle(fontSize: 20)),
          SizedBox(width: 10),
          Expanded(child: Text(
            'Dieta dla rekompu: umiarkowany deficyt + wysokie białko.\n28 unikalnych dni – cykl powtarza się co 4 tygodnie.',
            style: TextStyle(color: Colors.white70, fontSize: 12, height: 1.4),
          )),
        ],
      ),
    );
  }
}

class _MealPlanTab extends StatelessWidget {
  final int selectedWeek;
  final int selectedDay;
  final ValueChanged<int> onWeekChanged;
  final ValueChanged<int> onDayChanged;
  const _MealPlanTab({
    required this.selectedWeek,
    required this.selectedDay,
    required this.onWeekChanged,
    required this.onDayChanged,
  });

  static const _dayShort = ['Pon', 'Wt', 'Śr', 'Czw', 'Pt', 'Sob', 'Nd'];

  @override
  Widget build(BuildContext context) {
    final meals = weeklyMeals[selectedWeek * 7 + selectedDay];
    return Column(
      children: [
        const SizedBox(height: 12),
        SizedBox(
          height: 36,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: 4,
            itemBuilder: (_, i) {
              final selected = i == selectedWeek;
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: GestureDetector(
                  onTap: () => onWeekChanged(i),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: selected ? const Color(0xFF00C853).withOpacity(0.15) : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: selected ? const Color(0xFF00C853) : Colors.white24,
                        width: 1,
                      ),
                    ),
                    child: Text('Tydz. ${i + 1}', style: TextStyle(
                      color: selected ? const Color(0xFF00C853) : Colors.white54,
                      fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                      fontSize: 12,
                    )),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 44,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: 7,
            itemBuilder: (_, i) {
              final selected = i == selectedDay;
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: GestureDetector(
                  onTap: () => onDayChanged(i),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: selected ? const Color(0xFF00C853) : const Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Text(_dayShort[i], style: TextStyle(
                      color: selected ? Colors.black : Colors.white70,
                      fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                    )),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(meals.dayName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
              Text('${meals.totalKcal} kcal  |  ${meals.totalProtein}g białka',
                  style: const TextStyle(color: Color(0xFF00C853), fontSize: 13)),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _MealCard(meal: meals.breakfast, emoji: '☀️'),
              _MealCard(meal: meals.lunch, emoji: '🍽️'),
              _MealCard(meal: meals.dinner, emoji: '🌙'),
              _MealCard(meal: meals.snack, emoji: '🍎'),
              const SizedBox(height: 8),
              _MacroSummary(meals: meals),
            ],
          ),
        ),
      ],
    );
  }
}

class _MealCard extends StatefulWidget {
  final Meal meal;
  final String emoji;
  const _MealCard({required this.meal, required this.emoji});

  @override
  State<_MealCard> createState() => _MealCardState();
}

class _MealCardState extends State<_MealCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final m = widget.meal;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(14)),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () => setState(() => _expanded = !_expanded),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(widget.emoji, style: const TextStyle(fontSize: 22)),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(m.type, style: const TextStyle(color: Colors.grey, fontSize: 11)),
                        Text(m.name, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('${m.kcal} kcal', style: const TextStyle(color: Colors.white70, fontSize: 13)),
                      Text('${m.protein}g białka', style: const TextStyle(color: Color(0xFF00C853), fontSize: 12)),
                    ],
                  ),
                  const SizedBox(width: 4),
                  Icon(_expanded ? Icons.expand_less : Icons.expand_more, color: Colors.white38, size: 18),
                ],
              ),
              if (_expanded) ...[
                const Divider(color: Colors.white12, height: 20),
                Row(
                  children: [
                    const Icon(Icons.access_time, color: Colors.white38, size: 14),
                    const SizedBox(width: 4),
                    Text('Czas przygotowania: ${m.prepMins} min', style: const TextStyle(color: Colors.white54, fontSize: 12)),
                  ],
                ),
                const SizedBox(height: 12),
                const Text('Składniki:', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 13)),
                const SizedBox(height: 6),
                ...m.ingredients.map((ing) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text('• ', style: TextStyle(color: Color(0xFF00C853))),
                      Expanded(child: Text('${ing.name}  —  ${ing.amount}', style: const TextStyle(color: Colors.white70, fontSize: 13))),
                    ],
                  ),
                )),
                const SizedBox(height: 12),
                const Text('Przygotowanie:', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 13)),
                const SizedBox(height: 6),
                ...m.steps.asMap().entries.map((e) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(color: Color(0xFF00C853), shape: BoxShape.circle),
                        child: Center(child: Text('${e.key + 1}', style: const TextStyle(color: Colors.black, fontSize: 11, fontWeight: FontWeight.bold))),
                      ),
                      const SizedBox(width: 8),
                      Expanded(child: Text(e.value, style: const TextStyle(color: Colors.white, fontSize: 13, height: 1.4))),
                    ],
                  ),
                )),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _MacroSummary extends StatelessWidget {
  final meals;
  const _MacroSummary({required this.meals});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: const Color(0xFF1A2E1A), borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Podsumowanie dnia', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 13)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _Macro('Kalorie', '${meals.totalKcal}', 'kcal'),
              _Macro('Białko', '${meals.totalProtein}g', '~150g cel'),
              _Macro('Posiłki', '4', 'dziennie'),
            ],
          ),
        ],
      ),
    );
  }
}

class _Macro extends StatelessWidget {
  final String label;
  final String value;
  final String sub;
  const _Macro(this.label, this.value, this.sub);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 11)),
        Text(value, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        Text(sub, style: const TextStyle(color: Color(0xFF00C853), fontSize: 11)),
      ],
    );
  }
}

class _RecipesTab extends StatelessWidget {
  final int selectedWeek;
  final int selectedDay;
  const _RecipesTab({required this.selectedWeek, required this.selectedDay});

  @override
  Widget build(BuildContext context) {
    final meals = weeklyMeals[selectedWeek * 7 + selectedDay];
    final allMeals = [meals.breakfast, meals.lunch, meals.dinner, meals.snack];
    final emojis = ['☀️', '🍽️', '🌙', '🍎'];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: allMeals.length,
      itemBuilder: (_, i) => _FullRecipeCard(meal: allMeals[i], emoji: emojis[i]),
    );
  }
}

class _FullRecipeCard extends StatelessWidget {
  final Meal meal;
  final String emoji;
  const _FullRecipeCard({required this.meal, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(emoji, style: const TextStyle(fontSize: 24)),
              const SizedBox(width: 10),
              Expanded(
                child: Text(meal.name, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Text('${meal.prepMins} min', style: const TextStyle(color: Colors.white54, fontSize: 13)),
            ],
          ),
          const SizedBox(height: 12),
          const Text('Składniki:', style: TextStyle(color: Color(0xFF00C853), fontWeight: FontWeight.bold, fontSize: 13)),
          const SizedBox(height: 6),
          ...meal.ingredients.map((ing) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Row(
              children: [
                const Text('→ ', style: TextStyle(color: Color(0xFF00C853))),
                Expanded(child: Text('${ing.name}  —  ${ing.amount}', style: const TextStyle(color: Colors.white70, fontSize: 13))),
              ],
            ),
          )),
          const SizedBox(height: 12),
          const Text('Kroki:', style: TextStyle(color: Color(0xFF00C853), fontWeight: FontWeight.bold, fontSize: 13)),
          const SizedBox(height: 6),
          ...meal.steps.asMap().entries.map((e) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 22, height: 22,
                  decoration: const BoxDecoration(color: Color(0xFF00C853), shape: BoxShape.circle),
                  child: Center(child: Text('${e.key + 1}', style: const TextStyle(color: Colors.black, fontSize: 11, fontWeight: FontWeight.bold))),
                ),
                const SizedBox(width: 10),
                Expanded(child: Text(e.value, style: const TextStyle(color: Colors.white, fontSize: 14, height: 1.4))),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
