-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 17 2018 г., 08:48
-- Версия сервера: 5.7.16
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `school27kz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `main` int(11) NOT NULL,
  `menu` int(11) DEFAULT NULL,
  `caption` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content`
--

INSERT INTO `content` (`id`, `main`, `menu`, `caption`, `text`, `author`, `date`) VALUES
(3, 11, 1, 'Lego mindstorms', 'LEGO Mindstorms - bag\'darlamalanatyn robot jasay\' u\'s\'іn di\'zai\'ner (i\'nterfei\'s bo\'lіkterі men elektrondyq komponentter ji\'yntyg\'y).\r\n<center><img id=\"content_img\" src=\"content/images/lego_mindstorms.jpg\"></center>\r\nLEGO standartty bo\'ls\'ekterі (arqalyqtar, oster, do\'n\'gelekter, tіstі servopri\'vody) ja\'ne datc\'i\'kterdі turatyn ji\'yntyg\'y, qozg\'altqys\'tar, ja\'ne bag\'darlamalanatyn bіrlіgі ji\'yntyg\'ymen jabdyqtalg\'an ji\'yntyqtar LEGO Mindstorms. Ji\'naqtar negіzgі ja\'ne resy\'rsqa bo\'lіnedі.\r\n\r\nNXT bazalyq ji\'yntyg\'y u\'s\' nusqalarynda jetkіzіledі: 8527 LEGO MINDSTORMS NXT - kommertsi\'i\'alyq ji\'naqtyn\' alg\'as\'qy nusqasy, 577 bo\'ls\'ekter, o\'ndіrіste 2006 jyldyn\'; 9797 LEGO MINDSTORMS Bіlіm bery\' NXT bazalyq ji\'yntyg\'y - oqy\' ji\'yntyg\'y, 431 bo\'lіk, 2006 jyly s\'yg\'arylg\'an; 8547 LEGO MINDSTORMS NXT 2.0 - kommertsi\'i\'alyq ji\'naqtyn\' ekіns\'і nusqasy, 619 dana, 2009 jylg\'y (ol dep ko\'redі, nemese - «kіrpіs\'») Barlyq u\'s\' ji\'yntyg\'y NXT sol boljaldy blok nusqasyn qamti\'dy, tu\'i\'іnіne nusqasy g\'ana ereks\'elenedі bіraq bul man\'yzdy emes, o\'i\'tkenі mi\'krobag\'darlamany on\'ai\' jan\'arty\'g\'a bolady. Sondyqtan barlyq u\'s\' ji\'yntyqqa mu\'ldem uqsas. Resy\'rstyq ji\'yntyqtar, sondai\'-aq bar: 9648 ja\'ne 9695 LEGO MINDSTORMS Education Resy\'rs ji\'nag\'y - Resource Kit ko\'p tu\'rlerі men bo\'ls\'ekter sanyn qamti\'dy ortas\'a resy\'rs ji\'yntyg\'y, 817 bo\'ls\'ekter 2010 jyldyn\'. Ekі ji\'yntyg\'y da robotty jarystarda ba\'sekege tu\'se alady (mysaly, Du\'ni\'eju\'zіlіk robot oli\'mpi\'adasynda).\r\n\r\n2013 jyly LEGO MINDSTORMS EV3 jan\'a urpag\'y s\'yg\'aryldy. - u\'i\' nusqasy (bo\'lіgі 601), 45544 - mektep bazalyq ji\'yntyg\'y (element 541) nusqasy ja\'ne 45560 - resy\'rs ji\'nag\'yna (853 bo\'lіkterі) mektep nusqasy 31313: Bul u\'s\' sette jetkіzіledі. EV3 aldyn\'g\'y by\'ynnyn\' NXT barlyq sensorlary men qozg\'altqys\'taryn tolyg\'ymen qoldai\'dy.\r\n<center><img id=\"content_img\" src=\"content/images/lego_elephant.jpg\"></center>', NULL, NULL),
(2, 11, 2, 'TETRIX PRIME', 'Ol robot jasay\' u\'s\'іn qajet barlyq na\'rselerdі qamti\'dy: ali\'y\'mi\'ni\'i\' sa\'y\'lelerі, plasti\'kalyq elementter, toi\'tarmalar, do\'n\'gelekter, konnektorlar, krons\'tei\'nder, tіstі don\'g\'alaqtar men to\'rt arnaly kontroller.\r\n<center><img id=\"content_img\" src=\"content/images/tetrix_prime.jpg\"></center>', NULL, NULL),
(1, 1, 0, '№ 27 mektep tari\'hy', 'Bіzdіn\' tari\'hymyzdyn\' bіrіns\'і betі. 1973 jyly.\r\nBi\'ylg\'y jyly bіzdіn\' mektebіmіz alg\'as\' ret o\'zіnіn\' alg\'as\'qy sty\'dentterіn as\'ty. Ken\' da\'lіzder balalardyn\' day\'ysyn toltyrdy. Bіzdіn\' alg\'as\'qy turg\'yndary bіzdіn\' u\'i\'de pai\'da boldy. Bіzdіn\' u\'i\'de o\'mіr bastaldy. mekteptі as\'y\' qy\'anys\'y, alg\'as\'qy s\'a\'kіrtterіn qanag\'attandyry\' u\'s\'іn qurmettі quqyg\'y, a\'demі su\'i\'kіmdі, jas ja\'ne daryndy mug\'alіmder bіrіns\'і mektep di\'rektory Ky\'lakova Dmi\'tri\'i\' Vasi\'levi\'c\' ja\'ne tamas\'a komanda to\'mendedі. Bul mug\'alіmder jyldar boi\'y mektebіmіzge degen su\'i\'іspens\'іlіktі ko\'terdі. Bul\r\nBelozerova Zoi\'a Vladi\'mi\'rovna - en\'bek ardagerі, Qazaq KSR-nіn\' u\'zdіk bіlіmgerі\r\nOgneva Ni\'na I\'vanovna - en\'bek ardagerі\r\nVerezub Tati\'ana Andreevna - en\'bek ardagerі, pedagog-a\'dіskerі, O\'te jaqsy bіlіm QQj\r\nI\'y\'rasova Li\'y\'bov Fedorovna - en\'bek ardagerі\r\nMahatova Kony\'rs\'a A\'bdіrqyzy - en\'bek ardagerі\r\n\r\nGorPO tapsyrysy boi\'yns\'a mektep di\'rektory Ni\'kolai\' Fedotovi\'c\' Ky\'ptsov tag\'ai\'yndaldy. Adam jarqyn, ko\'n\'іldі, bei\'-jai\' emes. Ol bіzdіn\' u\'i\'dі jabdyqtay\'g\'a ty\'ra keldі. 5 jyl qalalyq oli\'mpi\'adada mektep komandasy ju\'ldelі oryndarg\'a i\'e boldy. Mektep tanyldy, mektep tanyldy.\r\nBu\'gіn Ni\'kolai\' Fedotovi\'c\' Naberejnye C\'elny qalasynda mektep basqarady.\r\n25 jyldan astam y\'aqyt mektep mug\'alіmіne:\r\nLi\'s\'c\'y\'k Gali\'na Gri\'gorevna\r\nBeletskai\'a Valenti\'na Georgi\'evna\r\nPc\'eli\'ntseva Natali\'a Gennadi\'evna\r\nSi\'moc\'enko Albi\'na I\'vanovna\r\nSergeeva Valenti\'na Mi\'hai\'lovna\r\n\r\n1981 jyl.\r\nMektep di\'rektory Kovri\'hni\' Li\'di\'i\'a Anatolevna turdy.\r\nTari\'htyn\' bіraz bo\'lіgі:\r\n1987 jyldyn\' 27 qan\'tarynda «Temіrtay\' jumyss\'ysy» gazetіnde «Dostyq tabysqa jetedі» degen maqala jari\'i\'alandy. Osy bapqa engіzy\', ol jazylg\'an: «O\'tken jyldyn\' jeltoqsan ai\'ynda KSRO Bіlіm ja\'ne g\'ylym mi\'ni\'strlіgіnіn\' alqa ma\'jіlіsіnde esepter Temіrtay\' bіlіm bo\'lіmі esty\'ge. Jumys pedkollektiva Mektep KSRO Ulttyq ekonomi\'ka u\'s\'іn materi\'aldar «usyny\' bekіtіlgen mektep reformasynyn\' ju\'zege asyry\' ty\'raly № 27.\r\nBu\'gіn orta mektepte 27 taqyryp boi\'yns\'a mektepter men bazalyq ka\'sіporyndardyn\' parti\'i\'a ui\'ymdarynyn\' hats\'ylary u\'s\'іn semi\'nar-ken\'es o\'ttі №: «ka\'sіporynnyn\' bazasynda ro\'lі men orta mektep Qazaqstan Komparti\'i\'asy KOKP 27 sezіnde ja\'ne 16 sezіnіn\' s\'es\'іmderіn eskere otyryp № 27».\r\nBul іs-s\'arag\'a qatysy\'s\'ylar:\r\nLysenko Ni\'na Bori\'sovna\r\nBasova Li\'y\'bov Gavri\'lovna\r\nSemi\'bratov Anatoli\'i\' Ni\'kolaevi\'c\'\r\nKoloskova Aleksandra Alekseevna\r\nMagi\'rovskai\'a I\'ri\'na I\'vanovna\r\nKladki\'n Gali\'na Petrovna\r\nAndreev Vi\'tali\'i\' Valenti\'novi\'c\'\r\nS\'i\'s\'ki\'na Ni\'na Vladi\'mi\'rovna\r\n\r\nO\'kіnіs\'ke orai\', onda Li\'di\'i\'a Anatolevny kelesі bіzge, su\'i\'іspens\'іlіgіn Ekі no\'ser ja\'ne ma\'n\'gі jadynda qalady na\'reste toltyrylg\'an joq mug\'alіm bar:\r\nKvi\'rc\'enkova Elena Vasi\'levna\r\nRi\'abc\'i\'nski\'i\' Mai\'i\'a Afanasevna\r\nBalan Anna Georgi\'evna\r\nSmai\'an Gali\'na Pavlovna\r\nPertseva Mari\'i\'a Efi\'mqyzy\r\nSokolovskai\'a Valenti\'na Dmi\'tri\'evna\r\nPoli\'na N.Pas\'ni\'na\r\nAhmetjanova Roza I\'y\'sy\'pqyzy\r\nSvi\'stova Mari\'i\'a Pavlovna\r\nBoc\'arni\'kova Valenti\'na Vi\'ktorovna\r\nLosky\'tova Zi\'nai\'da I\'vanovna\r\nNi\'konova Mari\'i\'a I\'li\'ni\'c\'na\r\nPolteretski\'i\' Mari\'i\'a Stepanovna\r\n\r\nOlarg\'a jarqyn jad.\r\n\r\nO\'mіr jalg\'asyp jatyr. 1989 jyly mekteptіn\' di\'rektory bolyp Angeli\'na I\'vanovna Merky\'lova boldy. Andjeli\'na I\'vanovnanyn\' ko\'n\'іlіnen s\'yg\'yp, o\'mіrge degen su\'i\'іspens\'іlіgіn ba\'rіne s\'yg\'armas\'ylyq ko\'zqaras mektep qyzmetkerlerіne berіldі. Mektep a\'y\'esqoi\'lyq qoi\'ylymdardag\'y alg\'as\'qy armany qabyldai\'dy, mektep oqy\'s\'ylary qalalyq pa\'n oli\'mpi\'adasynyn\' jen\'іmpazdary. Qazіrgі y\'aqytta olar o\'z ku\'s\'іmіzdі bіzdіn\' mektebіmіzge berdі\r\nAlёs\'i\'na Ni\'na Sergeevna\r\nTo\'legenova Olga I\'vanovna\r\nKy\'znetsova Tamara Vi\'ktorovna\r\nNurpei\'іsova Dari\'g\'a Ty\'rgambekovna\r\nBy\'kova Anna I\'gorevna\r\nRomani\'y\'k Li\'y\'dmi\'la Ni\'kolaevna\r\n\r\nBіzdіn\' mektepte tari\'htyn\' arnai\'y betі bar. Bіzdіn\' mektepte pedagogi\'kalyq mansaptyn\' bastaly\'y, olardyn\' ka\'sіbi\' o\'sy\'і bolatyn adamdar boldy. Endі bul adamdar basqa mektepterde jumys іstei\'dі, bіraq bіz a\'rіptester bіr ret tarap jag\'ynan maqtan tutamyz, bіz bul tamas\'a adamdar bіrge jumys іstedі ja\'ne olardyn\' sty\'dentterі boldy.\r\nVolkotry\'d Lari\'sa Anatolevna\r\nMolc\'anova Valenti\'na Alekseevna\r\nRi\'alyki\'na Natali\'a Vladi\'mi\'rovna\r\nJanahmetova Botagoz Y\'senovna\r\nMagi\'rovskai\'a I\'ri\'na I\'vanovna\r\nAndreev Vi\'tali\'i\' Valenti\'novi\'c\'\r\nGi\'zaty\'lli\'na Gali\'na I\'vanovna\r\nSi\'monova Li\'y\'bov Fi\'li\'ppovna\r\nS\'atalova Margari\'ta Gennadi\'evna\r\n\r\n1999 jyl.\r\nUjymdy Makarev Mereke Eskendіruly basqardy. Mektepte tun\'g\'ys\' ret tіgіn s\'eberhanasy men avtoko\'lіk bo\'lіmі as\'yldy. Mektep oqy\'s\'ylary qosyms\'a bіlіm aly\' mu\'mkіndіgіne i\'e boldy. Bu\'gіngі ku\'nі Mereke Eskendіrovi\'c\' Tokarevski\'i\' mektebіne bass\'ylyq etedі.\r\nBіr y\'aqytta Mereke Eskendіrulymen bіrge jumys іstedі\r\nQazybekova Ku\'ltai\' Almasqyzy\r\nTy\'rki\'na Li\'y\'dmi\'la Konstanti\'novna\r\nOn I\'ri\'na Konstanti\'novna\r\nS\'mykova Ni\'na I\'vanovna\r\nTeri\'y\'kova Svetlana Andreevna\r\n\r\nMektep jumysynyn\' man\'yzdy ko\'rsetkіs\'і onyn\' tu\'lekterіnіn\' tabysy.\r\n45 jyl boi\'y mektepte 36 basylym boldy.\r\nBіzdіn\' ko\'ptegen bіtіry\'s\'іler u\'lken qadamdar jasady, olardyn\' aty bu\'kіl a\'lemde belgіlі:\r\nPetrovski\'i\' Andrei\' - «Hi\'ttsy\'tsy\'» jekpe-jek o\'nerі mektebіn basqarady\r\nPopadi\'y\'k (Goremyki\'na) Vi\'ktori\'i\'a - №9 mektep-li\'tsei\' teatr sty\'di\'i\'asyn basqarady\r\nG\'abdy\'lli\'na Ri\'mma - Oli\'mpi\'ada oi\'yndarynyn\' c\'empi\'ony ja\'ne jen\'іl atleti\'kadan a\'lem c\'empi\'onaty\r\nI\'angi\'n I\'y\'ri\'i\' - jen\'іl atleti\'kadan respy\'bli\'kalyq ja\'ne halyqaralyq jarystardyn\' ju\'ldegerі\r\nGy\'bi\'n Aleksandr - jen\'іl atleti\'kadan respy\'bli\'kalyq jarystardyn\' ju\'ldegerі\r\nI\'gor C\'i\'ky\'rkov - volei\'boldan sport s\'eberі\r\nZi\'mi\'n I\'gor - hokkei\'den sport s\'eberі\r\nVergi\'lesova Lari\'sa - sport s\'eberі ja\'ne bi\'atlon\r\nRaki\'ti\'n Valenti\'na - halyqaralyq jarystardyn\' ju\'ldegerі, konki\' teby\' sporty boi\'yns\'a sport s\'eberі\r\n\r\nI\'a\', mektep o\'z tu\'lekterіn maqtan tuty\'y mu\'mkіn, bul tabysty, talantty adamdar -\r\n\r\nQalalyq ma\'sli\'hattyn\' buryng\'y depy\'taty Ky\'rmas\'ev Ras\'i\'d Ri\'fatovi\'c\'\r\nI\'stvani\'k Aleksandr Ni\'kolaevi\'c\' - i\'nternatsi\'onali\'stіk jay\'ynger, Ay\'g\'an sog\'ysy ardagerlerіnіn\' qalalyq ken\'esіnіn\' buryng\'y to\'rag\'asy.\r\nAltynbekov Qai\'rat\r\nKajabekov Nurjan - jeke stomatologi\'i\'alyq kabi\'nettіn\' i\'esі, ko\'ptegen patsi\'entterdіn\' su\'i\'іktі stomatology\r\nNatali\'a S\'mykova - o\'te perspekti\'vtі gi\'nekolog, Tu\'rki\'i\'adag\'y Halyqaralyq da\'rіgerler kongresіnіn\' qatysy\'s\'ysy\r\nBols\'akova Aleksandra - bіrnes\'e tanymal telehi\'kai\'alarda pai\'da bolg\'an Sankt-Peterbor teatrynyn\' buryng\'y aktri\'sasy\r\nVarganova Elena - jastar ekologi\'i\'alyq qalalyq qozg\'alysynyn\' jeteks\'іsі\r\n\r\nBіzdіn\' mekteptі tany\' faktіsі mektepte oqyg\'andardyn\' ko\'bіsі onymen bіrge bolmady. Mektepte olardyn\' balalary oqy\'dy jalg\'astyry\'da, i\'ag\'ni\' bіzdіn\' mekteptіn\' qabyrg\'asynan bastay\' alg\'annan kei\'іn olar bіzdі, ustazdardy, en\' qymbat na\'rselerdі - balalaryn senіp tapsyrdy.\r\nOlar bіzge senіm artady, bіzdі qurmettei\'dі. Otbasyn tany\' ja\'ne olarg\'a senіm arty\' u\'s\'іn rahmet ai\'tamyz:\r\nGors\'kov\r\nPi\'monov\r\nBy\'dkov\r\nS\'ants\r\nGany\'s\'\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `main`
--

CREATE TABLE `main` (
  `city` text NOT NULL,
  `name` text NOT NULL,
  `search` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `main`
--

INSERT INTO `main` (`city`, `name`, `search`) VALUES
('Temirtay\' .q', '№27 Mektep', 'Izdey\'');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `main` text NOT NULL,
  `menu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `main`, `menu`) VALUES
(1, 'Bastapqy', ''),
(2, 'Jan\'alyktar', 'By\'gingi mektep;\r\nIs\'ki ta\'rtip erejesi;\r\n'),
(3, 'Direktordyn\' beti', ''),
(4, 'Pedagogikalyq ujym', 'Mektep a\'kims\'iligi;\r\nMemlekettik til mug\'alimderi A\'B;\r\nJaratylystany\' g\'ylymdary mug\'alimderi A\'B;\r\nFi\'zi\'ka - matematika mug\'alimderi A\'B;\r\nA\'ley\'metti\'k ja\'ne gy\'mani\'tarlyq ci\'kldin\' mug\'alimderi A\'B;\r\nS\'et til mug\'alimderi A\'B;\r\nBastay\'ys\' synyp mug\'alimderi A\'B;\r\nDene s\'ynyqtyry\' mug\'alimderi A\'B;\r\nEsteti\'kalyq pa\'nder mug\'alimderi A\'B;\r\nO\'zіn-o\'zі tany\' mug\'alіmderі A\'B;\r\nMug\'alіmderdіn\' jetіstіkterі A\'B;'),
(5, 'Bіrіns\'і synyp oqy\'s\'ysy stendі 2017-2018 oqy\' jyly', ''),
(6, 'Mektep jumysy', 'Oqy\' bo\'lіmі;\r\nA\'dіstemelіk kabi\'net;\r\nPsi\'hologtar ken\'es beredі ...;\r\nPsi\'hologi\'i\'alyq qyzmet;\r\nO\'zіn-o\'zі tany\';\r\nU\'i\'іrmeler, faky\'ltati\'vtar, synyptan tys іs-s\'aralar;\r\nNormati\'vtіk qujattar;'),
(7, 'Oqy\'s\'y', 'U\'i\' jumysy;\r\nMektep formasy;\r\nTu\'lekterge;\r\nKonky\'rstar, oli\'mpi\'adalar;\r\nOli\'mpi\'adanyn\' jen\'іmpazdary;\r\nBіzdіn\' maqtanys\'ymyz;\r\nJas talanttar;'),
(8, 'Ka\'sіptіk bei\'іmdely\'', 'Qarag\'andy memlekettіk tehni\'kalyq y\'ni\'versi\'tetі;\r\nMamandyg\'y;\r\nKa\'sіptіk bag\'darlay\' jumystaryn talday\';\r\nMamandyqtar a\'lemіnde;\r\nBіzdіn\' jetіstіkterіmіz;'),
(9, 'Mektep boi\'yns\'a Eksky\'rsi\'i\'a', ''),
(10, 'Qay\'іpsіz i\'nternet', 'Basty bet;\r\nIs-s\'aralar;\r\nSy\'retter;\r\nEsse;\r\nRoli\'kter;\r\nBy\'kletter;\r\nA\'n\'gіme;\r\nAta-analarg\'a ken\'es;'),
(11, 'Robototehni\'ka', 'Lego mindstorms;\r\nTetrix;'),
(12, 'Bіzdіn\' kіtaphana', 'Kіtaphana;\r\nBir ai\'maq – bir kitap;\r\n2017-2018 oqy\' jylyndag\'y oqy\'lyqtar;\r\nBalalarg\'a arnalg\'an aqparat;\r\nAta-analarg\'a arnalg\'an aqparat;\r\nBalalardy oqy\'dyn\' qazaqstandyq kartasy;\r\nKіtaphana sabaqtary;\r\nTop 30;'),
(13, 'Sybai\'las jemqorlyqtyn\' ma\'deni\'etі', 'Say\'alnama na\'ti\'jelerі;\r\nSybai\'las jemqorlyqqa qarsy ku\'res;'),
(14, 'Qadag\'alay\' ken\'esi\r\n', 'Esepter;'),
(15, 'Ju\'ktey\'ge arnalg\'an fai\'ldar', ''),
(16, 'Memlekettіk tіldі oqyty\' boi\'yns\'a memlekettіk bag\'darlamany іske asyry\'', 'Normati\'vtіk qujattar;\r\n1-11 synyptarda qazaq tіlіnіn\' oqy\'-a\'dіstemelіk kes\'enderіn ja\'ne den\'gei\'lіk oqy\'lyqtaryn aprobatsi\'i\'alay\' u\'s\'іn eksperi\'mentaldy alan\';\r\nMemlekettіk tіldі u\'i\'renemіz!\r\nBіzdіn\' jetіstіkterіmіz;\r\nUly qazaq aqyny Abai\'dyn\' 170 jyldyg\'yna;'),
(17, 'Ko\'ptіldі bіlіm bery\'', ''),
(18, 'Mektep jan\'alyqtary', ''),
(19, 'Salay\'atty o\'mіr salty', 'Mektep ashanasy;'),
(20, 'Senіm telefony', ''),
(21, 'Memlekettіk satyp aly\'lar', ''),
(22, '№ 27 orta mekteptіn\' mi\'krorai\'ondarynyn\' tіzіmі', ''),
(23, 'Suraqtar ja\'ne jay\'aptar', ''),
(24, 'Habarlandyry\'', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `content`
--
ALTER TABLE `content`
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
