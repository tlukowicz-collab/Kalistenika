import 'models.dart';

// ── ŚNIADANIA ─────────────────────────────────────────────────────────────────

const _owsianka = Meal(
  name: 'Owsianka bananowa z orzechami',
  type: 'Śniadanie',
  kcal: 550,
  protein: 22,
  prepMins: 10,
  ingredients: [
    Ingredient('Płatki owsiane', '100 g'),
    Ingredient('Mleko 2%', '300 ml'),
    Ingredient('Banan', '1 sztuka'),
    Ingredient('Orzechy włoskie', '20 g'),
    Ingredient('Miód', '1 łyżka'),
  ],
  steps: [
    'Wlej mleko do garnka, dodaj płatki i gotuj na małym ogniu przez 5 minut, mieszając.',
    'Przełóż do miski, ułóż pokrojonego banana i orzechy.',
    'Skrop miodem.',
  ],
);

const _jajecznica = Meal(
  name: 'Jajecznica z warzywami na toście',
  type: 'Śniadanie',
  kcal: 500,
  protein: 32,
  prepMins: 10,
  ingredients: [
    Ingredient('Jajka', '3 sztuki'),
    Ingredient('Papryka czerwona', '½ sztuki'),
    Ingredient('Cebula', '½ sztuki'),
    Ingredient('Chleb razowy', '2 kromki'),
    Ingredient('Oliwa z oliwek', '1 łyżeczka'),
    Ingredient('Sól, pieprz', 'do smaku'),
  ],
  steps: [
    'Pokrój paprykę i cebulę w drobną kostkę. Podsmaż na oliwie 3 minuty.',
    'Wbij jajka, mieszaj na małym ogniu do ścięcia.',
    'Podaj z opieczonymi tostami.',
  ],
);

const _twarogOwocowy = Meal(
  name: 'Twaróg z owocami i miodem',
  type: 'Śniadanie',
  kcal: 420,
  protein: 35,
  prepMins: 5,
  ingredients: [
    Ingredient('Twaróg chudy', '250 g'),
    Ingredient('Truskawki lub borówki', '150 g'),
    Ingredient('Miód', '1 łyżka'),
    Ingredient('Chleb razowy', '2 kromki'),
  ],
  steps: [
    'Twaróg przełóż do miski, wymieszaj z miodem.',
    'Dodaj umyte owoce.',
    'Zjedz z chlebem razowym.',
  ],
);

const _kanapkiJajko = Meal(
  name: 'Kanapki z jajkiem i awokado',
  type: 'Śniadanie',
  kcal: 520,
  protein: 28,
  prepMins: 10,
  ingredients: [
    Ingredient('Jajka', '2 sztuki'),
    Ingredient('Awokado', '½ sztuki'),
    Ingredient('Chleb razowy', '2 kromki'),
    Ingredient('Pomidor', '1 sztuka'),
    Ingredient('Sól, pieprz, sok z cytryny', 'do smaku'),
  ],
  steps: [
    'Ugotuj jajka na twardo (8 minut), ostudź i pokrój w plasterki.',
    'Awokado rozgnieć widelcem, dopraw sokiem z cytryny, solą i pieprzem.',
    'Posmaruj chleb awokado, ułóż jajko i pomidora.',
  ],
);

const _jogurtGranola = Meal(
  name: 'Jogurt grecki z granolą i owocami',
  type: 'Śniadanie',
  kcal: 480,
  protein: 24,
  prepMins: 5,
  ingredients: [
    Ingredient('Jogurt grecki 2%', '250 g'),
    Ingredient('Granola (bez cukru)', '50 g'),
    Ingredient('Banan', '1 sztuka'),
    Ingredient('Owoce sezonowe', 'garść'),
  ],
  steps: [
    'Jogurt przełóż do miski.',
    'Posyp granolą, dodaj pokrojonego banana i owoce.',
  ],
);

const _nalesniki = Meal(
  name: 'Naleśniki owsiane z twarogiem',
  type: 'Śniadanie',
  kcal: 530,
  protein: 30,
  prepMins: 20,
  ingredients: [
    Ingredient('Płatki owsiane (zmielone)', '80 g'),
    Ingredient('Jajka', '2 sztuki'),
    Ingredient('Mleko', '150 ml'),
    Ingredient('Twaróg chudy', '100 g'),
    Ingredient('Banan lub dżem', 'do nadzienia'),
  ],
  steps: [
    'Zmiksuj płatki na mąkę. Wymieszaj z jajkami i mlekiem na ciasto.',
    'Smaż cienkie naleśniki na suchej patelni (2-3 min na stronę).',
    'Nadziewaj twarogiem i bananem lub dżemem.',
  ],
);

const _koktajlBialkowy = Meal(
  name: 'Koktajl bananowo-twarogowy',
  type: 'Śniadanie',
  kcal: 440,
  protein: 30,
  prepMins: 5,
  ingredients: [
    Ingredient('Twaróg chudy', '200 g'),
    Ingredient('Banan', '1 sztuka'),
    Ingredient('Mleko', '200 ml'),
    Ingredient('Kakao naturalne', '1 łyżka'),
    Ingredient('Miód', '1 łyżeczka'),
  ],
  steps: [
    'Wszystkie składniki wrzuć do blendera.',
    'Miksuj 30 sekund do gładkości.',
    'Przelej do szklanki. Zjedz z 2 kromkami chleba razowego.',
  ],
);

// ── OBIADY ────────────────────────────────────────────────────────────────────

const _kurczakRyz = Meal(
  name: 'Kurczak z ryżem i brokułem',
  type: 'Obiad',
  kcal: 650,
  protein: 58,
  prepMins: 25,
  ingredients: [
    Ingredient('Pierś kurczaka', '200 g'),
    Ingredient('Ryż biały lub brązowy', '100 g (suchy)'),
    Ingredient('Brokuł', '200 g'),
    Ingredient('Czosnek', '2 ząbki'),
    Ingredient('Oliwa', '1 łyżka'),
    Ingredient('Papryka słodka, sól, pieprz', 'do smaku'),
  ],
  steps: [
    'Ryż ugotuj według instrukcji na opakowaniu.',
    'Kurczaka rozbij tłuczkiem, natrzyj papryką, solą i pieprzem.',
    'Smaż na oliwie z czosnkiem po 5-6 minut z każdej strony.',
    'Brokuł gotuj na parze lub w osolonej wodzie 5-7 minut.',
    'Podaj wszystko razem.',
  ],
);

const _makaronTunczyk = Meal(
  name: 'Makaron z tuńczykiem i pomidorami',
  type: 'Obiad',
  kcal: 580,
  protein: 45,
  prepMins: 20,
  ingredients: [
    Ingredient('Makaron pełnoziarnisty', '100 g (suchy)'),
    Ingredient('Tuńczyk w wodzie (puszka)', '160 g'),
    Ingredient('Pomidory lub passata', '200 g'),
    Ingredient('Czosnek', '2 ząbki'),
    Ingredient('Oliwa', '1 łyżka'),
    Ingredient('Oregano, sól, pieprz', 'do smaku'),
  ],
  steps: [
    'Ugotuj makaron al dente.',
    'Na patelni podsmaż czosnek na oliwie (1 min), dodaj pomidory/passatę.',
    'Gotuj 5 minut, dodaj odsączonego tuńczyka, dopraw.',
    'Wymieszaj z makaronem.',
  ],
);

const _zupaSoczewica = Meal(
  name: 'Zupa z czerwonej soczewicy',
  type: 'Obiad',
  kcal: 520,
  protein: 30,
  prepMins: 30,
  ingredients: [
    Ingredient('Czerwona soczewica', '150 g'),
    Ingredient('Marchew', '2 sztuki'),
    Ingredient('Cebula', '1 sztuka'),
    Ingredient('Czosnek', '2 ząbki'),
    Ingredient('Pomidory z puszki', '400 g'),
    Ingredient('Bulion warzywny', '800 ml'),
    Ingredient('Kumin, papryka, sól', 'do smaku'),
    Ingredient('Chleb razowy', '2 kromki'),
  ],
  steps: [
    'Podsmaż cebulę i czosnek na oliwie 3 minuty.',
    'Dodaj startą marchew, smaż jeszcze 3 minuty.',
    'Wlej bulion, dodaj soczewicę, pomidory i przyprawy.',
    'Gotuj 20 minut aż soczewica będzie miękka.',
    'Opcjonalnie zmiksuj część zupy dla kremowej konsystencji.',
  ],
);

const _kurczakKuskus = Meal(
  name: 'Kurczak z kuskusem i warzywami',
  type: 'Obiad',
  kcal: 610,
  protein: 52,
  prepMins: 20,
  ingredients: [
    Ingredient('Pierś kurczaka', '200 g'),
    Ingredient('Kuskus', '80 g (suchy)'),
    Ingredient('Cukinia', '1 sztuka'),
    Ingredient('Papryka', '1 sztuka'),
    Ingredient('Oliwa', '1 łyżka'),
    Ingredient('Kurkuma, sól, pieprz', 'do smaku'),
  ],
  steps: [
    'Kuskus zalej wrzątkiem (1:1.5), przykryj i odstaw na 5 minut.',
    'Kurczaka pokrój w kostkę, przypraw i smaż na oliwie 8 minut.',
    'Dodaj pokrojoną cukinię i paprykę, smaż kolejne 5 minut.',
    'Wymieszaj z kuskusem.',
  ],
);

const _ryzomleko = Meal(
  name: 'Ryż smażony z jajkami',
  type: 'Obiad',
  kcal: 540,
  protein: 28,
  prepMins: 15,
  ingredients: [
    Ingredient('Ugotowany ryż (zimny)', '200 g'),
    Ingredient('Jajka', '3 sztuki'),
    Ingredient('Marchew', '1 sztuka'),
    Ingredient('Groszek mrożony', '100 g'),
    Ingredient('Sos sojowy', '2 łyżki'),
    Ingredient('Olej', '1 łyżka'),
    Ingredient('Czosnek', '1 ząbek'),
  ],
  steps: [
    'Na gorącym oleju podsmaż czosnek i startą marchew przez 3 minuty.',
    'Dodaj groszek, smaż kolejne 2 minuty.',
    'Wrzuć ryż, wymieszaj i podsmaż 3 minuty.',
    'Zrób miejsce na patelni, wbij jajka i zamieszaj szybko.',
    'Polej sosem sojowym, wymieszaj wszystko.',
  ],
);

const _kotletZiemniaki = Meal(
  name: 'Kotlet schabowy z ziemniakami i surówką',
  type: 'Obiad',
  kcal: 620,
  protein: 46,
  prepMins: 35,
  ingredients: [
    Ingredient('Schab bez kości', '150 g'),
    Ingredient('Jajko', '1 sztuka'),
    Ingredient('Bułka tarta', '3 łyżki'),
    Ingredient('Ziemniaki', '250 g'),
    Ingredient('Kapusta kiszona lub świeża', '150 g'),
    Ingredient('Marchew', '1 sztuka'),
    Ingredient('Olej do smażenia', '2 łyżki'),
  ],
  steps: [
    'Schab rozbij tłuczkiem, obtocz w jajku i tartej bułce.',
    'Smaż na rozgrzanym oleju po 4-5 minut z każdej strony.',
    'Ziemniaki ugotuj w osolonej wodzie 20 minut.',
    'Zrób surówkę z tartej marchewki i kapusty.',
  ],
);

const _zupaPomidorowa = Meal(
  name: 'Zupa pomidorowa z makaronem',
  type: 'Obiad',
  kcal: 480,
  protein: 18,
  prepMins: 25,
  ingredients: [
    Ingredient('Passata pomidorowa', '500 ml'),
    Ingredient('Bulion warzywny', '600 ml'),
    Ingredient('Makaron', '80 g (suchy)'),
    Ingredient('Marchew', '2 sztuki'),
    Ingredient('Śmietana 12%', '3 łyżki'),
    Ingredient('Cukier, sól, pieprz', 'do smaku'),
  ],
  steps: [
    'Marchew ugotuj w bulionie do miękkości (15 min).',
    'Wlej passatę, doprowadź do wrzenia.',
    'Dodaj makaron, gotuj tyle ile podaje opakowanie.',
    'Zahartuj śmietanę (wymieszaj z łyżką zupy) i dodaj do garnka.',
    'Dopraw do smaku.',
  ],
);

// ── KOLACJE ───────────────────────────────────────────────────────────────────

const _omletWarzywny = Meal(
  name: 'Omlet warzywny z serem',
  type: 'Kolacja',
  kcal: 430,
  protein: 32,
  prepMins: 10,
  ingredients: [
    Ingredient('Jajka', '3 sztuki'),
    Ingredient('Szpinak świeży lub mrożony', '80 g'),
    Ingredient('Pomidor', '1 sztuka'),
    Ingredient('Ser żółty starty', '30 g'),
    Ingredient('Oliwa', '1 łyżeczka'),
    Ingredient('Sól, pieprz', 'do smaku'),
  ],
  steps: [
    'Roztrzep jajka z solą i pieprzem.',
    'Na patelni podsmaż szpinak 2 minuty, wylej jajka.',
    'Ułóż pomidora i ser na połowie omletu.',
    'Kiedy spód zetnie się złóż omlet na pół i podawaj.',
  ],
);

const _kanapkiTwarog = Meal(
  name: 'Kanapki z twarogiem i rzodkiewką',
  type: 'Kolacja',
  kcal: 360,
  protein: 28,
  prepMins: 5,
  ingredients: [
    Ingredient('Chleb razowy', '3 kromki'),
    Ingredient('Twaróg chudy', '200 g'),
    Ingredient('Rzodkiewka', '6 sztuk'),
    Ingredient('Szczypiorek', 'pęczek'),
    Ingredient('Sól, pieprz', 'do smaku'),
  ],
  steps: [
    'Twaróg wymieszaj z posiekanym szczypiorkiem, solą i pieprzem.',
    'Posmaruj chleb twarogiem.',
    'Ułóż pokrojone rzodkiewki.',
  ],
);

const _salatkaTunczyk = Meal(
  name: 'Sałatka z tuńczykiem i jajkiem',
  type: 'Kolacja',
  kcal: 400,
  protein: 42,
  prepMins: 10,
  ingredients: [
    Ingredient('Tuńczyk w wodzie', '160 g'),
    Ingredient('Jajko ugotowane na twardo', '2 sztuki'),
    Ingredient('Sałata mieszana', '100 g'),
    Ingredient('Pomidor', '1 sztuka'),
    Ingredient('Ogórek', '½ sztuki'),
    Ingredient('Oliwa z oliwek', '1 łyżka'),
    Ingredient('Sok z cytryny, sól, pieprz', 'do smaku'),
  ],
  steps: [
    'Sałatę porwij do miski, dodaj pokrojone warzywa.',
    'Ułóż odsączonego tuńczyka i pokrojone jajka.',
    'Skrop oliwą i sokiem z cytryny, dopraw.',
  ],
);

const _kurczakSalatka = Meal(
  name: 'Grillowany kurczak z sałatką',
  type: 'Kolacja',
  kcal: 420,
  protein: 45,
  prepMins: 15,
  ingredients: [
    Ingredient('Pierś kurczaka', '150 g'),
    Ingredient('Sałata', '100 g'),
    Ingredient('Pomidor', '1 sztuka'),
    Ingredient('Ogórek', '½ sztuki'),
    Ingredient('Oliwa', '1 łyżka'),
    Ingredient('Sok z cytryny, sól, pieprz', 'do smaku'),
  ],
  steps: [
    'Kurczaka rozbij, dopraw i usmaż bez tłuszczu na patelni grillowej 5-6 min z każdej strony.',
    'Pokrój w plastry.',
    'Wymieszaj warzywa sałatki, skrop oliwą i cytryną.',
    'Ułóż kurczaka na sałatce.',
  ],
);

const _kanapkiJajkoSadzone = Meal(
  name: 'Jajka sadzone z chlebem i pomidorem',
  type: 'Kolacja',
  kcal: 390,
  protein: 26,
  prepMins: 8,
  ingredients: [
    Ingredient('Jajka', '3 sztuki'),
    Ingredient('Chleb razowy', '2 kromki'),
    Ingredient('Pomidor', '1 sztuka'),
    Ingredient('Masło', '1 łyżeczka'),
    Ingredient('Sól, pieprz, szczypiorek', 'do smaku'),
  ],
  steps: [
    'Usmaż jajka sadzone na maśle na małym ogniu (3-4 min).',
    'Oprzyj chleb lub jedz bez opiekania.',
    'Podaj z pokrojonym pomidorem i szczypiorkiem.',
  ],
);

const _zupaDyniowa = Meal(
  name: 'Krem z dyni z grzankami',
  type: 'Kolacja',
  kcal: 360,
  protein: 10,
  prepMins: 20,
  ingredients: [
    Ingredient('Dynia (mrożona lub z puszki)', '400 g'),
    Ingredient('Marchew', '2 sztuki'),
    Ingredient('Cebula', '1 sztuka'),
    Ingredient('Śmietanka 12%', '100 ml'),
    Ingredient('Bulion warzywny', '500 ml'),
    Ingredient('Chleb razowy (grzanki)', '2 kromki'),
    Ingredient('Imbir, sól, pieprz', 'do smaku'),
  ],
  steps: [
    'Cebulę i marchew podsmaż na oliwie 5 minut.',
    'Dodaj dynię, wlej bulion, gotuj 15 minut.',
    'Zmiksuj blenderem na gładki krem, dodaj śmietankę.',
    'Chleb pokrój w kostkę i opiecz w tosterze na grzanki.',
  ],
);

const _omletTwarog = Meal(
  name: 'Omlet z twarogiem i szczypiorkiem',
  type: 'Kolacja',
  kcal: 380,
  protein: 34,
  prepMins: 8,
  ingredients: [
    Ingredient('Jajka', '3 sztuki'),
    Ingredient('Twaróg chudy', '100 g'),
    Ingredient('Szczypiorek', 'pęczek'),
    Ingredient('Oliwa', '1 łyżeczka'),
    Ingredient('Sól, pieprz', 'do smaku'),
  ],
  steps: [
    'Roztrzep jajka, wmieszaj twaróg i posiekany szczypiorek.',
    'Wylej na rozgrzaną oliwę.',
    'Smaż 3 minuty na małym ogniu, złóż na pół.',
  ],
);

// ── PRZEKĄSKI ─────────────────────────────────────────────────────────────────

const _twarogJablko = Meal(
  name: 'Twaróg z jabłkiem i cynamonem',
  type: 'Przekąska',
  kcal: 220,
  protein: 22,
  prepMins: 3,
  ingredients: [
    Ingredient('Twaróg chudy', '150 g'),
    Ingredient('Jabłko', '1 sztuka'),
    Ingredient('Cynamon', 'szczypta'),
  ],
  steps: ['Pokrój jabłko, wymieszaj z twarogiem i cynamonem.'],
);

const _orzechyBanan = Meal(
  name: 'Orzechy z bananem',
  type: 'Przekąska',
  kcal: 250,
  protein: 7,
  prepMins: 1,
  ingredients: [
    Ingredient('Mieszane orzechy', '30 g'),
    Ingredient('Banan', '1 sztuka'),
  ],
  steps: ['Pokrój banana, zjedz z garścią orzechów.'],
);

const _jogurtNaturalny = Meal(
  name: 'Jogurt naturalny z miodem',
  type: 'Przekąska',
  kcal: 180,
  protein: 12,
  prepMins: 1,
  ingredients: [
    Ingredient('Jogurt naturalny 2%', '200 g'),
    Ingredient('Miód', '1 łyżeczka'),
  ],
  steps: ['Jogurt przełóż do miseczki, skrop miodem.'],
);

const _kanapkaMasloOrzechowe = Meal(
  name: 'Kanapka z masłem orzechowym',
  type: 'Przekąska',
  kcal: 240,
  protein: 9,
  prepMins: 2,
  ingredients: [
    Ingredient('Chleb razowy', '1 kromka'),
    Ingredient('Masło orzechowe (100% orzechów)', '1.5 łyżki'),
    Ingredient('Banan lub dżem', 'opcjonalnie'),
  ],
  steps: ['Posmaruj chleb masłem orzechowym. Dodaj opcjonalne dodatki.'],
);

const _jajkoTwardo = Meal(
  name: 'Jajko na twardo z warzywkami',
  type: 'Przekąska',
  kcal: 150,
  protein: 13,
  prepMins: 10,
  ingredients: [
    Ingredient('Jajka', '2 sztuki'),
    Ingredient('Pomidor lub ogórek', '1 sztuka'),
    Ingredient('Sól', 'szczypta'),
  ],
  steps: [
    'Ugotuj jajka na twardo (8 minut), ostudź w zimnej wodzie.',
    'Podaj z pokrojonym warzywem.',
  ],
);

const _marchewHummus = Meal(
  name: 'Marchewka z hummusem',
  type: 'Przekąska',
  kcal: 160,
  protein: 5,
  prepMins: 5,
  ingredients: [
    Ingredient('Marchew', '2 sztuki'),
    Ingredient('Hummus (ze sklepu lub domowy)', '50 g'),
  ],
  steps: ['Obierz marchewki, pokrój w słupki. Maczaj w hummusie.'],
);

const _orzechyMigdaly = Meal(
  name: 'Garść migdałów',
  type: 'Przekąska',
  kcal: 190,
  protein: 6,
  prepMins: 0,
  ingredients: [Ingredient('Migdały niesolone', '30 g')],
  steps: ['Gotowe do spożycia.'],
);

// ── JADŁOSPIS TYGODNIOWY ──────────────────────────────────────────────────────

const List<DayMeals> weeklyMeals = [
  DayMeals(
    dayName: 'Poniedziałek',
    breakfast: _owsianka,
    lunch: _kurczakRyz,
    dinner: _omletWarzywny,
    snack: _twarogJablko,
  ),
  DayMeals(
    dayName: 'Wtorek',
    breakfast: _jajecznica,
    lunch: _makaronTunczyk,
    dinner: _kanapkiTwarog,
    snack: _orzechyBanan,
  ),
  DayMeals(
    dayName: 'Środa',
    breakfast: _twarogOwocowy,
    lunch: _zupaSoczewica,
    dinner: _salatkaTunczyk,
    snack: _jogurtNaturalny,
  ),
  DayMeals(
    dayName: 'Czwartek',
    breakfast: _kanapkiJajko,
    lunch: _kurczakKuskus,
    dinner: _kurczakSalatka,
    snack: _kanapkaMasloOrzechowe,
  ),
  DayMeals(
    dayName: 'Piątek',
    breakfast: _jogurtGranola,
    lunch: _ryzomleko,
    dinner: _kanapkiJajkoSadzone,
    snack: _jajkoTwardo,
  ),
  DayMeals(
    dayName: 'Sobota',
    breakfast: _nalesniki,
    lunch: _kotletZiemniaki,
    dinner: _zupaDyniowa,
    snack: _marchewHummus,
  ),
  DayMeals(
    dayName: 'Niedziela',
    breakfast: _koktajlBialkowy,
    lunch: _zupaPomidorowa,
    dinner: _omletTwarog,
    snack: _orzechyMigdaly,
  ),
];

DayMeals getMealsForDay(int dayOfWeek) => weeklyMeals[(dayOfWeek - 1) % 7];
