import 'models.dart';

// ── ĆWICZENIA – FAZA 1 ────────────────────────────────────────────────────────

const pompki = Exercise(
  name: 'Pompki',
  muscles: 'Klatka piersiowa, tricepsy, barki przednie',
  description: 'Dłonie na szerokość barków, ciało proste od głowy do pięt. Opuszczaj klatkę do podłogi, wróć do pozycji wyjściowej.',
  tip: 'Łokcie pod kątem 45° – nie na boki. Brzuch napięty przez cały czas.',
);

const pompkiDiamentowe = Exercise(
  name: 'Pompki diamentowe',
  muscles: 'Tricepsy, środkowa klatka',
  description: 'Ułóż dłonie pod klatką tworząc trójkąt. Opuszczaj się powoli kontrolując ruch.',
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
  description: 'Oprzyj dłonie o krawędź stabilnego krzesła za sobą. Nogi wyprostowane. Zginaj łokcie do 90° i wróć.',
  tip: 'Plecy blisko krzesła. Nie opuszczaj się niżej niż 90° w łokciach.',
);

const podciaganie = Exercise(
  name: 'Podciąganie nachwytem',
  muscles: 'Szerokie grzbietu, bicepsy, rdzeń',
  description: 'Chwyt szerszy niż barki, dłonie od siebie. Podciągaj aż broda znajdzie się nad drążkiem.',
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
  description: 'Wisiaj na drążku z aktywnie napiętymi mięśniami pleców (łopatki w dół i do siebie).',
  tip: 'Buduje siłę do podciągania. Kluczowe ćwiczenie dla początkujących z drążkiem.',
);

const przysiady = Exercise(
  name: 'Przysiady',
  muscles: 'Uda przednie, pośladki, łydki',
  description: 'Stopy na szerokość barków. Siadaj jakbyś siadał na krzesło. Kolana podążają za palcami.',
  tip: 'Pięty na podłodze przez cały czas. Klatka do góry, nie pochylaj się do przodu.',
);

const przysiadyBulgarskie = Exercise(
  name: 'Przysiady bułgarskie',
  muscles: 'Uda, pośladki (jednostronnie)',
  description: 'Tylna noga oparta o krzesło. Przednia noga daleko do przodu. Opuszczaj biodra pionowo w dół.',
  tip: 'Kolano tylnej nogi blisko podłogi, nie dotykając jej.',
);

const wykroki = Exercise(
  name: 'Wykroki naprzemienne',
  muscles: 'Uda, pośladki, równowaga',
  description: 'Zrób duży krok do przodu. Opuść tylne kolano blisko podłogi. Wróć i zmień nogę.',
  tip: 'Tułów prosto przez cały czas.',
);

const mostekBiodra = Exercise(
  name: 'Mostek biodrowy',
  muscles: 'Pośladki, dwugłowe ud, rdzeń dolny',
  description: 'Leż na plecach, nogi ugięte. Unoś biodra aż tułów tworzy prostą linię. Ściskaj pośladki na górze.',
  tip: 'Zatrzymaj się 1 sekundę na górze. Napędzaj ruch pośladkami, nie plecami.',
);

const skokyPrzysiad = Exercise(
  name: 'Skoki z przysiadem',
  muscles: 'Nogi, pośladki, kardio',
  description: 'Wykonaj przysiad, następnie wybij się energicznie do góry. Ląduj miękko z ugiętymi kolanami.',
  tip: 'Ląduj cicho – to znak prawidłowej techniki i ochrony stawów.',
);

const wspiecieNaPalce = Exercise(
  name: 'Wspięcia na palce',
  muscles: 'Łydki (obie głowy)',
  description: 'Stań przy ścianie dla równowagi. Unoś się powoli na palce (2s), trzymaj (1s), opuszczaj powoli (3s).',
  tip: 'Rób wolno – to maksymalizuje stymulację łydek.',
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
  description: 'Oprzyj się na jednym przedramieniu, stopy jedna na drugiej. Biodra uniesione w linii.',
  tip: 'Słabsza strona wymaga więcej pracy. Ważna dla symetrii i zdrowego kręgosłupa.',
);

const unoszenieNog = Exercise(
  name: 'Unoszenie nóg w leżeniu',
  muscles: 'Dolny brzuch, zginacze biodra',
  description: 'Leż na plecach, ręce wzdłuż tułowia. Unoś proste nogi do 90°, opuszczaj powoli.',
  tip: 'Odcinek lędźwiowy przy podłodze przez cały czas.',
);

const rowerek = Exercise(
  name: 'Rowerek',
  muscles: 'Brzuch skośny, brzuch prosty',
  description: 'Leż na plecach, ręce za głową. Naprzemiennie przyciągaj łokieć do przeciwległego kolana.',
  tip: 'Rób kontrolowanie i powoli. Szybkie, chaotyczne ruchy nie angażują mięśni.',
);

const wspinaczkaGorska = Exercise(
  name: 'Wspinaczka górska',
  muscles: 'Rdzeń, barki, kardio',
  description: 'Pozycja deski na wyprostowanych rękach. Naprzemiennie przyciągaj kolana dynamicznie do klatki.',
  tip: 'Biodra nisko w linii! Szybkie tempo = trening kardio. Wolne = rdzeń.',
);

const superman = Exercise(
  name: 'Superman',
  muscles: 'Prostowniki pleców, pośladki, tylne barki',
  description: 'Leż na brzuchu, ręce wyciągnięte przed siebie. Jednocześnie unoś ręce i nogi. Zatrzymaj 2 sekundy.',
  tip: 'Kluczowe dla zdrowych pleców – często pomijane.',
);

const burpee = Exercise(
  name: 'Burpees',
  muscles: 'Całe ciało, kardio',
  description: 'Przysiad → dłonie na podłodze → wyskocz nogami do pompki → pompka → wróć do przysiadu → skocz w górę.',
  tip: 'Najskuteczniejsze ćwiczenie cardio bez sprzętu. Spala 10–15 kcal na minutę.',
);

// ── ĆWICZENIA – FAZA 2 ────────────────────────────────────────────────────────

const pompkiDecline = Exercise(
  name: 'Pompki decline (nogi uniesione)',
  muscles: 'Górna klatka piersiowa, barki przednie',
  description: 'Nogi oparte o krzesło (30–40 cm). Dłonie na podłodze. Pompki z uniesionym tułowiem przenoszą nacisk na górną klatkę.',
  tip: 'Im wyżej nogi, tym bardziej angażujesz barki. Trzymaj brzuch napięty przez cały czas.',
);

const pompkiArcher = Exercise(
  name: 'Pompki archer',
  muscles: 'Klatka (jednostronnie), tricepsy, barki',
  description: 'Rozstaw ręce 2× szerziej niż barki. Opuszczaj ciało w stronę jednej ręki – druga pozostaje prawie prosta. Naprzemiennie.',
  tip: 'Progresja do pompki jednoramiennej. Napnij pośladki i brzuch dla stabilności.',
);

const pikeHandstand = Exercise(
  name: 'Pike push-up elevated (pseudo-handstand)',
  muscles: 'Barki, tricepsy, górna klatka',
  description: 'Nogi na krześle (40–50 cm), biodra uniesione nad głowę. Głowa opuszcza się między dłonie – ruch jak wyciskanie nad głowę.',
  tip: 'Im wyżej nogi, tym bliżej stania na rękach. Łokcie nie na boki.',
);

const lSit = Exercise(
  name: 'L-sit progresja (podłoga)',
  muscles: 'Rdzeń, zginacze biodra, tricepsy',
  description: 'Usiądź z dłońmi przy biodrach. Napnij brzuch i unoś pośladki. Zacznij od tucked L-sit (kolana przy klatce), potem prostuj nogi.',
  tip: 'Tuck L-sit przez 10s to cel na start. Najtrudniejszy element rdzenia w kalistenice.',
  stages: ['Tucked (kolana przy klatce)', 'Pół-prostowane nogi', 'Pełny L-sit (nogi proste)'],
);

const wiszenieKolana = Exercise(
  name: 'Unoszenie kolan w zwisie',
  muscles: 'Dolny brzuch, zginacze biodra, chwyt',
  description: 'Zwisaj aktywnie na drążku. Powoli podnoś kolana do klatki, zatrzymaj 1s, kontrolowanie opuszczaj.',
  tip: 'Nie kiwaj się. Wersja zaawansowana: prostuj nogi (L-hang).',
);

const przysiadPistolProg = Exercise(
  name: 'Progresja pistol squat',
  muscles: 'Uda, pośladki, równowaga (jednostronnie)',
  description: 'Etap 1: trzymaj ścianę. Etap 2: opuszczaj na jednej nodze do krzesła. Etap 3: pełny pistol bez pomocy.',
  tip: 'Wymaga elastyczności kostki i bioder. Rozciągaj się codziennie!',
  stages: ['Trzymaj ścianę', 'Opuszczaj do krzesła', 'Pełny pistol'],
);

// ── ĆWICZENIA – FAZA 3 ────────────────────────────────────────────────────────

const pompkiJednoramienna = Exercise(
  name: 'Pompka jednoramienna (negatywy)',
  muscles: 'Klatka, tricepsy, barki (jednostronnie)',
  description: 'Szeroki rozkrok nóg, jedna dłoń pod centrum. Opuszczaj się kontrolowanie przez 5 sekund. Wstań z obu rąk. Naprzemiennie.',
  tip: 'Cel: 5 pełnych powtórzeń. Jeden z najtrudniejszych elementów push kalisteniki.',
);

const stojNaRekach = Exercise(
  name: 'Stanie na rękach (przy ścianie)',
  muscles: 'Barki, tricepsy, rdzeń, równowaga',
  description: 'Stań plecami do ściany 20–30 cm, wejdź na ręce. Napnij całe ciało. Trzymaj jak najdłużej.',
  tip: 'Zacznij od 10s. Odsuń stopniowo stopy od ściany. Cel długoterminowy: freestanding handstand.',
  stages: ['Stopy blisko ściany', 'Stopy oddalone od ściany', 'Freestanding (bez ściany)'],
);

const pistolSit = Exercise(
  name: 'Pistol squat (pełny)',
  muscles: 'Uda, pośladki, równowaga (jednostronnie)',
  description: 'Stań na jednej nodze. Wolną nogę wyciągnij do przodu. Powoli opadaj do pełnego przysiadu i wróć.',
  tip: 'Szczyt treningu nóg. Wymaga siły, elastyczności i równowagi jednocześnie.',
);

const lSitFull = Exercise(
  name: 'L-sit na krzesłach (pełny)',
  muscles: 'Rdzeń, zginacze biodra, tricepsy',
  description: 'Na dwóch krzesłach o równej wysokości. Unieś całe ciało z nogami prostymi równolegle do podłogi. Trzymaj 5–15s.',
  tip: 'Kulminacyjny element rdzenia kalisteniki. Poprzedź ćwiczeniem unoszenia kolan.',
);

const muscleUpProg = Exercise(
  name: 'Muscle-up progresja',
  muscles: 'Cały grzbiet, klatka, barki, tricepsy',
  description: 'Etap 1: eksplozywne podciągnięcia powyżej drążka. Etap 2: eksplozywny chin-up + przejście w dip. Etap 3: pełny muscle-up.',
  tip: 'Wymaga minimum 10 solidnych podciągnięć. Kluczowy ruch: false grip (nadgarstek na drążku).',
  stages: ['Eksplozywne podciągnięcia', 'Chin-up + przejście w dip', 'Pełny muscle-up'],
);

// ── HARMONOGRAM ───────────────────────────────────────────────────────────────

const Map<int, Map<int, String>> _schedule = {
  1: {1: 'A', 2: 'B', 4: 'C', 5: 'D'},
  2: {1: 'A', 2: 'B', 4: 'C', 5: 'D'},
  3: {1: 'A', 2: 'B', 3: 'C', 5: 'D', 6: 'E'},
  4: {1: 'A', 2: 'B', 3: 'C', 5: 'D', 6: 'E'},
  5: {1: 'A', 2: 'B', 3: 'D', 4: 'C', 6: 'E'},
  6: {1: 'A', 2: 'B', 3: 'D', 4: 'C', 6: 'E'},
};

const _scheduleAdvanced = <int, String>{1: 'A', 2: 'B', 3: 'C', 5: 'D', 6: 'E'};

// ── TRENINGI – FAZA 1 ─────────────────────────────────────────────────────────

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

// ── TRENINGI – FAZA 2 ─────────────────────────────────────────────────────────

List<WorkSet> _pushCore2(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: pompkiDecline, sets: 3, reps: 8, restSecs: 90),
        const WorkSet(exercise: pompkiArcher, sets: 3, reps: 5, restSecs: 90),
        const WorkSet(exercise: dipy, sets: 3, reps: 12, restSecs: 75),
        const WorkSet(exercise: lSit, sets: 3, secs: 10, restSecs: 60),
        const WorkSet(exercise: deska, sets: 3, secs: 60, restSecs: 45),
      ];
    case 1:
      return [
        const WorkSet(exercise: pompkiDecline, sets: 4, reps: 10, restSecs: 75),
        const WorkSet(exercise: pompkiArcher, sets: 3, reps: 7, restSecs: 75),
        const WorkSet(exercise: pikeHandstand, sets: 3, reps: 8, restSecs: 75),
        const WorkSet(exercise: dipy, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: lSit, sets: 3, secs: 15, restSecs: 60),
        const WorkSet(exercise: deszkaBoczna, sets: 3, secs: 45, restSecs: 45),
      ];
    default:
      return [
        const WorkSet(exercise: pompkiDecline, sets: 4, reps: 12, restSecs: 60),
        const WorkSet(exercise: pompkiArcher, sets: 4, reps: 8, restSecs: 60),
        const WorkSet(exercise: pikeHandstand, sets: 3, reps: 10, restSecs: 60),
        const WorkSet(exercise: dipy, sets: 4, reps: 18, restSecs: 60),
        const WorkSet(exercise: lSit, sets: 3, secs: 20, restSecs: 60),
        const WorkSet(exercise: rowerek, sets: 3, reps: 30, restSecs: 45),
        const WorkSet(exercise: deszkaBoczna, sets: 3, secs: 60, restSecs: 45),
      ];
  }
}

List<WorkSet> _legsGlutes2(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: przysiadPistolProg, sets: 3, reps: 5, restSecs: 90),
        const WorkSet(exercise: przysiadyBulgarskie, sets: 3, reps: 12, restSecs: 75),
        const WorkSet(exercise: wykroki, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 3, reps: 15, restSecs: 60),
        const WorkSet(exercise: mostekBiodra, sets: 4, reps: 25, restSecs: 45),
      ];
    case 1:
      return [
        const WorkSet(exercise: przysiadPistolProg, sets: 4, reps: 7, restSecs: 90),
        const WorkSet(exercise: przysiadyBulgarskie, sets: 4, reps: 14, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: mostekBiodra, sets: 4, reps: 30, restSecs: 45),
        const WorkSet(exercise: wspiecieNaPalce, sets: 4, reps: 30, restSecs: 45),
      ];
    default:
      return [
        const WorkSet(exercise: przysiadPistolProg, sets: 4, reps: 10, restSecs: 75),
        const WorkSet(exercise: przysiadyBulgarskie, sets: 4, reps: 16, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 4, reps: 20, restSecs: 60),
        const WorkSet(exercise: mostekBiodra, sets: 4, reps: 30, restSecs: 45),
        const WorkSet(exercise: wykroki, sets: 4, reps: 20, restSecs: 45),
        const WorkSet(exercise: wspiecieNaPalce, sets: 3, reps: 40, restSecs: 45),
      ];
  }
}

List<WorkSet> _pullCore2(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: podciaganie, sets: 4, reps: 8, restSecs: 75),
        const WorkSet(exercise: podciaganiePodchwytem, sets: 3, reps: 8, restSecs: 75),
        const WorkSet(exercise: wiszenieKolana, sets: 3, reps: 10, restSecs: 60),
        const WorkSet(exercise: unoszenieNog, sets: 3, reps: 15, restSecs: 60),
        const WorkSet(exercise: deska, sets: 3, secs: 60, restSecs: 45),
      ];
    case 1:
      return [
        const WorkSet(exercise: podciaganie, sets: 5, reps: 8, restSecs: 75),
        const WorkSet(exercise: podciaganiePodchwytem, sets: 3, reps: 10, restSecs: 75),
        const WorkSet(exercise: wiszenieKolana, sets: 4, reps: 12, restSecs: 60),
        const WorkSet(exercise: unoszenieNog, sets: 3, reps: 20, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 3, secs: 45, restSecs: 60),
      ];
    default:
      return [
        const WorkSet(exercise: podciaganie, sets: 5, reps: 10, restSecs: 75),
        const WorkSet(exercise: podciaganiePodchwytem, sets: 4, reps: 10, restSecs: 75),
        const WorkSet(exercise: wiszenieKolana, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: unoszenieNog, sets: 4, reps: 20, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 3, secs: 60, restSecs: 60),
        const WorkSet(exercise: deszkaBoczna, sets: 3, secs: 60, restSecs: 45),
      ];
  }
}

List<WorkSet> _fullBodyCardio2(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: burpee, sets: 4, reps: 10, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 3, secs: 45, restSecs: 60),
        const WorkSet(exercise: pompkiDecline, sets: 3, reps: 8, restSecs: 75),
        const WorkSet(exercise: wiszenieKolana, sets: 3, reps: 10, restSecs: 60),
      ];
    case 1:
      return [
        const WorkSet(exercise: burpee, sets: 5, reps: 10, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 4, reps: 20, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 4, secs: 45, restSecs: 60),
        const WorkSet(exercise: pompkiArcher, sets: 3, reps: 6, restSecs: 75),
        const WorkSet(exercise: przysiadyBulgarskie, sets: 3, reps: 10, restSecs: 60),
      ];
    default:
      return [
        const WorkSet(exercise: burpee, sets: 5, reps: 12, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 4, reps: 20, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 4, secs: 60, restSecs: 60),
        const WorkSet(exercise: pompkiArcher, sets: 4, reps: 8, restSecs: 60),
        const WorkSet(exercise: przysiadyBulgarskie, sets: 4, reps: 12, restSecs: 60),
        const WorkSet(exercise: unoszenieNog, sets: 3, reps: 20, restSecs: 45),
      ];
  }
}

List<WorkSet> _upperMix2(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: pompkiDecline, sets: 3, reps: 10, restSecs: 75),
        const WorkSet(exercise: podciaganie, sets: 4, reps: 8, restSecs: 75),
        const WorkSet(exercise: pikeHandstand, sets: 3, reps: 8, restSecs: 75),
        const WorkSet(exercise: dipy, sets: 3, reps: 15, restSecs: 60),
        const WorkSet(exercise: lSit, sets: 3, secs: 12, restSecs: 60),
        const WorkSet(exercise: rowerek, sets: 3, reps: 25, restSecs: 45),
      ];
    case 1:
      return [
        const WorkSet(exercise: pompkiArcher, sets: 3, reps: 7, restSecs: 75),
        const WorkSet(exercise: podciaganie, sets: 4, reps: 10, restSecs: 75),
        const WorkSet(exercise: pikeHandstand, sets: 4, reps: 10, restSecs: 75),
        const WorkSet(exercise: dipy, sets: 4, reps: 16, restSecs: 60),
        const WorkSet(exercise: lSit, sets: 3, secs: 20, restSecs: 60),
        const WorkSet(exercise: deszkaBoczna, sets: 3, secs: 60, restSecs: 45),
      ];
    default:
      return [
        const WorkSet(exercise: pompkiArcher, sets: 4, reps: 8, restSecs: 60),
        const WorkSet(exercise: podciaganiePodchwytem, sets: 4, reps: 12, restSecs: 60),
        const WorkSet(exercise: pikeHandstand, sets: 4, reps: 12, restSecs: 60),
        const WorkSet(exercise: dipy, sets: 4, reps: 18, restSecs: 60),
        const WorkSet(exercise: lSit, sets: 3, secs: 25, restSecs: 60),
        const WorkSet(exercise: rowerek, sets: 3, reps: 30, restSecs: 45),
        const WorkSet(exercise: deszkaBoczna, sets: 3, secs: 60, restSecs: 45),
      ];
  }
}

// ── TRENINGI – FAZA 3 ─────────────────────────────────────────────────────────

List<WorkSet> _pushCore3(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: pompkiJednoramienna, sets: 3, reps: 3, restSecs: 120),
        const WorkSet(exercise: pompkiArcher, sets: 4, reps: 8, restSecs: 90),
        const WorkSet(exercise: stojNaRekach, sets: 3, secs: 15, restSecs: 90),
        const WorkSet(exercise: dipy, sets: 4, reps: 18, restSecs: 60),
        const WorkSet(exercise: lSitFull, sets: 3, secs: 10, restSecs: 90),
      ];
    case 1:
      return [
        const WorkSet(exercise: pompkiJednoramienna, sets: 4, reps: 4, restSecs: 120),
        const WorkSet(exercise: pompkiArcher, sets: 4, reps: 10, restSecs: 75),
        const WorkSet(exercise: stojNaRekach, sets: 3, secs: 20, restSecs: 90),
        const WorkSet(exercise: dipy, sets: 4, reps: 20, restSecs: 60),
        const WorkSet(exercise: lSitFull, sets: 3, secs: 15, restSecs: 90),
        const WorkSet(exercise: deszkaBoczna, sets: 3, secs: 60, restSecs: 45),
      ];
    default:
      return [
        const WorkSet(exercise: pompkiJednoramienna, sets: 4, reps: 5, restSecs: 90),
        const WorkSet(exercise: pompkiArcher, sets: 4, reps: 12, restSecs: 75),
        const WorkSet(exercise: stojNaRekach, sets: 4, secs: 25, restSecs: 75),
        const WorkSet(exercise: dipy, sets: 5, reps: 20, restSecs: 60),
        const WorkSet(exercise: lSitFull, sets: 4, secs: 20, restSecs: 75),
        const WorkSet(exercise: rowerek, sets: 3, reps: 30, restSecs: 45),
      ];
  }
}

List<WorkSet> _legsGlutes3(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: pistolSit, sets: 3, reps: 4, restSecs: 120),
        const WorkSet(exercise: przysiadyBulgarskie, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 4, reps: 20, restSecs: 60),
        const WorkSet(exercise: mostekBiodra, sets: 4, reps: 30, restSecs: 45),
        const WorkSet(exercise: wspiecieNaPalce, sets: 4, reps: 30, restSecs: 45),
      ];
    case 1:
      return [
        const WorkSet(exercise: pistolSit, sets: 4, reps: 5, restSecs: 90),
        const WorkSet(exercise: przysiadyBulgarskie, sets: 4, reps: 18, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 5, reps: 20, restSecs: 60),
        const WorkSet(exercise: mostekBiodra, sets: 4, reps: 30, restSecs: 45),
        const WorkSet(exercise: wykroki, sets: 4, reps: 20, restSecs: 45),
      ];
    default:
      return [
        const WorkSet(exercise: pistolSit, sets: 5, reps: 6, restSecs: 90),
        const WorkSet(exercise: przysiadyBulgarskie, sets: 4, reps: 20, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 5, reps: 20, restSecs: 60),
        const WorkSet(exercise: mostekBiodra, sets: 4, reps: 30, restSecs: 45),
        const WorkSet(exercise: wykroki, sets: 4, reps: 20, restSecs: 45),
        const WorkSet(exercise: wspiecieNaPalce, sets: 3, reps: 40, restSecs: 45),
      ];
  }
}

List<WorkSet> _pullCore3(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: muscleUpProg, sets: 3, reps: 4, restSecs: 120),
        const WorkSet(exercise: podciaganie, sets: 5, reps: 10, restSecs: 75),
        const WorkSet(exercise: wiszenieKolana, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: unoszenieNog, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: deska, sets: 3, secs: 90, restSecs: 45),
      ];
    case 1:
      return [
        const WorkSet(exercise: muscleUpProg, sets: 4, reps: 4, restSecs: 120),
        const WorkSet(exercise: podciaganie, sets: 5, reps: 12, restSecs: 75),
        const WorkSet(exercise: wiszenieKolana, sets: 5, reps: 15, restSecs: 60),
        const WorkSet(exercise: unoszenieNog, sets: 4, reps: 20, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 3, secs: 60, restSecs: 60),
      ];
    default:
      return [
        const WorkSet(exercise: muscleUpProg, sets: 5, reps: 5, restSecs: 90),
        const WorkSet(exercise: podciaganie, sets: 5, reps: 12, restSecs: 75),
        const WorkSet(exercise: podciaganiePodchwytem, sets: 4, reps: 12, restSecs: 75),
        const WorkSet(exercise: wiszenieKolana, sets: 5, reps: 15, restSecs: 60),
        const WorkSet(exercise: unoszenieNog, sets: 4, reps: 20, restSecs: 60),
        const WorkSet(exercise: deszkaBoczna, sets: 3, secs: 60, restSecs: 45),
      ];
  }
}

List<WorkSet> _fullBodyCardio3(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: burpee, sets: 5, reps: 12, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 5, reps: 20, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 4, secs: 60, restSecs: 60),
        const WorkSet(exercise: pompkiArcher, sets: 3, reps: 8, restSecs: 75),
        const WorkSet(exercise: pistolSit, sets: 3, reps: 4, restSecs: 90),
      ];
    case 1:
      return [
        const WorkSet(exercise: burpee, sets: 5, reps: 15, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 5, reps: 20, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 4, secs: 60, restSecs: 60),
        const WorkSet(exercise: pompkiJednoramienna, sets: 3, reps: 3, restSecs: 90),
        const WorkSet(exercise: pistolSit, sets: 3, reps: 5, restSecs: 90),
      ];
    default:
      return [
        const WorkSet(exercise: burpee, sets: 6, reps: 15, restSecs: 60),
        const WorkSet(exercise: skokyPrzysiad, sets: 5, reps: 25, restSecs: 60),
        const WorkSet(exercise: wspinaczkaGorska, sets: 5, secs: 60, restSecs: 60),
        const WorkSet(exercise: pompkiJednoramienna, sets: 4, reps: 4, restSecs: 90),
        const WorkSet(exercise: pistolSit, sets: 4, reps: 5, restSecs: 90),
        const WorkSet(exercise: muscleUpProg, sets: 3, reps: 4, restSecs: 90),
      ];
  }
}

List<WorkSet> _upperMix3(int level) {
  switch (level) {
    case 0:
      return [
        const WorkSet(exercise: stojNaRekach, sets: 3, secs: 20, restSecs: 90),
        const WorkSet(exercise: podciaganie, sets: 5, reps: 10, restSecs: 75),
        const WorkSet(exercise: pompkiJednoramienna, sets: 3, reps: 3, restSecs: 120),
        const WorkSet(exercise: lSitFull, sets: 3, secs: 12, restSecs: 90),
        const WorkSet(exercise: dipy, sets: 4, reps: 18, restSecs: 60),
      ];
    case 1:
      return [
        const WorkSet(exercise: stojNaRekach, sets: 4, secs: 25, restSecs: 90),
        const WorkSet(exercise: muscleUpProg, sets: 3, reps: 4, restSecs: 120),
        const WorkSet(exercise: pompkiJednoramienna, sets: 4, reps: 4, restSecs: 90),
        const WorkSet(exercise: lSitFull, sets: 3, secs: 18, restSecs: 90),
        const WorkSet(exercise: pikeHandstand, sets: 3, reps: 12, restSecs: 60),
      ];
    default:
      return [
        const WorkSet(exercise: stojNaRekach, sets: 4, secs: 30, restSecs: 75),
        const WorkSet(exercise: muscleUpProg, sets: 4, reps: 5, restSecs: 90),
        const WorkSet(exercise: pompkiJednoramienna, sets: 4, reps: 5, restSecs: 90),
        const WorkSet(exercise: lSitFull, sets: 4, secs: 22, restSecs: 75),
        const WorkSet(exercise: pikeHandstand, sets: 4, reps: 15, restSecs: 60),
        const WorkSet(exercise: podciaganiePodchwytem, sets: 4, reps: 12, restSecs: 60),
      ];
  }
}

// ── PUBLIC API ────────────────────────────────────────────────────────────────

WorkoutDay? getWorkout(int week, int dow) {
  if (week < 1) return null;

  late final Map<int, String> dayMap;
  late final int level;
  late final int phase;

  if (week <= 6) {
    phase = 1;
    dayMap = _schedule[week] ?? {};
    level = (week - 1) ~/ 2;
  } else if (week <= 12) {
    phase = 2;
    dayMap = _scheduleAdvanced;
    level = (week - 7) ~/ 2;
  } else {
    phase = 3;
    dayMap = _scheduleAdvanced;
    final weekInCycle = ((week - 13) % 12) + 1;
    level = (weekInCycle - 1) ~/ 4;
  }

  final type = dayMap[dow];
  if (type == null) return null;

  late final String title;
  late final String emoji;
  late final String focus;
  late final List<WorkSet> sets;

  if (phase == 1) {
    switch (type) {
      case 'A':
        title = 'Trening A – Push + Rdzeń'; emoji = '💪';
        focus = 'Klatka, barki, tricepsy, brzuch'; sets = _pushCore(level);
      case 'B':
        title = 'Trening B – Nogi + Pośladki'; emoji = '🦵';
        focus = 'Uda, pośladki, łydki'; sets = _legsGlutes(level);
      case 'C':
        title = 'Trening C – Pull + Rdzeń'; emoji = '🏋️';
        focus = 'Plecy, bicepsy, brzuch (drążek)'; sets = _pullCore(level);
      case 'D':
        title = 'Trening D – Full Body Cardio'; emoji = '🔥';
        focus = 'Całe ciało + spalanie tłuszczu'; sets = _fullBodyCardio(level);
      case 'E':
        title = 'Trening E – Upper Body Mix'; emoji = '⚡';
        focus = 'Klatka, plecy, barki, rdzeń'; sets = _upperMix(level == 0 ? 1 : level);
      default: return null;
    }
  } else if (phase == 2) {
    switch (type) {
      case 'A':
        title = 'Trening A – Push Zaawansowany'; emoji = '💥';
        focus = 'Decline, archer, pseudo-handstand'; sets = _pushCore2(level);
      case 'B':
        title = 'Trening B – Pistol Progress'; emoji = '🦵';
        focus = 'Pistol squat, bułgarskie, skoki'; sets = _legsGlutes2(level);
      case 'C':
        title = 'Trening C – Pull Zaawansowany'; emoji = '🏋️';
        focus = 'Podciągania, unoszenie kolan, rdzeń'; sets = _pullCore2(level);
      case 'D':
        title = 'Trening D – Cardio Zaawansowane'; emoji = '🔥';
        focus = 'Intensywność, całe ciało'; sets = _fullBodyCardio2(level);
      case 'E':
        title = 'Trening E – Upper Mix Faza 2'; emoji = '⚡';
        focus = 'Siła + zaawansowane elementy'; sets = _upperMix2(level);
      default: return null;
    }
  } else {
    switch (type) {
      case 'A':
        title = 'Trening A – Push Elitarny'; emoji = '🎯';
        focus = 'Jednoramienna, handstand, L-sit'; sets = _pushCore3(level);
      case 'B':
        title = 'Trening B – Pistol & Power'; emoji = '🦵';
        focus = 'Pełne pistol squat, moc nóg'; sets = _legsGlutes3(level);
      case 'C':
        title = 'Trening C – Muscle-Up & Pull'; emoji = '🏆';
        focus = 'Muscle-up, zaawansowane podciągania'; sets = _pullCore3(level);
      case 'D':
        title = 'Trening D – Athletic Cardio'; emoji = '🔥';
        focus = 'Moc, wytrzymałość, pełne ciało'; sets = _fullBodyCardio3(level);
      case 'E':
        title = 'Trening E – Skills & Strength'; emoji = '⭐';
        focus = 'Handstand, jednoramienna, L-sit'; sets = _upperMix3(level);
      default: return null;
    }
  }

  return WorkoutDay(week: week, dow: dow, title: title, emoji: emoji, focus: focus, sets: sets);
}

bool isRestDay(int week, int dow) {
  if (week <= 6) return _schedule[week]?[dow] == null;
  return _scheduleAdvanced[dow] == null;
}

int workoutsInWeek(int week) {
  if (week <= 6) return _schedule[week]?.length ?? 0;
  return _scheduleAdvanced.length;
}

int phaseForWeek(int week) {
  if (week <= 6) return 1;
  if (week <= 12) return 2;
  return 3;
}

String weekDescription(int week) {
  if (week <= 2) return 'Tydzień $week – Budowanie fundamentów (4 treningi)';
  if (week <= 6) return 'Tydzień $week – Intensywność Fazy 1 (5 treningów)';
  if (week <= 8) return 'Tydzień $week – Faza 2: Nowe wyzwania (5 treningów)';
  if (week <= 12) return 'Tydzień $week – Faza 2: Zaawansowane ćwiczenia (5 treningów)';
  final cycleWeek = ((week - 13) % 12) + 1;
  final cycle = (week - 13) ~/ 12 + 1;
  return 'Tydzień $week – Faza 3, cykl $cycle, tydz. $cycleWeek/12';
}
