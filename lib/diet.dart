import 'models.dart';

// ── TYDZIEŃ 1 – ŚNIADANIA ─────────────────────────────────────────────────────

const _owsianka = Meal(
  name: 'Owsianka bananowa z orzechami',
  type: 'Śniadanie', kcal: 550, protein: 22, prepMins: 10,
  ingredients: [Ingredient('Płatki owsiane', '100 g'), Ingredient('Mleko 2%', '300 ml'), Ingredient('Banan', '1 sztuka'), Ingredient('Orzechy włoskie', '20 g'), Ingredient('Miód', '1 łyżka')],
  steps: ['Wlej mleko do garnka, dodaj płatki i gotuj 5 minut mieszając.', 'Przełóż do miski, ułóż banana i orzechy.', 'Skrop miodem.'],
);
const _jajecznica = Meal(
  name: 'Jajecznica z warzywami na toście',
  type: 'Śniadanie', kcal: 500, protein: 32, prepMins: 10,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Papryka czerwona', '½ sztuki'), Ingredient('Cebula', '½ sztuki'), Ingredient('Chleb razowy', '2 kromki'), Ingredient('Oliwa', '1 łyżeczka'), Ingredient('Sól, pieprz', 'do smaku')],
  steps: ['Pokrój paprykę i cebulę, podsmaż na oliwie 3 minuty.', 'Wbij jajka, mieszaj na małym ogniu do ścięcia.', 'Podaj z opieczonymi tostami.'],
);
const _twarogOwocowy = Meal(
  name: 'Twaróg z owocami i miodem',
  type: 'Śniadanie', kcal: 420, protein: 35, prepMins: 5,
  ingredients: [Ingredient('Twaróg chudy', '250 g'), Ingredient('Truskawki lub borówki', '150 g'), Ingredient('Miód', '1 łyżka'), Ingredient('Chleb razowy', '2 kromki')],
  steps: ['Twaróg wymieszaj z miodem.', 'Dodaj umyte owoce.', 'Zjedz z chlebem razowym.'],
);
const _kanapkiJajko = Meal(
  name: 'Kanapki z jajkiem i awokado',
  type: 'Śniadanie', kcal: 520, protein: 28, prepMins: 10,
  ingredients: [Ingredient('Jajka', '2 sztuki'), Ingredient('Awokado', '½ sztuki'), Ingredient('Chleb razowy', '2 kromki'), Ingredient('Pomidor', '1 sztuka'), Ingredient('Sól, pieprz, sok z cytryny', 'do smaku')],
  steps: ['Ugotuj jajka na twardo (8 minut), ostudź i pokrój.', 'Awokado rozgnieć z cytryną, solą i pieprzem.', 'Posmaruj chleb awokado, ułóż jajko i pomidora.'],
);
const _jogurtGranola = Meal(
  name: 'Jogurt grecki z granolą i owocami',
  type: 'Śniadanie', kcal: 480, protein: 24, prepMins: 5,
  ingredients: [Ingredient('Jogurt grecki 2%', '250 g'), Ingredient('Granola', '50 g'), Ingredient('Banan', '1 sztuka'), Ingredient('Owoce sezonowe', 'garść')],
  steps: ['Jogurt przełóż do miski.', 'Posyp granolą, dodaj pokrojonego banana i owoce.'],
);
const _nalesniki = Meal(
  name: 'Naleśniki owsiane z twarogiem',
  type: 'Śniadanie', kcal: 530, protein: 30, prepMins: 20,
  ingredients: [Ingredient('Płatki owsiane (zmielone)', '80 g'), Ingredient('Jajka', '2 sztuki'), Ingredient('Mleko', '150 ml'), Ingredient('Twaróg chudy', '100 g'), Ingredient('Banan lub dżem', 'do nadzienia')],
  steps: ['Zmiksuj płatki na mąkę, wymieszaj z jajkami i mlekiem.', 'Smaż cienkie naleśniki na suchej patelni 2-3 min/stronę.', 'Nadziewaj twarogiem i bananem.'],
);
const _koktajlBialkowy = Meal(
  name: 'Koktajl bananowo-twarogowy',
  type: 'Śniadanie', kcal: 440, protein: 30, prepMins: 5,
  ingredients: [Ingredient('Twaróg chudy', '200 g'), Ingredient('Banan', '1 sztuka'), Ingredient('Mleko', '200 ml'), Ingredient('Kakao naturalne', '1 łyżka'), Ingredient('Miód', '1 łyżeczka')],
  steps: ['Wszystkie składniki wrzuć do blendera.', 'Miksuj 30 sekund.', 'Zjedz z 2 kromkami chleba razowego.'],
);

// ── TYDZIEŃ 2 – ŚNIADANIA ─────────────────────────────────────────────────────

const _lososTost = Meal(
  name: 'Tosty z łososiem wędzonym i twarogiem',
  type: 'Śniadanie', kcal: 520, protein: 38, prepMins: 10,
  ingredients: [Ingredient('Łosoś wędzony', '80 g'), Ingredient('Twaróg chudy', '100 g'), Ingredient('Chleb razowy', '2 kromki'), Ingredient('Szczypiorek', 'pęczek'), Ingredient('Sok z cytryny', 'do smaku')],
  steps: ['Wymieszaj twaróg ze szczypiorkiem i cytryną.', 'Posmaruj chleb.', 'Ułóż łososia.'],
);
const _owsiankaJablko = Meal(
  name: 'Owsianka z jabłkiem i cynamonem',
  type: 'Śniadanie', kcal: 490, protein: 20, prepMins: 10,
  ingredients: [Ingredient('Płatki owsiane', '100 g'), Ingredient('Mleko 2%', '300 ml'), Ingredient('Jabłko', '1 sztuka'), Ingredient('Cynamon', 'szczypta'), Ingredient('Miód', '1 łyżka')],
  steps: ['Gotuj płatki w mleku 5 min.', 'Zetrzyj lub pokrój jabłko.', 'Dodaj cynamon i miód.'],
);
const _jajkaZSzynka = Meal(
  name: 'Jajka sadzone z szynką na toście',
  type: 'Śniadanie', kcal: 520, protein: 36, prepMins: 10,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Szynka drobiowa', '60 g'), Ingredient('Chleb razowy', '2 kromki'), Ingredient('Masło', '1 łyżeczka')],
  steps: ['Usmaż szynkę na suchej patelni 2 min.', 'Usmaż jajka sadzone.', 'Podaj z chlebem.'],
);
const _twarozekNaSlono = Meal(
  name: 'Twarożek z rzodkiewką i ogórkiem',
  type: 'Śniadanie', kcal: 430, protein: 30, prepMins: 5,
  ingredients: [Ingredient('Twaróg chudy', '200 g'), Ingredient('Rzodkiewka', '6 sztuk'), Ingredient('Ogórek', '½ sztuki'), Ingredient('Szczypiorek', 'pęczek'), Ingredient('Chleb razowy', '2 kromki')],
  steps: ['Wymieszaj twaróg z pokrojonymi warzywami i szczypiorkiem.', 'Podaj z chlebem.'],
);
const _pancakes = Meal(
  name: 'Pancakes owsiane z dżemem',
  type: 'Śniadanie', kcal: 510, protein: 24, prepMins: 15,
  ingredients: [Ingredient('Mąka owsiana (zmielone płatki)', '80 g'), Ingredient('Jajka', '2 sztuki'), Ingredient('Mleko', '100 ml'), Ingredient('Dżem truskawkowy', '2 łyżki'), Ingredient('Proszek do pieczenia', 'szczypta')],
  steps: ['Wymieszaj mąkę, jajka, mleko i proszek.', 'Smaż porcje na suchej patelni 3 min/stronę.', 'Podaj z dżemem.'],
);
const _smoothieBowl = Meal(
  name: 'Smoothie bowl z granolą',
  type: 'Śniadanie', kcal: 460, protein: 22, prepMins: 5,
  ingredients: [Ingredient('Jogurt grecki 2%', '200 g'), Ingredient('Banan', '1 sztuka'), Ingredient('Mrożone jagody', '100 g'), Ingredient('Miód', '1 łyżka'), Ingredient('Granola', '40 g')],
  steps: ['Zmiksuj jogurt z bananem i jagodami.', 'Wlej do miseczki.', 'Posyp granolą i skrop miodem.'],
);
const _kanapkiSzpinak = Meal(
  name: 'Kanapki ze szpinakiem i jajkiem',
  type: 'Śniadanie', kcal: 490, protein: 32, prepMins: 10,
  ingredients: [Ingredient('Chleb razowy', '2 kromki'), Ingredient('Jajka', '2 sztuki'), Ingredient('Szpinak świeży', '60 g'), Ingredient('Czosnek', '1 ząbek'), Ingredient('Oliwa', '1 łyżeczka')],
  steps: ['Podsmaż szpinak z czosnkiem 2 min.', 'Usmaż jajka sadzone.', 'Ułóż szpinak i jajka na chlebie.'],
);

// ── TYDZIEŃ 3 – ŚNIADANIA ─────────────────────────────────────────────────────

const _jajkaKoszulce = Meal(
  name: 'Jajka w koszulce z awokado',
  type: 'Śniadanie', kcal: 510, protein: 30, prepMins: 10,
  ingredients: [Ingredient('Jajka', '2 sztuki'), Ingredient('Awokado', '½ sztuki'), Ingredient('Chleb razowy', '2 kromki'), Ingredient('Sok z cytryny, sól', 'do smaku')],
  steps: ['Zagotuj wodę z octem. Wbij jajko, gotuj 3-4 min.', 'Rozgnieć awokado z cytryną.', 'Posmaruj chleb awokado, ułóż jajka.'],
);
const _owsiankaCzek = Meal(
  name: 'Owsianka czekoladowo-orzechowa',
  type: 'Śniadanie', kcal: 500, protein: 20, prepMins: 10,
  ingredients: [Ingredient('Płatki owsiane', '100 g'), Ingredient('Mleko 2%', '300 ml'), Ingredient('Kakao naturalne', '1 łyżka'), Ingredient('Masło orzechowe', '1 łyżka'), Ingredient('Miód', '1 łyżeczka'), Ingredient('Orzechy', '20 g')],
  steps: ['Gotuj płatki w mleku 5 min.', 'Dodaj kakao i masło orzechowe.', 'Posyp orzechami i skrop miodem.'],
);
const _pastaJajeczna = Meal(
  name: 'Kanapki z pastą jajeczną',
  type: 'Śniadanie', kcal: 460, protein: 28, prepMins: 10,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Majonez light', '1 łyżka'), Ingredient('Musztarda', '1 łyżeczka'), Ingredient('Szczypiorek', 'pęczek'), Ingredient('Chleb razowy', '2 kromki')],
  steps: ['Ugotuj jajka na twardo (8 min), ostudź i posiekaj.', 'Wymieszaj z majonezem, musztardą i szczypiorkiem.', 'Ułóż na chlebie.'],
);
const _jogurtOrzechy = Meal(
  name: 'Jogurt grecki z orzechami i miodem',
  type: 'Śniadanie', kcal: 470, protein: 26, prepMins: 5,
  ingredients: [Ingredient('Jogurt grecki 2%', '250 g'), Ingredient('Orzechy włoskie', '30 g'), Ingredient('Miód', '1 łyżka'), Ingredient('Granola', '30 g')],
  steps: ['Jogurt przełóż do miski.', 'Dodaj orzechy i granolę.', 'Skrop miodem.'],
);
const _shakshuka = Meal(
  name: 'Shakshuka – jajka w sosie pomidorowym',
  type: 'Śniadanie', kcal: 510, protein: 33, prepMins: 20,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Pomidory z puszki', '400 g'), Ingredient('Papryka', '½ sztuki'), Ingredient('Cebula', '½ sztuki'), Ingredient('Czosnek', '2 ząbki'), Ingredient('Kminek, chili', 'do smaku'), Ingredient('Chleb razowy', '1 kromka')],
  steps: ['Podsmaż cebulę, czosnek i paprykę 5 min.', 'Wlej pomidory, gotuj 10 min.', 'Zrób dołki, wbij jajka. Gotuj pod przykrywką 5 min.', 'Podaj z chlebem.'],
);
const _koktajlTrusk = Meal(
  name: 'Koktajl truskawkowy z twarogiem',
  type: 'Śniadanie', kcal: 430, protein: 28, prepMins: 5,
  ingredients: [Ingredient('Twaróg chudy', '200 g'), Ingredient('Truskawki (lub mrożone)', '150 g'), Ingredient('Mleko', '150 ml'), Ingredient('Miód', '1 łyżka'), Ingredient('Chleb razowy', '1 kromka')],
  steps: ['Zmiksuj twaróg, truskawki i mleko.', 'Dodaj miód.', 'Podaj z chlebem.'],
);
const _tostTunczyk = Meal(
  name: 'Tost z pastą z tuńczyka',
  type: 'Śniadanie', kcal: 500, protein: 35, prepMins: 8,
  ingredients: [Ingredient('Tuńczyk w wodzie', '160 g'), Ingredient('Chleb razowy', '2 kromki'), Ingredient('Majonez light', '1 łyżka'), Ingredient('Ogórek', '½ sztuki')],
  steps: ['Odsącz tuńczyka, wymieszaj z majonezem.', 'Opiecz chleb.', 'Ułóż pastę i ogórek.'],
);

// ── TYDZIEŃ 4 – ŚNIADANIA ─────────────────────────────────────────────────────

const _ryzoMleko = Meal(
  name: 'Ryż mleczny z owocami',
  type: 'Śniadanie', kcal: 460, protein: 16, prepMins: 15,
  ingredients: [Ingredient('Ryż biały', '80 g'), Ingredient('Mleko 2%', '400 ml'), Ingredient('Banan', '1 sztuka'), Ingredient('Jagody', 'garść'), Ingredient('Cynamon, miód', 'do smaku')],
  steps: ['Gotuj ryż w mleku 15 min mieszając.', 'Dosłodź miodem.', 'Podaj z owocami.'],
);
const _jajecznicaSzynka = Meal(
  name: 'Jajecznica z szynką i pomidorem',
  type: 'Śniadanie', kcal: 520, protein: 38, prepMins: 10,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Szynka drobiowa', '80 g'), Ingredient('Pomidor', '1 sztuka'), Ingredient('Chleb razowy', '2 kromki')],
  steps: ['Podsmaż szynkę 2 min.', 'Wbij jajka, mieszaj do ścięcia.', 'Dodaj pomidora.', 'Podaj z chlebem.'],
);
const _owsiankaDaktyle = Meal(
  name: 'Owsianka z daktylami i migdałami',
  type: 'Śniadanie', kcal: 490, protein: 18, prepMins: 10,
  ingredients: [Ingredient('Płatki owsiane', '100 g'), Ingredient('Mleko 2%', '300 ml'), Ingredient('Daktyle', '40 g'), Ingredient('Migdały', '20 g'), Ingredient('Cynamon', 'szczypta')],
  steps: ['Gotuj płatki w mleku 5 min.', 'Posiekaj daktyle, dodaj do miski.', 'Posyp migdałami i cynamonem.'],
);
const _twarogWarzywa = Meal(
  name: 'Twaróg z warzywami na śniadanie',
  type: 'Śniadanie', kcal: 470, protein: 38, prepMins: 8,
  ingredients: [Ingredient('Twaróg chudy', '250 g'), Ingredient('Ogórek', '1 sztuka'), Ingredient('Rzodkiewka', '5 sztuk'), Ingredient('Pomidor', '½ sztuki'), Ingredient('Oliwa', '1 łyżeczka'), Ingredient('Chleb razowy', '2 kromki')],
  steps: ['Pokrój warzywa.', 'Wymieszaj z twarogiem i oliwą.', 'Podaj z chlebem.'],
);
const _gofryOwsiane = Meal(
  name: 'Gofry owsiane z twarogiem',
  type: 'Śniadanie', kcal: 500, protein: 26, prepMins: 20,
  ingredients: [Ingredient('Mąka owsiana', '80 g'), Ingredient('Jajka', '2 sztuki'), Ingredient('Mleko', '150 ml'), Ingredient('Proszek do pieczenia', 'szczypta'), Ingredient('Twaróg chudy', '100 g'), Ingredient('Owoce', 'garść')],
  steps: ['Wymieszaj mąkę, jajka, mleko i proszek.', 'Smaż na gofrownicy lub patelni.', 'Podaj z twarogiem i owocami.'],
);
const _koktajlJogurt = Meal(
  name: 'Koktajl jogurtowo-bananowy',
  type: 'Śniadanie', kcal: 450, protein: 22, prepMins: 5,
  ingredients: [Ingredient('Jogurt grecki 2%', '200 g'), Ingredient('Banan', '1 sztuka'), Ingredient('Kakao', '1 łyżka'), Ingredient('Mleko', '100 ml'), Ingredient('Chleb razowy', '1 kromka')],
  steps: ['Zmiksuj jogurt z bananem, kakao i mlekiem.', 'Podaj z chlebem.'],
);
const _kanapkiCiecierzyca = Meal(
  name: 'Kanapki z hummusem i jajkiem',
  type: 'Śniadanie', kcal: 460, protein: 22, prepMins: 8,
  ingredients: [Ingredient('Ciecierzyca z puszki', '200 g'), Ingredient('Czosnek', '1 ząbek'), Ingredient('Oliwa', '2 łyżki'), Ingredient('Sok z cytryny', '1 łyżka'), Ingredient('Chleb razowy', '2 kromki'), Ingredient('Jajko na twardo', '1 sztuka')],
  steps: ['Zmiksuj ciecierzycę z czosnkiem, oliwą i cytryną.', 'Posmaruj chleb.', 'Ułóż jajko w plastrach.'],
);

// ── TYDZIEŃ 1 – OBIADY ────────────────────────────────────────────────────────

const _kurczakRyz = Meal(
  name: 'Kurczak z ryżem i brokułem',
  type: 'Obiad', kcal: 650, protein: 58, prepMins: 25,
  ingredients: [Ingredient('Pierś kurczaka', '200 g'), Ingredient('Ryż', '100 g (suchy)'), Ingredient('Brokuł', '200 g'), Ingredient('Czosnek', '2 ząbki'), Ingredient('Oliwa', '1 łyżka'), Ingredient('Papryka, sól, pieprz', 'do smaku')],
  steps: ['Ugotuj ryż.', 'Kurczaka natrzyj papryką i solą. Smaż z czosnkiem 5-6 min/stronę.', 'Brokuł gotuj 5-7 min.', 'Podaj razem.'],
);
const _makaronTunczyk = Meal(
  name: 'Makaron z tuńczykiem i pomidorami',
  type: 'Obiad', kcal: 580, protein: 45, prepMins: 20,
  ingredients: [Ingredient('Makaron pełnoziarnisty', '100 g (suchy)'), Ingredient('Tuńczyk w wodzie', '160 g'), Ingredient('Passata lub pomidory', '200 g'), Ingredient('Czosnek', '2 ząbki'), Ingredient('Oliwa, oregano', 'do smaku')],
  steps: ['Ugotuj makaron.', 'Podsmaż czosnek, dodaj pomidory, gotuj 5 min.', 'Dodaj tuńczyka.', 'Wymieszaj z makaronem.'],
);
const _zupaSoczewica = Meal(
  name: 'Zupa z czerwonej soczewicy',
  type: 'Obiad', kcal: 520, protein: 30, prepMins: 30,
  ingredients: [Ingredient('Czerwona soczewica', '150 g'), Ingredient('Marchew', '2 sztuki'), Ingredient('Cebula', '1 sztuka'), Ingredient('Pomidory z puszki', '400 g'), Ingredient('Bulion', '800 ml'), Ingredient('Kumin, papryka', 'do smaku'), Ingredient('Chleb razowy', '2 kromki')],
  steps: ['Podsmaż cebulę i marchew.', 'Wlej bulion, dodaj soczewicę i pomidory.', 'Gotuj 20 min.', 'Opcjonalnie zmiksuj.'],
);
const _kurczakKuskus = Meal(
  name: 'Kurczak z kuskusem i warzywami',
  type: 'Obiad', kcal: 610, protein: 52, prepMins: 20,
  ingredients: [Ingredient('Pierś kurczaka', '200 g'), Ingredient('Kuskus', '80 g (suchy)'), Ingredient('Cukinia', '1 sztuka'), Ingredient('Papryka', '1 sztuka'), Ingredient('Oliwa, kurkuma', 'do smaku')],
  steps: ['Kuskus zalej wrzątkiem, przykryj 5 min.', 'Kurczaka pokrój i smaż 8 min.', 'Dodaj warzywa, smaż 5 min.', 'Wymieszaj.'],
);
const _ryzomleko = Meal(
  name: 'Ryż smażony z jajkami',
  type: 'Obiad', kcal: 540, protein: 28, prepMins: 15,
  ingredients: [Ingredient('Ugotowany ryż (zimny)', '200 g'), Ingredient('Jajka', '3 sztuki'), Ingredient('Marchew', '1 sztuka'), Ingredient('Groszek mrożony', '100 g'), Ingredient('Sos sojowy', '2 łyżki'), Ingredient('Olej, czosnek', 'do smaku')],
  steps: ['Podsmaż czosnek i marchew.', 'Dodaj groszek i ryż.', 'Wbij jajka, szybko zamieszaj.', 'Polej sosem sojowym.'],
);
const _kotletZiemniaki = Meal(
  name: 'Kotlet schabowy z ziemniakami i surówką',
  type: 'Obiad', kcal: 620, protein: 46, prepMins: 35,
  ingredients: [Ingredient('Schab bez kości', '150 g'), Ingredient('Jajko', '1 sztuka'), Ingredient('Bułka tarta', '3 łyżki'), Ingredient('Ziemniaki', '250 g'), Ingredient('Kapusta kiszona', '150 g'), Ingredient('Marchew', '1 sztuka')],
  steps: ['Schab rozbij, obtocz w jajku i tartej bułce.', 'Smaż 4-5 min/stronę.', 'Ugotuj ziemniaki.', 'Surówka z marchewki i kapusty.'],
);
const _zupaPomidorowa = Meal(
  name: 'Zupa pomidorowa z makaronem',
  type: 'Obiad', kcal: 480, protein: 18, prepMins: 25,
  ingredients: [Ingredient('Passata pomidorowa', '500 ml'), Ingredient('Bulion', '600 ml'), Ingredient('Makaron', '80 g (suchy)'), Ingredient('Marchew', '2 sztuki'), Ingredient('Śmietana 12%', '3 łyżki')],
  steps: ['Marchew ugotuj w bulionie 15 min.', 'Wlej passatę, zagotuj.', 'Dodaj makaron.', 'Zahartuj śmietanę i dodaj.'],
);

// ── TYDZIEŃ 2 – OBIADY ────────────────────────────────────────────────────────

const _lososZiemniaki = Meal(
  name: 'Łosoś z ziemniakami i szparagami',
  type: 'Obiad', kcal: 620, protein: 48, prepMins: 25,
  ingredients: [Ingredient('Filet z łososia', '200 g'), Ingredient('Ziemniaki', '200 g'), Ingredient('Szparagi lub brokuł', '150 g'), Ingredient('Oliwa, czosnek, cytryna', 'do smaku')],
  steps: ['Ugotuj ziemniaki.', 'Łososia smaż na oliwie 5 min/stronę.', 'Szparagi ugotuj 5 min.', 'Podaj razem.'],
);
const _kurczakPomidorowy = Meal(
  name: 'Kurczak w sosie pomidorowym z ryżem',
  type: 'Obiad', kcal: 640, protein: 54, prepMins: 25,
  ingredients: [Ingredient('Pierś kurczaka', '200 g'), Ingredient('Pomidory z puszki', '400 g'), Ingredient('Cebula', '1 sztuka'), Ingredient('Czosnek', '3 ząbki'), Ingredient('Ryż', '100 g (suchy)'), Ingredient('Oregano, oliwa', 'do smaku')],
  steps: ['Ugotuj ryż.', 'Podsmaż cebulę i czosnek.', 'Dodaj kurczaka, smaż 5 min.', 'Wlej pomidory, gotuj 15 min.'],
);
const _chili = Meal(
  name: 'Chili con carne z ryżem',
  type: 'Obiad', kcal: 610, protein: 44, prepMins: 30,
  ingredients: [Ingredient('Mięso mielone', '150 g'), Ingredient('Fasola czerwona z puszki', '200 g'), Ingredient('Pomidory z puszki', '400 g'), Ingredient('Cebula, czosnek', 'do smaku'), Ingredient('Ryż', '80 g (suchy)'), Ingredient('Kumin, papryka, chili', 'do smaku')],
  steps: ['Ugotuj ryż.', 'Podsmaż cebulę i mięso.', 'Dodaj fasolę, pomidory i przyprawy.', 'Gotuj 20 min.'],
);
const _dorszWarzywa = Meal(
  name: 'Dorsz z warzywami i ziemniakami',
  type: 'Obiad', kcal: 560, protein: 46, prepMins: 25,
  ingredients: [Ingredient('Filet dorsza', '200 g'), Ingredient('Ziemniaki', '200 g'), Ingredient('Brokuł', '150 g'), Ingredient('Oliwa, koperek, sól', 'do smaku')],
  steps: ['Ugotuj ziemniaki i brokuł.', 'Dorsza upiecz w folii z oliwą 15 min w 180°C.', 'Podaj razem.'],
);
const _makaronSzpinak = Meal(
  name: 'Makaron z kurczakiem i szpinakiem',
  type: 'Obiad', kcal: 600, protein: 52, prepMins: 20,
  ingredients: [Ingredient('Makaron pełnoziarnisty', '100 g (suchy)'), Ingredient('Pierś kurczaka', '150 g'), Ingredient('Szpinak', '150 g'), Ingredient('Czosnek', '3 ząbki'), Ingredient('Śmietana 12%', '100 ml'), Ingredient('Parmezan', '20 g')],
  steps: ['Ugotuj makaron.', 'Usmaż kurczaka, dodaj szpinak i czosnek.', 'Dodaj śmietanę.', 'Wymieszaj z makaronem.'],
);
const _gulaszKasza = Meal(
  name: 'Gulasz wieprzowy z kaszą gryczaną',
  type: 'Obiad', kcal: 630, protein: 46, prepMins: 35,
  ingredients: [Ingredient('Wieprzowina', '150 g'), Ingredient('Kasza gryczana', '80 g (sucha)'), Ingredient('Cebula, marchew, pieczarki', 'do smaku'), Ingredient('Bulion', '400 ml'), Ingredient('Majeranek', 'do smaku')],
  steps: ['Ugotuj kaszę.', 'Mięso podsmaż ze wszystkich stron.', 'Dodaj warzywa i bulion.', 'Gotuj 25 min.'],
);
const _tikka = Meal(
  name: 'Kurczak tikka masala z ryżem',
  type: 'Obiad', kcal: 660, protein: 57, prepMins: 30,
  ingredients: [Ingredient('Pierś kurczaka', '200 g'), Ingredient('Jogurt', '3 łyżki'), Ingredient('Passata', '300 ml'), Ingredient('Cebula', '1 sztuka'), Ingredient('Garam masala, kurkuma, imbir', 'do smaku'), Ingredient('Śmietana', '2 łyżki'), Ingredient('Ryż', '100 g')],
  steps: ['Zamarynuj kurczaka w jogurcie z przyprawami.', 'Usmaż.', 'Podsmaż cebulę, dodaj passatę i śmietanę, gotuj 10 min.', 'Dodaj kurczaka. Podaj z ryżem.'],
);

// ── TYDZIEŃ 3 – OBIADY ────────────────────────────────────────────────────────

const _indykRyz = Meal(
  name: 'Pieczony indyk z warzywami i ryżem',
  type: 'Obiad', kcal: 620, protein: 58, prepMins: 30,
  ingredients: [Ingredient('Pierś indyka', '200 g'), Ingredient('Ryż', '100 g (suchy)'), Ingredient('Papryka, cukinia', 'do smaku'), Ingredient('Oliwa, zioła', 'do smaku')],
  steps: ['Ugotuj ryż.', 'Indyka pokrój, przypraw.', 'Usmaż z warzywami 12 min.', 'Podaj z ryżem.'],
);
const _bolognese = Meal(
  name: 'Spaghetti bolognese',
  type: 'Obiad', kcal: 600, protein: 42, prepMins: 30,
  ingredients: [Ingredient('Spaghetti pełnoziarniste', '100 g (suche)'), Ingredient('Mięso mielone', '150 g'), Ingredient('Pomidory z puszki', '400 g'), Ingredient('Cebula, czosnek, marchew', 'do smaku'), Ingredient('Oregano, oliwa', 'do smaku')],
  steps: ['Ugotuj makaron.', 'Podsmaż cebulę, czosnek i marchew.', 'Dodaj mięso.', 'Wlej pomidory, gotuj 20 min. Wymieszaj.'],
);
const _kurczakBatata = Meal(
  name: 'Kurczak z batatem i brokułem',
  type: 'Obiad', kcal: 610, protein: 52, prepMins: 30,
  ingredients: [Ingredient('Pierś kurczaka', '200 g'), Ingredient('Batat', '200 g'), Ingredient('Brokuł', '200 g'), Ingredient('Oliwa, papryka wędzona', 'do smaku')],
  steps: ['Batata piecz 25 min w 200°C.', 'Kurczaka smaż 6 min/stronę.', 'Brokuł ugotuj 5 min.', 'Podaj razem.'],
);
const _kremKurczak = Meal(
  name: 'Zupa krem z kurczakiem i warzywami',
  type: 'Obiad', kcal: 520, protein: 42, prepMins: 30,
  ingredients: [Ingredient('Pierś kurczaka', '150 g'), Ingredient('Marchew', '3 sztuki'), Ingredient('Ziemniaki', '150 g'), Ingredient('Śmietana 12%', '100 ml'), Ingredient('Bulion', '700 ml')],
  steps: ['Ugotuj warzywa z kurczakiem 20 min.', 'Wyjmij kurczaka, pokrój.', 'Zmiksuj zupę ze śmietaną.', 'Dodaj kurczaka z powrotem.'],
);
const _poledzwiczki = Meal(
  name: 'Polędwiczki wieprzowe z kaszą',
  type: 'Obiad', kcal: 640, protein: 54, prepMins: 25,
  ingredients: [Ingredient('Polędwiczki wieprzowe', '200 g'), Ingredient('Kasza gryczana', '80 g (sucha)'), Ingredient('Pieczarki', '150 g'), Ingredient('Cebula, masło, tymianek', 'do smaku')],
  steps: ['Ugotuj kaszę.', 'Polędwiczki smaż 4 min/stronę.', 'Usmaż cebulę i pieczarki.', 'Podaj razem.'],
);
const _makaronKrewetki = Meal(
  name: 'Makaron z krewetkami i czosnkiem',
  type: 'Obiad', kcal: 590, protein: 46, prepMins: 20,
  ingredients: [Ingredient('Makaron', '100 g (suchy)'), Ingredient('Krewetki (mrożone)', '200 g'), Ingredient('Czosnek', '3 ząbki'), Ingredient('Oliwa', '2 łyżki'), Ingredient('Chili, natka, cytryna', 'do smaku')],
  steps: ['Ugotuj makaron. Rozmroź krewetki.', 'Podsmaż czosnek z chili.', 'Dodaj krewetki, smaż 3 min.', 'Wymieszaj z makaronem.'],
);
const _tortillaKurczak = Meal(
  name: 'Tortilla z kurczakiem i warzywami',
  type: 'Obiad', kcal: 580, protein: 48, prepMins: 20,
  ingredients: [Ingredient('Tortilla pszenna', '2 sztuki'), Ingredient('Pierś kurczaka', '150 g'), Ingredient('Papryka, cebula', 'do smaku'), Ingredient('Ser żółty', '30 g'), Ingredient('Jogurt', '2 łyżki')],
  steps: ['Kurczaka smaż 6 min/stronę, pokrój.', 'Usmaż paprykę i cebulę.', 'Ułóż na tortilli z serem i jogurtem. Zawiń.'],
);

// ── TYDZIEŃ 4 – OBIADY ────────────────────────────────────────────────────────

const _pieczonePiersi = Meal(
  name: 'Pieczone piersi kurczaka z warzywami',
  type: 'Obiad', kcal: 600, protein: 58, prepMins: 35,
  ingredients: [Ingredient('Pierś kurczaka', '200 g'), Ingredient('Ziemniaki', '200 g'), Ingredient('Marchew, cukinia', 'do smaku'), Ingredient('Oliwa, czosnek, zioła', 'do smaku')],
  steps: ['Pokrój i dopraw oliwą z ziołami.', 'Piecz 200°C przez 30 min.'],
);
const _zupaSoczewica2 = Meal(
  name: 'Zupa pomidorowo-soczewicowa',
  type: 'Obiad', kcal: 570, protein: 36, prepMins: 30,
  ingredients: [Ingredient('Czerwona soczewica', '100 g'), Ingredient('Marchew, ziemniaki', 'do smaku'), Ingredient('Pomidory z puszki', '400 g'), Ingredient('Czosnek, cebula', 'do smaku'), Ingredient('Bulion', '800 ml'), Ingredient('Kminek, kurkuma', 'do smaku')],
  steps: ['Podsmaż cebulę i czosnek.', 'Dodaj warzywa i soczewicę.', 'Wlej pomidory i bulion.', 'Gotuj 20 min.'],
);
const _lososTeriyaki = Meal(
  name: 'Łosoś teriyaki z ryżem i brokułem',
  type: 'Obiad', kcal: 640, protein: 52, prepMins: 20,
  ingredients: [Ingredient('Filet z łososia', '200 g'), Ingredient('Ryż', '100 g (suchy)'), Ingredient('Brokuł', '200 g'), Ingredient('Sos sojowy', '2 łyżki'), Ingredient('Miód, czosnek, imbir', 'do smaku')],
  steps: ['Ugotuj ryż i brokuł.', 'Wymieszaj sos sojowy z miodem.', 'Zamarynuj łososia 5 min, smaż 5 min/stronę.', 'Podaj razem.'],
);
const _kurczakFasola = Meal(
  name: 'Kurczak z czerwoną fasolą i ryżem',
  type: 'Obiad', kcal: 630, protein: 56, prepMins: 25,
  ingredients: [Ingredient('Pierś kurczaka', '180 g'), Ingredient('Fasola czerwona z puszki', '200 g'), Ingredient('Ryż', '80 g (suchy)'), Ingredient('Pomidory z puszki', '200 g'), Ingredient('Cebula, kumin', 'do smaku')],
  steps: ['Ugotuj ryż.', 'Usmaż kurczaka, pokrój.', 'Dodaj fasolę, pomidory i przyprawy. Gotuj 10 min.'],
);
const _klopsiki = Meal(
  name: 'Klopsiki drobiowe w sosie pomidorowym',
  type: 'Obiad', kcal: 610, protein: 50, prepMins: 30,
  ingredients: [Ingredient('Mielone z kurczaka', '200 g'), Ingredient('Jajko', '1 sztuka'), Ingredient('Bułka tarta', '2 łyżki'), Ingredient('Makaron', '100 g (suchy)'), Ingredient('Passata', '300 ml'), Ingredient('Oregano', 'do smaku')],
  steps: ['Uformuj klopsiki, usmaż 8 min.', 'Zalej passatą, gotuj 10 min.', 'Podaj z ugotowanym makaronem.'],
);
const _kurczakGrzyby = Meal(
  name: 'Kurczak z grzybami i kaszą',
  type: 'Obiad', kcal: 580, protein: 50, prepMins: 25,
  ingredients: [Ingredient('Pierś kurczaka', '180 g'), Ingredient('Pieczarki', '200 g'), Ingredient('Kasza gryczana', '80 g (sucha)'), Ingredient('Cebula, śmietana', 'do smaku')],
  steps: ['Ugotuj kaszę.', 'Usmaż kurczaka.', 'Usmaż cebulę i pieczarki ze śmietaną.', 'Podaj razem.'],
);
const _kurczakQuinoa = Meal(
  name: 'Kurczak z quinoa i szpinakiem',
  type: 'Obiad', kcal: 620, protein: 54, prepMins: 25,
  ingredients: [Ingredient('Pierś kurczaka', '180 g'), Ingredient('Quinoa', '80 g (sucha)'), Ingredient('Szpinak', '150 g'), Ingredient('Czosnek, oliwa, cytryna', 'do smaku'), Ingredient('Feta', '30 g')],
  steps: ['Ugotuj quinoa (2:1 woda, 15 min).', 'Usmaż kurczaka.', 'Podsmaż szpinak z czosnkiem.', 'Wymieszaj, skrop cytryną, posyp fetą.'],
);

// ── TYDZIEŃ 1 – KOLACJE ───────────────────────────────────────────────────────

const _omletWarzywny = Meal(
  name: 'Omlet warzywny z serem',
  type: 'Kolacja', kcal: 430, protein: 32, prepMins: 10,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Szpinak', '80 g'), Ingredient('Pomidor', '1 sztuka'), Ingredient('Ser żółty', '30 g'), Ingredient('Oliwa, sól', 'do smaku')],
  steps: ['Roztrzep jajka.', 'Podsmaż szpinak 2 min, wylej jajka.', 'Ułóż pomidora i ser. Złóż na pół.'],
);
const _kanapkiTwarog = Meal(
  name: 'Kanapki z twarogiem i rzodkiewką',
  type: 'Kolacja', kcal: 360, protein: 28, prepMins: 5,
  ingredients: [Ingredient('Chleb razowy', '3 kromki'), Ingredient('Twaróg chudy', '200 g'), Ingredient('Rzodkiewka', '6 sztuk'), Ingredient('Szczypiorek', 'pęczek')],
  steps: ['Wymieszaj twaróg ze szczypiorkiem.', 'Posmaruj chleb.', 'Ułóż rzodkiewki.'],
);
const _salatkaTunczyk = Meal(
  name: 'Sałatka z tuńczykiem i jajkiem',
  type: 'Kolacja', kcal: 400, protein: 42, prepMins: 10,
  ingredients: [Ingredient('Tuńczyk w wodzie', '160 g'), Ingredient('Jajka na twardo', '2 sztuki'), Ingredient('Sałata mieszana', '100 g'), Ingredient('Pomidor, ogórek', 'do smaku'), Ingredient('Oliwa, cytryna', 'do smaku')],
  steps: ['Sałatę porwij, dodaj warzywa.', 'Ułóż tuńczyka i jajka.', 'Skrop oliwą i cytryną.'],
);
const _kurczakSalatka = Meal(
  name: 'Grillowany kurczak z sałatką',
  type: 'Kolacja', kcal: 420, protein: 45, prepMins: 15,
  ingredients: [Ingredient('Pierś kurczaka', '150 g'), Ingredient('Sałata', '100 g'), Ingredient('Pomidor, ogórek', 'do smaku'), Ingredient('Oliwa, cytryna', 'do smaku')],
  steps: ['Kurczaka smaż bez tłuszczu 5-6 min/stronę, pokrój.', 'Wymieszaj warzywa z oliwą.', 'Ułóż kurczaka.'],
);
const _kanapkiJajkoSadzone = Meal(
  name: 'Jajka sadzone z chlebem i pomidorem',
  type: 'Kolacja', kcal: 390, protein: 26, prepMins: 8,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Chleb razowy', '2 kromki'), Ingredient('Pomidor', '1 sztuka'), Ingredient('Masło, sól', 'do smaku')],
  steps: ['Usmaż jajka sadzone na maśle 3-4 min.', 'Podaj z chlebem i pomidorem.'],
);
const _zupaDyniowa = Meal(
  name: 'Krem z dyni z grzankami',
  type: 'Kolacja', kcal: 360, protein: 10, prepMins: 20,
  ingredients: [Ingredient('Dynia (mrożona)', '400 g'), Ingredient('Marchew', '2 sztuki'), Ingredient('Śmietanka 12%', '100 ml'), Ingredient('Bulion', '500 ml'), Ingredient('Chleb razowy (grzanki)', '2 kromki')],
  steps: ['Podsmaż marchew z cebulą.', 'Dodaj dynię i bulion, gotuj 15 min.', 'Zmiksuj ze śmietanką.', 'Podaj z grzankami.'],
);
const _omletTwarog = Meal(
  name: 'Omlet z twarogiem i szczypiorkiem',
  type: 'Kolacja', kcal: 380, protein: 34, prepMins: 8,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Twaróg chudy', '100 g'), Ingredient('Szczypiorek', 'pęczek'), Ingredient('Oliwa', '1 łyżeczka')],
  steps: ['Roztrzep jajka z twarogiem i szczypiorkiem.', 'Wylej na oliwę, smaż 3 min.', 'Złóż na pół.'],
);

// ── TYDZIEŃ 2 – KOLACJE ───────────────────────────────────────────────────────

const _salaGrillCukinia = Meal(
  name: 'Sałatka z grillowaną cukinią i fetą',
  type: 'Kolacja', kcal: 380, protein: 20, prepMins: 15,
  ingredients: [Ingredient('Cukinia', '1 sztuka'), Ingredient('Feta', '80 g'), Ingredient('Sałata', '100 g'), Ingredient('Pomidor', '1 sztuka'), Ingredient('Oliwa, ocet balsamiczny', 'do smaku')],
  steps: ['Cukinię grilluj 3 min/stronę.', 'Wymieszaj sałatę z pomidorem i cukinią.', 'Pokrusz fetę, polej oliwą.'],
);
const _zupaSzpinakowa = Meal(
  name: 'Zupa krem ze szpinakiem',
  type: 'Kolacja', kcal: 380, protein: 18, prepMins: 20,
  ingredients: [Ingredient('Szpinak', '300 g'), Ingredient('Ziemniaki', '150 g'), Ingredient('Śmietana 12%', '100 ml'), Ingredient('Bulion', '600 ml'), Ingredient('Chleb razowy', '2 kromki')],
  steps: ['Podsmaż cebulę z czosnkiem.', 'Dodaj ziemniaki i bulion, gotuj 15 min.', 'Dodaj szpinak, zmiksuj.', 'Podaj z grzankami.'],
);
const _kanapkiLosos = Meal(
  name: 'Kanapki z łososiem wędzonym',
  type: 'Kolacja', kcal: 420, protein: 32, prepMins: 5,
  ingredients: [Ingredient('Łosoś wędzony', '120 g'), Ingredient('Chleb razowy', '3 kromki'), Ingredient('Twaróg chudy', '80 g'), Ingredient('Ogórek, koperek, cytryna', 'do smaku')],
  steps: ['Wymieszaj twaróg z koperkiem i cytryną.', 'Posmaruj chleb.', 'Ułóż łososia i ogórek.'],
);
const _jajkaNaParze = Meal(
  name: 'Jajka z sałatką warzywną',
  type: 'Kolacja', kcal: 390, protein: 26, prepMins: 10,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Sałata, ogórek, papryka', 'do smaku'), Ingredient('Oliwa, ocet', 'do smaku')],
  steps: ['Ugotuj jajka.', 'Pokrój warzywa z oliwą i octem.', 'Ułóż jajka na sałatce.'],
);
const _kurczakFasZel = Meal(
  name: 'Kurczak z fasolką szparagową',
  type: 'Kolacja', kcal: 430, protein: 42, prepMins: 20,
  ingredients: [Ingredient('Pierś kurczaka', '150 g'), Ingredient('Fasolka szparagowa', '200 g'), Ingredient('Pomidory', '2 sztuki'), Ingredient('Czosnek, oliwa', 'do smaku')],
  steps: ['Kurczaka pokrój, smaż 6 min.', 'Fasolkę ugotuj z czosnkiem.', 'Dodaj pomidory, smaż 3 min.', 'Wymieszaj.'],
);
const _twarogSzpinak = Meal(
  name: 'Twaróg ze szpinakiem i pestkami',
  type: 'Kolacja', kcal: 380, protein: 34, prepMins: 8,
  ingredients: [Ingredient('Twaróg chudy', '200 g'), Ingredient('Szpinak baby', '80 g'), Ingredient('Pestki słonecznika', '20 g'), Ingredient('Czosnek, oliwa', 'do smaku'), Ingredient('Chleb razowy', '1 kromka')],
  steps: ['Szpinak podsmaż z czosnkiem 2 min.', 'Wymieszaj z twarogiem.', 'Posyp pestkami.'],
);
const _omletPieczarki = Meal(
  name: 'Omlet z pieczarkami i serem',
  type: 'Kolacja', kcal: 400, protein: 32, prepMins: 10,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Pieczarki', '150 g'), Ingredient('Ser żółty', '30 g'), Ingredient('Cebula, oliwa', 'do smaku')],
  steps: ['Podsmaż cebulę i pieczarki 5 min.', 'Wylej jajka.', 'Ułóż pieczarki i ser. Złóż na pół.'],
);

// ── TYDZIEŃ 3 – KOLACJE ───────────────────────────────────────────────────────

const _salatCezar = Meal(
  name: 'Sałatka cezar z kurczakiem',
  type: 'Kolacja', kcal: 430, protein: 36, prepMins: 15,
  ingredients: [Ingredient('Pierś kurczaka', '150 g'), Ingredient('Sałata romana', '100 g'), Ingredient('Grzanki razowe', '30 g'), Ingredient('Parmezan', '20 g'), Ingredient('Jogurt + czosnek + cytryna', '2 łyżki')],
  steps: ['Usmaż kurczaka, pokrój.', 'Wymieszaj sałatę z sosem.', 'Ułóż kurczaka, grzanki i parmezan.'],
);
const _wrapTunczyk = Meal(
  name: 'Wrap z tuńczykiem i warzywami',
  type: 'Kolacja', kcal: 400, protein: 32, prepMins: 8,
  ingredients: [Ingredient('Tortilla pszenna', '1 sztuka'), Ingredient('Tuńczyk w wodzie', '130 g'), Ingredient('Majonez light', '1 łyżka'), Ingredient('Sałata, pomidor, ogórek', 'do smaku')],
  steps: ['Odsącz tuńczyka, wymieszaj z majonezem.', 'Ułóż na tortilli z warzywami.', 'Zawiń.'],
);
const _kremBrokul = Meal(
  name: 'Krem z brokułów z grzankami',
  type: 'Kolacja', kcal: 360, protein: 16, prepMins: 20,
  ingredients: [Ingredient('Brokuł', '400 g'), Ingredient('Ziemniaki', '100 g'), Ingredient('Śmietana 12%', '100 ml'), Ingredient('Bulion', '600 ml'), Ingredient('Grzanki razowe', '2 kromki')],
  steps: ['Ugotuj brokuł i ziemniaki w bulionie.', 'Zmiksuj ze śmietaną.', 'Podaj z grzankami.'],
);
const _jajkaTwarogPolski = Meal(
  name: 'Jajka z twarogiem i ziołami',
  type: 'Kolacja', kcal: 410, protein: 34, prepMins: 10,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Twaróg chudy', '100 g'), Ingredient('Szczypiorek, koperek', 'pęczek'), Ingredient('Chleb razowy', '2 kromki')],
  steps: ['Roztrzep jajka z twarogiem i ziołami.', 'Smaż jak jajecznicę.', 'Podaj z chlebem.'],
);
const _kurczakMusztarda = Meal(
  name: 'Kurczak w sosie musztardowym',
  type: 'Kolacja', kcal: 440, protein: 40, prepMins: 20,
  ingredients: [Ingredient('Pierś kurczaka', '150 g'), Ingredient('Musztarda', '1 łyżka'), Ingredient('Śmietana 12%', '50 ml'), Ingredient('Czosnek', '2 ząbki'), Ingredient('Brokuł lub marchew', '150 g')],
  steps: ['Usmaż kurczaka.', 'Wymieszaj musztardę ze śmietaną i czosnkiem.', 'Polej kurczaka sosem.', 'Warzywa ugotuj osobno.'],
);
const _kanapkiMakrela = Meal(
  name: 'Kanapki z pastą z makreli',
  type: 'Kolacja', kcal: 430, protein: 32, prepMins: 8,
  ingredients: [Ingredient('Makrela wędzona', '120 g'), Ingredient('Chleb razowy', '2 kromki'), Ingredient('Jogurt naturalny', '50 g'), Ingredient('Ogórek, koperek, cytryna', 'do smaku')],
  steps: ['Rozdrobnij makrelę, wymieszaj z jogurtem i cytryną.', 'Posmaruj chleb.', 'Ułóż ogórek.'],
);
const _rybaDuszona = Meal(
  name: 'Mintaj duszony z warzywami',
  type: 'Kolacja', kcal: 400, protein: 38, prepMins: 20,
  ingredients: [Ingredient('Mintaj lub dorsz', '200 g'), Ingredient('Marchew', '2 sztuki'), Ingredient('Pomidory z puszki', '200 g'), Ingredient('Czosnek, cebula, koperek', 'do smaku')],
  steps: ['Podsmaż cebulę i marchew 5 min.', 'Dodaj pomidory.', 'Ułóż rybę, duś pod przykrywką 12 min.'],
);

// ── TYDZIEŃ 4 – KOLACJE ───────────────────────────────────────────────────────

const _salatkaGrecka = Meal(
  name: 'Sałatka grecka z fetą i jajkiem',
  type: 'Kolacja', kcal: 380, protein: 22, prepMins: 10,
  ingredients: [Ingredient('Feta', '80 g'), Ingredient('Sałata', '100 g'), Ingredient('Pomidory', '2 sztuki'), Ingredient('Ogórek, oliwki', 'do smaku'), Ingredient('Jajka', '2 sztuki'), Ingredient('Oliwa, oregano', 'do smaku')],
  steps: ['Ugotuj jajka.', 'Pokrój warzywa, wymieszaj z oliwą.', 'Pokrusz fetę, dodaj jajka.'],
);
const _kremPapryki = Meal(
  name: 'Zupa krem z czerwonej papryki',
  type: 'Kolacja', kcal: 360, protein: 12, prepMins: 25,
  ingredients: [Ingredient('Papryka czerwona', '3 sztuki'), Ingredient('Ziemniaki', '150 g'), Ingredient('Śmietana 12%', '100 ml'), Ingredient('Bulion', '600 ml'), Ingredient('Grzanki', '2 kromki')],
  steps: ['Papryki piecz 20 min w 200°C, obierz.', 'Zmiksuj z ziemniakami i bulionem.', 'Dodaj śmietanę. Podaj z grzankami.'],
);
const _wrapKurczakAwokado = Meal(
  name: 'Wrap z kurczakiem i awokado',
  type: 'Kolacja', kcal: 450, protein: 36, prepMins: 15,
  ingredients: [Ingredient('Tortilla pszenna', '1 sztuka'), Ingredient('Pierś kurczaka', '150 g'), Ingredient('Awokado', '½ sztuki'), Ingredient('Sałata, pomidor, cytryna', 'do smaku')],
  steps: ['Usmaż kurczaka, pokrój.', 'Awokado rozgnieć.', 'Ułóż na tortilli. Zawiń.'],
);
const _omletLosos = Meal(
  name: 'Omlet z łososiem wędzonym',
  type: 'Kolacja', kcal: 410, protein: 34, prepMins: 10,
  ingredients: [Ingredient('Jajka', '3 sztuki'), Ingredient('Łosoś wędzony', '80 g'), Ingredient('Twaróg chudy', '50 g'), Ingredient('Szczypiorek, oliwa', 'do smaku')],
  steps: ['Roztrzep jajka z twarogiem.', 'Wylej na oliwę.', 'Ułóż łososia. Złóż na pół.'],
);
const _kapustaMielona = Meal(
  name: 'Kapusta duszona z mięsem mielonym',
  type: 'Kolacja', kcal: 420, protein: 34, prepMins: 30,
  ingredients: [Ingredient('Kapusta biała', '300 g'), Ingredient('Mięso mielone drobiowe', '150 g'), Ingredient('Marchew', '1 sztuka'), Ingredient('Pomidory z puszki', '200 g'), Ingredient('Kminek, sól', 'do smaku')],
  steps: ['Podsmaż cebulę z mięsem.', 'Dodaj marchew i kapustę.', 'Wlej pomidory.', 'Duś 20 min.'],
);
const _kanapkiJajkoSer = Meal(
  name: 'Kanapki z jajkiem i serem żółtym',
  type: 'Kolacja', kcal: 400, protein: 28, prepMins: 10,
  ingredients: [Ingredient('Jajka', '2 sztuki'), Ingredient('Ser żółty', '40 g'), Ingredient('Chleb razowy', '2 kromki'), Ingredient('Sałata, pomidor, musztarda', 'do smaku')],
  steps: ['Ugotuj jajka na twardo.', 'Posmaruj chleb musztardą.', 'Ułóż sałatę, jajko, ser i pomidora.'],
);
const _twarogPomidor = Meal(
  name: 'Twaróg z pomidorem i oliwkami',
  type: 'Kolacja', kcal: 370, protein: 30, prepMins: 5,
  ingredients: [Ingredient('Twaróg chudy', '200 g'), Ingredient('Pomidory', '2 sztuki'), Ingredient('Oliwki', '30 g'), Ingredient('Oliwa, bazylia', 'do smaku'), Ingredient('Chleb razowy', '1 kromka')],
  steps: ['Pokrój pomidory i oliwki.', 'Wymieszaj z twarogiem i oliwą.', 'Podaj z chlebem.'],
);

// ── PRZEKĄSKI – WSZYSTKIE 4 TYGODNIE ─────────────────────────────────────────

const _twarogJablko = Meal(name: 'Twaróg z jabłkiem i cynamonem', type: 'Przekąska', kcal: 220, protein: 22, prepMins: 3, ingredients: [Ingredient('Twaróg chudy', '150 g'), Ingredient('Jabłko', '1 sztuka'), Ingredient('Cynamon', 'szczypta')], steps: ['Pokrój jabłko, wymieszaj z twarogiem.']);
const _orzechyBanan = Meal(name: 'Orzechy z bananem', type: 'Przekąska', kcal: 250, protein: 7, prepMins: 1, ingredients: [Ingredient('Mieszane orzechy', '30 g'), Ingredient('Banan', '1 sztuka')], steps: ['Pokrój banana, zjedz z orzechami.']);
const _jogurtNaturalny = Meal(name: 'Jogurt naturalny z miodem', type: 'Przekąska', kcal: 180, protein: 12, prepMins: 1, ingredients: [Ingredient('Jogurt naturalny 2%', '200 g'), Ingredient('Miód', '1 łyżeczka')], steps: ['Skrop miodem.']);
const _kanapkaMasloOrzechowe = Meal(name: 'Kanapka z masłem orzechowym', type: 'Przekąska', kcal: 240, protein: 9, prepMins: 2, ingredients: [Ingredient('Chleb razowy', '1 kromka'), Ingredient('Masło orzechowe', '1.5 łyżki')], steps: ['Posmaruj chleb.']);
const _jajkoTwardo = Meal(name: 'Jajko na twardo z warzywkami', type: 'Przekąska', kcal: 150, protein: 13, prepMins: 10, ingredients: [Ingredient('Jajka', '2 sztuki'), Ingredient('Pomidor lub ogórek', '1 sztuka')], steps: ['Ugotuj jajka 8 min.', 'Podaj z warzywem.']);
const _marchewHummus = Meal(name: 'Marchewka z hummusem', type: 'Przekąska', kcal: 160, protein: 5, prepMins: 5, ingredients: [Ingredient('Marchew', '2 sztuki'), Ingredient('Hummus', '50 g')], steps: ['Pokrój marchewki w słupki. Maczaj.']);
const _orzechyMigdaly = Meal(name: 'Garść migdałów', type: 'Przekąska', kcal: 190, protein: 6, prepMins: 0, ingredients: [Ingredient('Migdały niesolone', '30 g')], steps: ['Gotowe.']);
const _serOgurek = Meal(name: 'Ser żółty z ogórkiem', type: 'Przekąska', kcal: 200, protein: 14, prepMins: 2, ingredients: [Ingredient('Ser żółty', '50 g'), Ingredient('Ogórek', '½ sztuki'), Ingredient('Chleb razowy', '1 kromka')], steps: ['Pokrój ser i ogórek.']);
const _ricesCakeMaslo = Meal(name: 'Wafle ryżowe z masłem orzechowym', type: 'Przekąska', kcal: 230, protein: 8, prepMins: 2, ingredients: [Ingredient('Wafle ryżowe', '3 sztuki'), Ingredient('Masło orzechowe', '2 łyżki')], steps: ['Posmaruj wafle.']);
const _twarogRzodkiewka = Meal(name: 'Twaróg z rzodkiewką', type: 'Przekąska', kcal: 180, protein: 22, prepMins: 3, ingredients: [Ingredient('Twaróg chudy', '150 g'), Ingredient('Rzodkiewka', '5 sztuk')], steps: ['Pokrój rzodkiewki, wymieszaj z twarogiem.']);
const _owocJogurt = Meal(name: 'Owoce z jogurtem', type: 'Przekąska', kcal: 200, protein: 12, prepMins: 2, ingredients: [Ingredient('Jogurt naturalny', '150 g'), Ingredient('Owoce sezonowe', '150 g')], steps: ['Wymieszaj.']);
const _pestkiDyni = Meal(name: 'Pestki dyni z morelami', type: 'Przekąska', kcal: 210, protein: 7, prepMins: 0, ingredients: [Ingredient('Pestki dyni', '25 g'), Ingredient('Suszone morele', '30 g')], steps: ['Gotowe.']);
const _koktajlTrusk2 = Meal(name: 'Koktajl truskawkowy', type: 'Przekąska', kcal: 180, protein: 14, prepMins: 3, ingredients: [Ingredient('Twaróg chudy', '100 g'), Ingredient('Truskawki', '100 g'), Ingredient('Mleko', '100 ml')], steps: ['Zmiksuj.']);
const _jajkoTwardo2 = Meal(name: 'Jajka na twardo z pomidorem', type: 'Przekąska', kcal: 150, protein: 13, prepMins: 10, ingredients: [Ingredient('Jajka', '2 sztuki'), Ingredient('Pomidor', '1 sztuka')], steps: ['Ugotuj 8 min.']);
const _kanapkaTunek = Meal(name: 'Kanapka z tuńczykiem', type: 'Przekąska', kcal: 220, protein: 18, prepMins: 5, ingredients: [Ingredient('Chleb razowy', '1 kromka'), Ingredient('Tuńczyk w wodzie', '80 g'), Ingredient('Ogórek', '¼ sztuki')], steps: ['Ułóż tuńczyka na chlebie.']);
const _jogurtGreckiOwoc = Meal(name: 'Jogurt grecki z owocami', type: 'Przekąska', kcal: 210, protein: 18, prepMins: 2, ingredients: [Ingredient('Jogurt grecki 0%', '150 g'), Ingredient('Owoce', '100 g')], steps: ['Wymieszaj.']);
const _migdaly = Meal(name: 'Migdały z rodzynkami', type: 'Przekąska', kcal: 200, protein: 6, prepMins: 0, ingredients: [Ingredient('Migdały', '25 g'), Ingredient('Rodzynki', '20 g')], steps: ['Wymieszaj.']);
const _twarogOgurek = Meal(name: 'Twaróg z ogórkiem i koperkiem', type: 'Przekąska', kcal: 170, protein: 20, prepMins: 3, ingredients: [Ingredient('Twaróg chudy', '150 g'), Ingredient('Ogórek', '½ sztuki'), Ingredient('Koperek', 'pęczek')], steps: ['Pokrój ogórek, wymieszaj z twarogiem.']);
const _gruszkaSerChudy = Meal(name: 'Gruszka z twarogiem', type: 'Przekąska', kcal: 180, protein: 8, prepMins: 2, ingredients: [Ingredient('Gruszka', '1 sztuka'), Ingredient('Twaróg ziarnisty', '100 g')], steps: ['Pokrój gruszkę.']);
const _koktajlBanMleko = Meal(name: 'Koktajl bananowy', type: 'Przekąska', kcal: 220, protein: 15, prepMins: 3, ingredients: [Ingredient('Banan', '1 sztuka'), Ingredient('Mleko 2%', '200 ml'), Ingredient('Twaróg', '50 g')], steps: ['Zmiksuj.']);
const _marchewSeler = Meal(name: 'Marchewka z sosem jogurtowym', type: 'Przekąska', kcal: 150, protein: 8, prepMins: 3, ingredients: [Ingredient('Marchew', '2 sztuki'), Ingredient('Jogurt naturalny', '100 g'), Ingredient('Czosnek, koperek', 'do smaku')], steps: ['Zetrzyj czosnek do jogurtu.', 'Marchew pokrój w słupki.']);
const _hummusChleb = Meal(name: 'Hummus z pieczywem', type: 'Przekąska', kcal: 220, protein: 8, prepMins: 2, ingredients: [Ingredient('Hummus', '60 g'), Ingredient('Pieczywo razowe', '2 kromki')], steps: ['Posmaruj chleb hummusem.']);
const _jablkoMasloOrzech = Meal(name: 'Jabłko z masłem orzechowym', type: 'Przekąska', kcal: 240, protein: 7, prepMins: 2, ingredients: [Ingredient('Jabłko', '1 sztuka'), Ingredient('Masło orzechowe', '1.5 łyżki')], steps: ['Pokrój jabłko. Maczaj.']);
const _jogurtSiemie = Meal(name: 'Jogurt z siemieniem lnianym', type: 'Przekąska', kcal: 190, protein: 12, prepMins: 2, ingredients: [Ingredient('Jogurt naturalny 2%', '200 g'), Ingredient('Siemię lniane', '1 łyżka'), Ingredient('Miód', '1 łyżeczka')], steps: ['Wymieszaj.']);
const _twarogWarzywaS = Meal(name: 'Twaróg z papryką', type: 'Przekąska', kcal: 180, protein: 20, prepMins: 3, ingredients: [Ingredient('Twaróg chudy', '150 g'), Ingredient('Papryka', '½ sztuki'), Ingredient('Ogórek', '¼ sztuki')], steps: ['Pokrój warzywa. Jedz z twarogiem.']);
const _orzechyBrazyl = Meal(name: 'Orzechy z bananem', type: 'Przekąska', kcal: 250, protein: 6, prepMins: 1, ingredients: [Ingredient('Orzechy brazylijskie', '20 g'), Ingredient('Banan', '1 sztuka')], steps: ['Gotowe.']);
const _suszoneSliwki = Meal(name: 'Suszone śliwki z orzechami', type: 'Przekąska', kcal: 200, protein: 4, prepMins: 0, ingredients: [Ingredient('Suszone śliwki', '50 g'), Ingredient('Orzechy włoskie', '20 g')], steps: ['Gotowe.']);
const _omletMini = Meal(name: 'Mini omlet białkowy', type: 'Przekąska', kcal: 180, protein: 18, prepMins: 5, ingredients: [Ingredient('Białka jaj', '3 sztuki'), Ingredient('Ser żółty', '20 g')], steps: ['Roztrzep białka.', 'Smaż 3 min.', 'Posyp serem.']);

// ── JADŁOSPIS 4 TYGODNIE (28 dni) ────────────────────────────────────────────

const List<DayMeals> weeklyMeals = [
  // TYDZIEŃ 1
  DayMeals(dayName: 'Poniedziałek', breakfast: _owsianka, lunch: _kurczakRyz, dinner: _omletWarzywny, snack: _twarogJablko),
  DayMeals(dayName: 'Wtorek', breakfast: _jajecznica, lunch: _makaronTunczyk, dinner: _kanapkiTwarog, snack: _orzechyBanan),
  DayMeals(dayName: 'Środa', breakfast: _twarogOwocowy, lunch: _zupaSoczewica, dinner: _salatkaTunczyk, snack: _jogurtNaturalny),
  DayMeals(dayName: 'Czwartek', breakfast: _kanapkiJajko, lunch: _kurczakKuskus, dinner: _kurczakSalatka, snack: _kanapkaMasloOrzechowe),
  DayMeals(dayName: 'Piątek', breakfast: _jogurtGranola, lunch: _ryzomleko, dinner: _kanapkiJajkoSadzone, snack: _jajkoTwardo),
  DayMeals(dayName: 'Sobota', breakfast: _nalesniki, lunch: _kotletZiemniaki, dinner: _zupaDyniowa, snack: _marchewHummus),
  DayMeals(dayName: 'Niedziela', breakfast: _koktajlBialkowy, lunch: _zupaPomidorowa, dinner: _omletTwarog, snack: _orzechyMigdaly),
  // TYDZIEŃ 2
  DayMeals(dayName: 'Poniedziałek', breakfast: _lososTost, lunch: _lososZiemniaki, dinner: _salaGrillCukinia, snack: _serOgurek),
  DayMeals(dayName: 'Wtorek', breakfast: _owsiankaJablko, lunch: _kurczakPomidorowy, dinner: _zupaSzpinakowa, snack: _ricesCakeMaslo),
  DayMeals(dayName: 'Środa', breakfast: _jajkaZSzynka, lunch: _chili, dinner: _kanapkiLosos, snack: _twarogRzodkiewka),
  DayMeals(dayName: 'Czwartek', breakfast: _twarozekNaSlono, lunch: _dorszWarzywa, dinner: _jajkaNaParze, snack: _owocJogurt),
  DayMeals(dayName: 'Piątek', breakfast: _pancakes, lunch: _makaronSzpinak, dinner: _kurczakFasZel, snack: _pestkiDyni),
  DayMeals(dayName: 'Sobota', breakfast: _smoothieBowl, lunch: _gulaszKasza, dinner: _twarogSzpinak, snack: _koktajlTrusk2),
  DayMeals(dayName: 'Niedziela', breakfast: _kanapkiSzpinak, lunch: _tikka, dinner: _omletPieczarki, snack: _jajkoTwardo2),
  // TYDZIEŃ 3
  DayMeals(dayName: 'Poniedziałek', breakfast: _jajkaKoszulce, lunch: _indykRyz, dinner: _salatCezar, snack: _kanapkaTunek),
  DayMeals(dayName: 'Wtorek', breakfast: _owsiankaCzek, lunch: _bolognese, dinner: _wrapTunczyk, snack: _jogurtGreckiOwoc),
  DayMeals(dayName: 'Środa', breakfast: _pastaJajeczna, lunch: _kurczakBatata, dinner: _kremBrokul, snack: _migdaly),
  DayMeals(dayName: 'Czwartek', breakfast: _jogurtOrzechy, lunch: _kremKurczak, dinner: _jajkaTwarogPolski, snack: _twarogOgurek),
  DayMeals(dayName: 'Piątek', breakfast: _shakshuka, lunch: _poledzwiczki, dinner: _kurczakMusztarda, snack: _gruszkaSerChudy),
  DayMeals(dayName: 'Sobota', breakfast: _koktajlTrusk, lunch: _makaronKrewetki, dinner: _kanapkiMakrela, snack: _koktajlBanMleko),
  DayMeals(dayName: 'Niedziela', breakfast: _tostTunczyk, lunch: _tortillaKurczak, dinner: _rybaDuszona, snack: _marchewSeler),
  // TYDZIEŃ 4
  DayMeals(dayName: 'Poniedziałek', breakfast: _ryzoMleko, lunch: _pieczonePiersi, dinner: _salatkaGrecka, snack: _hummusChleb),
  DayMeals(dayName: 'Wtorek', breakfast: _jajecznicaSzynka, lunch: _zupaSoczewica2, dinner: _kremPapryki, snack: _jablkoMasloOrzech),
  DayMeals(dayName: 'Środa', breakfast: _owsiankaDaktyle, lunch: _lososTeriyaki, dinner: _wrapKurczakAwokado, snack: _jogurtSiemie),
  DayMeals(dayName: 'Czwartek', breakfast: _twarogWarzywa, lunch: _kurczakFasola, dinner: _omletLosos, snack: _twarogWarzywaS),
  DayMeals(dayName: 'Piątek', breakfast: _gofryOwsiane, lunch: _klopsiki, dinner: _kapustaMielona, snack: _orzechyBrazyl),
  DayMeals(dayName: 'Sobota', breakfast: _koktajlJogurt, lunch: _kurczakGrzyby, dinner: _kanapkiJajkoSer, snack: _suszoneSliwki),
  DayMeals(dayName: 'Niedziela', breakfast: _kanapkiCiecierzyca, lunch: _kurczakQuinoa, dinner: _twarogPomidor, snack: _omletMini),
];

DayMeals getMealsForDay(int programDay) {
  if (programDay <= 0) return weeklyMeals[DateTime.now().weekday - 1];
  return weeklyMeals[(programDay - 1) % 28];
}

DayMeals getMealsByIndex(int index) => weeklyMeals[index % 28];
