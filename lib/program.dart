import 'models.dart';

// ── ĆWICZENIA ─────────────────────────────────────────────────────────────────

const pompki = Exercise(
  name: 'Pompki',
  muscles: 'Klatka piersiowa, tricepsy, barki przednie',
  description: 'Dłonie na szerokość barków, ciało proste od głowy do pięt. Opuszczaj klatkę do podłogi, wróć do pozycji wyjściowej.',
  tip: 'Łokcie pod kątem 45° – nie na boki. Brzuch napięty przez cały czas.',
);

const pompkiDiamentowe = Exercise(
  name: 'Pompki diamentowe',
  muscles: 'Tricepsy, środkowa klatka',
  description: 'Ułóż dłonie pod klatką tworząc trójkąt (kciuki i wskazujące się stykają). Opuszczaj się powoli kontrolując ruch.',
  tip: 'Najtrudniejsza pompka na tricepsy. Zacznij od kolan jeśli za ciężkie.',
);

const pompkiSzerokie = Exercise(
  name: 'Pompki szerokie',
  muscles: 'Zewnętrzna klatka, barki',
  description: 'Dłonie znacznie szerzej niż barki. Łokcie idą na boki przy opuszczaniu.',
  tip: 'Poczujesz rozciąganie w zewnętrznej klatce. Kontroluj powolne opuszczanie.',
);

const pompkiPike = Exercise(
  name: 'Pompki Pike',
  muscles: 'Barki przednie, tricepsy',
  description: 'Unieś biodra wysoko tworząc odwrócone V. Opuszczaj głowę w kierunku podłogi między dłońmi.',
  tip: 'Im wyżej biodra, tym bardziej pracują barki. Świetne zastępstwo dla wyciskania nad głowę.',
);

const dipy = Exercise(
  name: 'Dipy na krześle',
  muscles: 'Tricepsy, dolna klatka, barki',
  description: 'Oprzyj dłonie o krawędź stabilnego krzesła/sofy za sobą. Nogi wyprostowane. Zginaj łokcie do 90° i wróć.',
  tip: 'Plecy blisko krzesła. Nie opuszczaj się niżej niż 90° w łokciach – chroni to stawy.',
);

const podciaganie = Exercise(
  name: 'Podciąganie nachwytem',
  muscles: 'Szerokie grzbietu, bicepsy, rdzeń',
  description: 'Chwyt szerszy niż barki, dłonie od siebie. Podciągaj aż broda znajdzie się nad drążkiem. Kontrolowane opuszczanie.',
  tip: 'Zacznij od "łopatki w dół" przed podciągnięciem. Nie kiwaj ciałem.',
);

const podciaganiePodchwytem = Exercise(
  name: 'Podciąganie podchwytem (Chin-up)',
  muscles: 'Bicepsy, szerokie grzbietu',
  description: 'Chwyt na szerokość barków, dłonie do siebie. Łatwiejsze od nacwytu – bardziej angażuje bicepsy.',
  tip: 'Skup się na ściąganiu łopatek zanim zaczniesz ciągnąć ramionami.',
);

const wiszenieAktywne = Exercise(
  name: 'Aktywne wiszenie na drążku',
  muscles: 'Plecy, obręcz barkowa, chwyt',
  description: 'Wisiaj na drążku z aktywnie napiętymi mięśniami pleców (łopatki w dół i do siebie). Nie zwisaj biernie.',
  tip: 'Buduje siłę do podciągania. Kluczowe ćwiczenie dla początkujących z drążkiem.',
);

const przysiady = Exercise(
  name: 'Przysiady',
  muscles: 'Uda przednie, pośladki, łydki',
  description: 'Stopy na szerokość barków lub nieco szerzej. Siadaj jakbyś siadał na krzesło. Kolana podążają za palcami.',
  tip: 'Pięty na podłodze przez cały czas. Klatka do góry, nie pochylaj się do przodu.',
);

const przysiadyBulgarskie = Exercise(
  name: 'Przysiady bułgarskie',
  muscles: 'Uda, pośladki (jednostronnie)',
  description: 'Tylna noga oparta o krzesło/sofę. Przednia noga daleko do przodu. Opuszczaj biodra pionowo w dół.',
  tip: 'Najtrudniejsze bez sprzętu. Kolano tylnej nogi blisko podłogi, nie dotykając jej.',
);

const wykroki = Exercise(
  name: 'Wykroki naprzemienne',
  muscles: 'Uda, pośladki, równowaga',
  description: 'Zrób duży krok do przodu. Opuść tylne kolano blisko podłogi. Wróć i zmień nogę.',
  tip: 'Tułów prosto przez cały czas. Liczymy jedno powtórzenie na każdą nogę.',
);

const mostekBiodra = Exercise(
  name: 'Mostek biodrowy',
  muscles: 'Pośladki, dwugłowe ud, rdzeń dolny',
  description: 'Leż na plecach, nogi ugięte, stopy płasko. Unoś biodra aż tułów tworzy prostą linię. Ściskaj pośladki na górze.',
  tip: 'Zatrzymaj się 1 sekundę na górze. Napędzaj ruch pośladkami, nie plecami.',
);

const skokyPrzysiad = Exercise(
  name: 'Skoki z przysiadem',
  muscles: 'Nogi, pośladki, kardio',
  description: 'Wykonaj przysiad, następnie wybij się energicznie do góry. Ląduj miękko z ugiętymi kolanami z powrotem w przysiada.',
  tip: 'Ląduj cicho – to znak prawidłowej techniki i ochrony stawów.',
);

const wspiecieNaPalce = Exercise(
  name: 'Wspięcia na palce',
  muscles: 'Łydki (obie głowy)',
  description: 'Stań przy ścianie dla równowagi. Unoś się powoli na palce (2s), trzymaj (1s), opuszczaj powoli (3s).',
  tip: 'Rób wolno – to maksymalizuje stymulację łydek. Szybkie tempo = marna praca.',
);

const deska = Exercise(
  name: 'Deska (Plank)',
  muscles: 'Cały rdzeń, barki, pośladki',
  description: 'Oprzyj się na przedramionach i palcach stóp. Ciało tworzy idealną linię prostą od głowy do pięt.',
  tip: 'Nie unoś bioder! Ściskaj brzuch i pośladki. Oddychaj spokojnie.',
);

const deszkaBoczna = Exercise(
  name: 'Deska boczna',
  muscles: 'Skośne brzucha, stabilizatory boczne',
  description: 'Oprzyj się na jednym przedramieniu, stopy jedna na drugiej lub ułożone schodkowo. Biodra uniesione w linii.',
  tip: 'Słabsza strona wymaga więcej pracy. Ważna dla symetrii i zdrowego kręgosłupa.',
);

const unoszenieNog = Exercise(
  name: 'Unoszenie nóg w leżeniu',
  muscles: 'Dolny brzuch, zginacze biodra',
  description: 'Leż na plecach, ręce wzdłuż tułowia lub pod pośladkami. Unoś proste nogi do 90°, opuszczaj powoli.',
  tip: 'Odcinek lędźwiowy przy podłodze przez cały czas. Boli plecy? Uginaj lekko kolana.',
);

const rowerek = Exercise(
  name: 'Rowerek',
  muscles: 'Brzuch skośny, brzuch prosty',
  description: 'Leż na plecach, ręce za głową. Naprzemiennie przyciągaj łokieć do przeciwległego kolana ruchem rotacyjnym.',
  tip: 'Rób kontrolowanie i powoli. Szybkie, chaotyczne ruchy nie angażują mięśni.',
);

const wspinaczkaGorska = Exercise(
  name: 'Wspinaczka górska',
  muscles: 'Rdzeń, barki, kardio',
  description: 'Pozycja deski na wyprostowanych rękach. Naprzemiennie przyciągaj kolana dynamicznie do klatki piersiowej.',
  tip: 'Biodra nisko w linii! Szybkie tempo = trening kardio. Wolne = rdzeń.',
);

const superman = Exercise(
  name: 'Superman',
  muscles: 'Prostowniki pleców, pośladki, tylne barki',
  description: 'Leż na brzuchu, ręce wyciągnięte przed siebie. Jednocześnie unoś ręce i nogi od podłogi. Zatrzymaj 2 sekundy.',
  tip: 'Kluczowe dla zdrowych pleców – często pomijane. Równoważy pracę mięśni brzucha.',
);

const burpee = Exercise(
  name: 'Burpees',
  muscles: 'Całe ciało, kardio',
  description: 'Przysiad → dłonie na podłodze → wyskocz nogami do pompki → pompka → wróć do przysiadu → skocz w górę z klaśnięciem.',
  tip: 'Najskuteczniejsze ćwiczenie cardio bez sprzętu. Spala 10-15 kcal na minutę.',
);

// ── HARMONOGRAM ───────────────────────────────────────────────────────────────

// dow: 1=Pon, 2=Wt, 3=Śr, 4=Czw, 5=Pt, 6=Sob, 7=Nd
const Map<int, Map<int, String>> _schedule = {
  1: {1: 'A', 2: 'B', 4: 'C', 5: 'D'},
  2: {1: 'A', 2: 'B', 4: 'C', 5: 'D'},
  3: {1: 'A', 2: 'B', 3: 'C', 5: 'D', 6: 'E'},
  4: {1: 'A', 2: 'B', 3: 'C', 5: 'D', 6: 'E'},
  5: {1: 'A', 2: 'B', 3: 'D', 4: 'C', 6: 'E'},
  6: {1: 'A', 2: 'B', 3: 'D', 4: 'C', 6: 'E'},
};

List<WorkSet> _pushCore(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: pompki, sets: 3, reps: 8, restSecs: 90),
        const WorkSet(exercise: dipy, sets: 3, reps: 8, restSecs: 90),
        const WorkSet(exercise: pompkiPike, sets: 2, reps: 6, restSecs: 90),
        const WorkSet(exercise: deska, sets: 3, secs: 30, restSecs: 60),
        const WorkSet(exercise: superman, sets: 3, reps: 10, restSecs: 60),
      ];
    case 1:
      return [
        const WorkSet(exercise: pompki, sets: 3, reps: 12, restSecs: 75),
        const WorkSet(exercise: pompkiSzerokie, sets: 2, reps: 10, restSecs: 75),
        const WorkSet(exercise: dipy, sets: 3, reps: 12, restSecs: 75),
        const WorkSet(exercise: pompkiPike, sets: 3, reps: 10, restSecs: 75),
        const WorkSet(exercise: deska, sets: 3, secs: 45, restSecs: 60),
        const WorkSet(exercise: rowerek, sets: 3, reps: 20, restSecs: 45),
      ];
    default:
      return [
        const WorkSet(exercise: pompki, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: pompkiDiamentowe, sets: 3, reps: 10, restSecs: 60),
        const WorkSet(exercise: pompkiSzerokie, sets: 3, reps: 12, restSecs: 60),
        const WorkSet(exercise: dipy, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: pompkiPike, sets: 3, reps: 12, restSecs: 60),
        const WorkSet(exercise: deska, sets: 3, secs: 60, restSecs: 45),
        const WorkSet(exercise: deszkaBoczna, sets: 3, secs: 30, restSecs: 45),
        const WorkSet(exercise: rowerek, sets: 3, reps: 25, restSecs: 45),
      ];
  }
}

List<WorkSet> _legsGlutes(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: przysiady, sets: 3, reps: 15, restSecs: 75),
        const WorkSet(exercise: wykroki, sets: 3, reps: 10, restSecs: 75),
        const WorkSet(exercise: mostekBiodra, sets: 3, reps: 15, restSecs: 60),
        const WorkSet(exercise: wspiecieNaPalce, sets: 3, reps: 20, restSecs: 45),
      ];
    case 1:
      return [
        const WorkSet(exercise: przysiady, sets: 4, reps: 20, restSecs: 60),
        const WorkSet(exercise: przysiadyBulgarskie, sets: 3, reps: 8, restSecs: 75),
        const WorkSet(exercise: wykroki, sets: 3, reps: 12, restSecs: 60),
        const WorkSet(exercise: mostekBiodra, sets: 3, reps: 20, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 3, reps: 10, restSecs: 75),
      ];
    default:
      return [
        const WorkSet(exercise: przysiady, sets: 4, reps: 25, restSecs: 60),
        const WorkSet(exercise: przysiadyBulgarskie, sets: 4, reps: 12, restSecs: 60),
        const WorkSet(exercise: wykroki, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 3, reps: 15, restSecs: 60),
        const WorkSet(exercise: mostekBiodra, sets: 4, reps: 25, restSecs: 45),
        const WorkSet(exercise: wspiecieNaPalce, sets: 3, reps: 30, restSecs: 45),
      ];
  }
}

List<WorkSet> _pullCore(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: wiszenieAktywne, sets: 3, secs: 20, restSecs: 60),
        const WorkSet(exercise: podciaganie, sets: 3, reps: 3, restSecs: 120),
        const WorkSet(exercise: unoszenieNog, sets: 3, reps: 10, restSecs: 60),
        const WorkSet(exercise: deska, sets: 3, secs: 30, restSecs: 60),
        const WorkSet(exercise: superman, sets: 3, reps: 12, restSecs: 60),
      ];
    case 1:
      return [
        const WorkSet(exercise: podciaganie, sets: 3, reps: 5, restSecs: 90),
        const WorkSet(exercise: podciaganiePodchwytem, sets: 2, reps: 5, restSecs: 90),
        const WorkSet(exercise: unoszenieNog, sets: 3, reps: 15, restSecs: 60),
        const WorkSet(exercise: deska, sets: 3, secs: 45, restSecs: 60),
        const WorkSet(exercise: rowerek, sets: 3, reps: 20, restSecs: 45),
      ];
    default:
      return [
        const WorkSet(exercise: podciaganie, sets: 4, reps: 8, restSecs: 75),
        const WorkSet(exercise: podciaganiePodchwytem, sets: 3, reps: 8, restSecs: 75),
        const WorkSet(exercise: unoszenieNog, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 3, secs: 30, restSecs: 60),
        const WorkSet(exercise: deska, sets: 3, secs: 60, restSecs: 45),
        const WorkSet(exercise: deszkaBoczna, sets: 3, secs: 30, restSecs: 45),
      ];
  }
}

List<WorkSet> _fullBodyCardio(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: burpee, sets: 3, reps: 5, restSecs: 90),
        const WorkSet(exercise: skokyPrzysiad, sets: 3, reps: 10, restSecs: 75),
        const WorkSet(exercise: wspinaczkaGorska, sets: 3, secs: 30, restSecs: 75),
        const WorkSet(exercise: pompki, sets: 3, reps: 8, restSecs: 75),
      ];
    case 1:
      return [
        const WorkSet(exercise: burpee, sets: 4, reps: 8, restSecs: 75),
        const WorkSet(exercise: skokyPrzysiad, sets: 3, reps: 15, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 3, secs: 45, restSecs: 60),
        const WorkSet(exercise: pompki, sets: 3, reps: 12, restSecs: 60),
        const WorkSet(exercise: przysiady, sets: 3, reps: 20, restSecs: 60),
      ];
    default:
      return [
        const WorkSet(exercise: burpee, sets: 4, reps: 10, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 3, secs: 60, restSecs: 60),
        const WorkSet(exercise: pompki, sets: 4, reps: 12, restSecs: 60),
        const WorkSet(exercise: wykroki, sets: 3, reps: 12, restSecs: 60),
        const WorkSet(exercise: unoszenieNog, sets: 3, reps: 15, restSecs: 45),
      ];
  }
}

List<WorkSet> _upperMix(int level) {
  switch (level) {
    case 1:
      return [
        const WorkSet(exercise: pompkiSzerokie, sets: 3, reps: 10, restSecs: 75),
        const WorkSet(exercise: dipy, sets: 3, reps: 10, restSecs: 75),
        const WorkSet(exercise: pompkiDiamentowe, sets: 2, reps: 8, restSecs: 75),
        const WorkSet(exercise: podciaganie, sets: 3, reps: 4, restSecs: 90),
        const WorkSet(exercise: deska, sets: 3, secs: 45, restSecs: 60),
        const WorkSet(exercise: rowerek, sets: 3, reps: 20, restSecs: 45),
      ];
    default:
      return [
        const WorkSet(exercise: pompkiDiamentowe, sets: 3, reps: 12, restSecs: 60),
        const WorkSet(exercise: pompkiSzerokie, sets: 3, reps: 15, restSecs: 60),
        const WorkSet(exercise: dipy, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: podciaganie, sets: 3, reps: 8, restSecs: 75),
        const WorkSet(exercise: pompkiPike, sets: 3, reps: 12, restSecs: 60),
        const WorkSet(exercise: deska, sets: 3, secs: 60, restSecs: 45),
        const WorkSet(exercise: rowerek, sets: 3, reps: 25, restSecs: 45),
      ];
  }
}

// ── PUBLIC API ────────────────────────────────────────────────────────────────

WorkoutDay? getWorkout(int week, int dow) {
  if (week < 1 || week > 6) return null;
  final type = _schedule[week]?[dow];
  if (type == null) return null;
  final level = (week - 1) ~/ 2;

  late final String title;
  late final String emoji;
  late final String focus;
  late final List<WorkSet> sets;

  switch (type) {
    case 'A':
      title = 'Trening A – Push + Rdzeń';
      emoji = '💪';
      focus = 'Klatka, barki, tricepsy, brzuch';
      sets = _pushCore(level);
    case 'B':
      title = 'Trening B – Nogi + Pośladki';
      emoji = '🦵';
      focus = 'Uda, pośladki, łydki';
      sets = _legsGlutes(level);
    case 'C':
      title = 'Trening C – Pull + Rdzeń';
      emoji = '🏋️';
      focus = 'Plecy, bicepsy, brzuch (drążek)';
      sets = _pullCore(level);
    case 'D':
      title = 'Trening D – Full Body Cardio';
      emoji = '🔥';
      focus = 'Całe ciało + spalanie tłuszczu';
      sets = _fullBodyCardio(level);
    case 'E':
      title = 'Trening E – Upper Body Mix';
      emoji = '⚡';
      focus = 'Klatka, plecy, barki, rdzeń';
      sets = _upperMix(level == 0 ? 1 : level);
    default:
      return null;
  }

  return WorkoutDay(week: week, dow: dow, title: title, emoji: emoji, focus: focus, sets: sets);
}

bool isRestDay(int week, int dow) => _schedule[week]?[dow] == null;

int workoutsInWeek(int week) => _schedule[week]?.length ?? 0;

String weekDescription(int week) {
  switch (week) {
    case 1:
    case 2:
      return 'Tydzień $week – Budowanie fundamentów (4 treningi)';
    case 3:
    case 4:
      return 'Tydzień $week – Wzrost intensywności (5 treningów)';
    case 5:
    case 6:
      return 'Tydzień $week – Szczyt programu (5 treningów)';
    default:
      return 'Tydzień $week';
  }
}
