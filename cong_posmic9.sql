-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Време на генериране: 12 март 2022 в 10:37
-- Версия на сървъра: 5.7.36
-- Версия на PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `cong posmic`
--

-- --------------------------------------------------------

--
-- Структура на таблица `cosmic_literature`
--

DROP TABLE IF EXISTS `cosmic_literature`;
CREATE TABLE IF NOT EXISTS `cosmic_literature` (
  `literature_id` int(11) NOT NULL AUTO_INCREMENT,
  `literature_link` varchar(256) DEFAULT NULL,
  `literature_name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`literature_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `cosmic_literature`
--

INSERT INTO `cosmic_literature` (`literature_id`, `literature_link`, `literature_name`) VALUES
(1, 'https://chitanka.info/text/21216-kosmos', 'Карл Сейгън — Космос '),
(2, 'https://chitanka.info/text/21614-mitove-i-legendi-za-syzvezdijata', 'Ангел Бонов — Митове и легенди за съзвездията '),
(3, 'https://minimummart.com/nauka/astrofizika-za-zaeti-hora-iztegljane-na-knigata/', 'Нийл Деграс Тайсън-Астрофизика за заети хора'),
(4, 'https://chitanka.info/text/29146-drugata-strana-na-nebeto', 'Артър Кларк — Другата страна на небето'),
(5, 'https://chitanka.info/text/80-zovyt-na-zvezditeю', 'Артър Кларк — Зовът на звездите');

-- --------------------------------------------------------

--
-- Структура на таблица `cosmic_objects`
--

DROP TABLE IF EXISTS `cosmic_objects`;
CREATE TABLE IF NOT EXISTS `cosmic_objects` (
  `object_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_name` varchar(256) NOT NULL,
  `object_info` text,
  `object_photo` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `cosmic_objects`
--

INSERT INTO `cosmic_objects` (`object_id`, `object_name`, `object_info`, `object_photo`) VALUES
(1, 'Метеор', 'Метеор е явление, което се наблюдава при навлизане на твърдо тяло в атмосферта на Земята. Движат се със скорости между 30 и 70 км/с. Те могат да бъдат наблюдавани всяка нощ, като средната честота е около 10 метеора на час. Когато метеора е по-голям по размер, преминаването му през атмосферата може да се види дори при дневна светлина, понякога придружено и от звук подобен на гърмеж (метеор болид). Достигналите до земната повърхност отломки от метеори се наричат метеорити.', 'meteorit.png'),
(2, 'Метеорит', 'Метеоритът е твърдо метеорно тяло, паднало върху земната повърхност. Размерите им достигат от няколко милиметра до няколко километра, теглото им също варира от няколко грама до няколко тона.  Биват железни, железно-каменни и каменни. Най-често падат поединично, тъй като са неразрушили се при навлизането си в земната атмосфера тела. При падането на големи метеорити се образуват метеоритни кратери.', 'meteorit.png'),
(3, 'Астероид', 'Астероидите са малки обекти с твърда повъхност в орбита около Слънцето. За повечето се смята че са останки  от протопланетарния диск които не са били погълнати от планети или изхвърлени извън Слънчевата система по време на нейното формиране. Някои дори имат собствени спътници.\r\nПочти всички астероиди се намират в астероидния пояс, в орбити между тези на Марс и Юпитер. Смята се че общият брой на астероидите в Слънчевата система е няколко милиона. Най-големият астероид е 1 Церера \r\nс диаметър от 900-1000 км.', 'asteroid.jpg'),
(4, 'Комета', 'Кометата е тяло, съставено от лед и замръзнали газове, орбитиращо в Слънчевата система. Видими са само в близост до Слънцето, когато то ги осветява. При приближаването си до Слънцето, замръзналите газове започват да се изпаряват и така се образува тяхната опашка. Тя излъчва светлина вследствие на въздействието на слънчевия вятър. Опашките на кометите винаги са насочени в посока, противоположна на Слънцето.\r\nКогато комета е достатъчно близо до Слънцето, нейните външни слоеве започват да се изпаряват.  Потоците от газ и прах формират гигантска по размери атмосфера около ядрото на кометата наречена кома.\r\nЯдрото на кометата обикновенно е около 50 km, но може да бъде и с размери сравними с тези на Слънцето. Повечето комети са твърде бледи и могат да бъдат наблюдавани само с телескоп, но има и такива които са достатъчно ярки, за да се наблюдават с човешко око.', 'kometa.png');

-- --------------------------------------------------------

--
-- Структура на таблица `facts`
--

DROP TABLE IF EXISTS `facts`;
CREATE TABLE IF NOT EXISTS `facts` (
  `fact_id` int(11) NOT NULL AUTO_INCREMENT,
  `fact_self` text,
  `fact_photo` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`fact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `facts`
--

INSERT INTO `facts` (`fact_id`, `fact_self`, `fact_photo`) VALUES
(1, 'Интересен факт за Меркурий е, че ако комбинираме орбитата му заедно с едно пълно завъртане около оста му, получаваме, че един меркуриански ден е равен на две меркуриански години.', '1.png'),
(2, 'Интересен факт за Меркурий е, че ако комбинираме орбитата му заедно с едно пълно завъртане около оста му, получаваме, че един меркуриански ден е равен на две меркуриански години.\r\n>Към момента няма отговор кой точно е откривателят на Меркурий. Планетата се вижда от Земята с просто око, затова данни за нея са известни още от Древността. Първите \r\nрегистрирани наблюдения датират поне от първото хилядолетие пр.н.е. През IV век пр.н.е. древногръцките астрономи смятали планетата за два отделни обекта – единият \r\nвидим при изгрев, който те наричат Аполон, а другият – при залез, наричан Хермес.', '2.png\r\n'),
(3, 'За разлика от другите планети в Слънчевата система, въртенето на Венера е по часовниковата стрелка.\r\n>Атмосферата на Венера е най-тежка от всички планети в Слънчевата система. Тя съдържа предимно въглероден диоксид с малки количества азот.', '3.png'),
(4, 'За разлика от имената на останалите планети, кръстени на богове от римската или гръцката митология, Земята е получила името си преди поне 1000 години, като резултат на културните разбирания на хората. Всеки език си има негово име за планетата – например „Еarth“ на английски, „Тerra“ на португалски, „Аarde“ на холандски. Общото между наименованието й на всички езици е, че значението е почти едно и също – земя или почва.', '4.png'),
(5, 'Марс от разстояние изглежда розово-червеникав, поради наличието на малки твърди частици железен оксид.', '5.png'),
(6, 'Само 1/3 от всички космически кораби, предприели пътуване към Марс, достигат крайната си цел, другите изчезват безследно. Учените предполагат, че причината може да се дължи на марсиански „Бермудски триъгълник“, който „поглъща“ космическите спътници.', '6.png'),
(7, 'Най-известната буря в познатият ни космос е „Голямото червено петно“ (Great Red spot), забелязана на повърността на Юпитер. В края на 2005-та година една друга буря на повърхността му се оцветява в червено, наречена „Малкото червено петно“ (Red spot Junior). Около два пъти по-малка, тя се е образувала от сливането на три бели, овални бури в периода 1998-2000г. Най-старата от тези три, може да бъде проследена повече от 90 години назад във времето!', '7.png'),
(8, 'Там денят е най-кратък в сравнение с всички планети в Слънчевата система. Юпитер прави пълно завъртане около оста си за 9 часа и 55 минути. Заради бързото си въртене, формата му е видимо сплескана.', '8.png'),
(9, 'Оста на Уран е наклонена на 98˚, което, погледнато от Земята, изглежда, все едно планетата се върти \"отгоре надолу\".', '9.png'),
(10, 'Луните на Уран са 27 ,като по-големите от тях са Миранда, Ариел, Умбриел, Титания и Оберон. Всички носят имената на герои от пиеси на Шекспир', '10.png'),
(11, 'Според една от историите, когато Хершел е открил планетата през 1781г. е искал да го нарече „Sidus Georgium” (от латински – звездата на Джордж), в чест на краля на Англия по това време – Джордж III. Ттова име така и не било одобрено и Йохан Боде, предложил да се продължи традицията с имената от римо-гръцкия пантеон, и планетата да получила името Уран.', '11.png'),
(12, 'Нептун има 14 луни, кръстени на различни морски божества и нимфи от гръцката митология. Най-големият му спътник е Тритон.', '12.png'),
(13, 'Гравитацията на Нептун е почти същата като тази на Земята.', '13.png');

-- --------------------------------------------------------

--
-- Структура на таблица `jokes`
--

DROP TABLE IF EXISTS `jokes`;
CREATE TABLE IF NOT EXISTS `jokes` (
  `joke_id` int(11) NOT NULL AUTO_INCREMENT,
  `joke_self` text NOT NULL,
  PRIMARY KEY (`joke_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `jokes`
--

INSERT INTO `jokes` (`joke_id`, `joke_self`) VALUES
(1, '-Why couldn’t the star stay focused?\r\n-He kept spacing out.'),
(2, '-Which type of stars always wear glasses in space?\r\n-Movie stars.'),
(3, '-Why did the star decide to take a vacation?\r\n-It needed some space.'),
(4, '-What do you call a bacon-wrapped comet?\r\n-A meat-eor!'),
(5, '-Where do the stars go to get their milk?\r\n-The Milky Way.'),
(6, '-Why did the cow want to become an astronaut?\r\n-So she could see the Milky Way.'),
(7, '-Why is the moon constantly moody?\r\n-She’s just going through a phase.'),
(8, '-How do you know when the moon is finished eating?\r\n-It looks full.'),
(9, '-What breakfast food is the moon known for serving?\r\n-Crescents!');

-- --------------------------------------------------------

--
-- Структура на таблица `planets`
--

DROP TABLE IF EXISTS `planets`;
CREATE TABLE IF NOT EXISTS `planets` (
  `planet_id` int(11) NOT NULL AUTO_INCREMENT,
  `planet_name` varchar(256) DEFAULT NULL,
  `planet_photo` varchar(256) DEFAULT NULL,
  `planet_info` text,
  PRIMARY KEY (`planet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `planets`
--

INSERT INTO `planets` (`planet_id`, `planet_name`, `planet_photo`, `planet_info`) VALUES
(1, 'Меркурий', 'mercury.jpg', 'Меркурий е най-малката планета в Слънчевата система и е намира най-близо до Слънцето. Името на Меркурий, както на повечето планети, идва от името на римски бог. Повърхността й е покрита с кратери, скали и прах. Има атмосфера,която прекалено тънка и неможе се да оформят денонощните промени, който се случват в следствие на слънчевото греене. На планетата има големи температурни вариации – от 430˚С през деня Слънцето грее директно), до -180˚С през нощта. До момента две мисии са наблюдавали планетата директно. Първата е Маринър 10, която минава покрай планетата през 1974-75 и заснема около 45% от повърхността й. Втората мисия е тази на Месинджър, която за периода 2008-2009 прави три преминавания. От тези мисии знаем, че Меркурий има метално ядро, което е около 65-70% от масата на планетата и външно ядро от течен метал. Мантията и кората й са изградени основно от силикатни скали. По структура атмосферата се доближава до земната екзосфера като разликата е, че в меркурианската атмосфера намираме около 42% кислород, 6% хелий, 22% водород и 1% следи от други газове.'),
(2, 'Венера', 'venus.jpg', 'Венера е втората най-близка планета до Слънцето. Орбитата й лежи, почти в същата равнина на земната. Тя е описвана често като планетата сестра на Земята. Приличат по размер, плътност и химичен състав. Атмосферата на Венера е плътна и гореща, липсват каквито и да е следи от кислород или вода. Високо в атмосферата й има много облаци, които отразяват 70% от слънчевата светлина, ковто достига до планетата. Затова Венера е третия най-ярък обект в небето след Слънцето и Луната. Тези облаци ,обаче ,са затруднявали учените да наблюдават повърхността й. Наблюдавайки движението на облаците й, астрономите не са били сигури дали едно пълно завъртане около оста й е 24 или 25 дни. С развитието на радарните технологии за наблюдение, установяват, че се случва за 243 дни! Освен това, движението й е обратно на всички останали планети в Слънчевата система. Друг интересен факт е че северният полюс на Венера е „под“ а южният „над“ еклиптиката.'),
(3, 'Земя', 'earth.jpg', 'Земята е третата планета в Слънчевата система. Тя е единствената позната ни планета, която има активна система от тектонски плочи, течаща по повърхността вода и изобилен живот. Планетата, която обитаваме има твърдо вътрешно ядро, течно външно ядро, мантия и земна кора. Няма проби от вътрешността на планетата, защото учените не познават материал. който да зидържи налягането на дълбочина повече от 10 км. Геолози ,обаче ,се намерили начин да ги изучт чрез сеизмични вълни и от тях знаем, че вътрешното и външното ядро са изградени предимно от никел, желязо и някакъв по-лек елемент, като сярата. Разликата между двете ядра е, че в следствие на температурата и налягането, тези елементи преминават от течно в твърдо състояние. Мантията е изградена от плътен, но скалист материал – съединения на силикона и кислорода. Атмосферата е разделена на няколко пласта – тропосфера, стратосфера, мезосфера, йоносфера и екзосфера. За нас като хора най-важната характеристика на атмосферата е че може да я дишаме. Въздухът е съставен от газове – в най-голямо количество азот (78%), кислород (21%), аргон (0,9%) и въглероден диоксид (0,03%). Влажността варира от 0,1% до 3%, в зависимост от местоположението и климата. Наличието на кислород, въглероден диоксид и вода, правят атмосферата на планетата ни уникална в Слънчевата система.'),
(4, 'Марс', 'mars.jpg', 'Марс е най-външната от четирите скалисти планети в Слънчевата система. Също като Земята има ядро, мантия и кора. Завърта се около оста си за приблизително същото време, като Земята. И поради наклона на оста му, северното и южното полукълба съвпадат с полюсите. Това води до наличието на сезони, които са доста по-сложно устроени от земните. Марс носи името на римският бог на войната. Знаем, че някога там е имало течаща вода, но днес Червената планета е студена и суха, а повърхността му е набраздена от каньони и отдавна угаснали вулкани. Атмосферата на пленетата е доста тънка и съставена от задушаващи количества въглероден диоксид. Пнякога се образуват бели облаци от замръзнали въглероден диоксид и вода. По време на марсианската зима температурите падат \r\nдо -89 ˚C и се образува сух лед по полюсите на планетата. Не рядко явление са и „пясъчните бури“, които имат сезонен характер. Марс има слабо магнитно поле, което комбинирано с бързото му въртене около оста, предполага, че ядрото му е не-метално, не-течно или и двете. От липсата на вулканична активност, ниската плътност на планетата и високите нива на желязо по повърхността му, учени предполагат, че Марс никога не се е разтапял. Именно това не е позволило на този свят да се обособи, както Земята. \r\n'),
(5, 'Юпитер', 'jupiter.jpg', 'Юпитер е петата поред планета от Слънцето и носи името на най-могъщият бог от римския пантеон. Това е най-големият от всички планети в Слънчевата системата. Третият най-ярък обект в нощното небе, след Луната и Венера, той е и доста лесен за наблюдение и изследване. Формата на Юпитер е леко сплескана при екватора, поради бързото му въртене около оста си. Като добавим и наклона на оста на планетата, може да се каже, че на Юпитер няма сезони. Обаче планетата има е система от пръстени, но много по слабо видими от тези на Сатурн. Основният пръстен е широк около 7000км. и е с дебелина около 30км. От вътрешната страна на Юпитер е по-малък и не много плътен пръстен, започващ малко след атмосферата му. От външната страна на планетатa е и по-широкият, наподобяващ ореол пръстен. Съставът на атмосферата на Юпитер е подобен на този на Слънцето –предимно водород и хелий. Дълбоко в атмосферата, се повишава налягането и температурата, като водородния газ се компресира в течност. Това прави Юпитер най-големия океан в Слънчевата система (океан от водород, не от вода). Учените смятат, че на по-голяма дълбочина, налягането става достатъчно голямо да изтлакса електроните от водородните атоми, което прави течността електрически проводима. Бързото въртене на Юпитер се смята, че задвижва електрически токове, генерирайки мощното магнитно поле на планетата. Все още не е ясно дали Юпитер има ядро от твърд материал. \r\n'),
(6, 'Сатурн', 'saturn.jpg', 'Шестата планета в Слънчевата система е Сатурн. Той се различава от останалите газови гиганти по пръстените, които опасват екватора му. Носи името на бог от римския пантеон, баща на Юпитер. Най-горният слой на атмосферата му е видим. Този слой е съставен предимно от водород и хелий, които образуват жълтеникави ленти, успоредни на екватора му. По навътре, под влияниепт на плътността и налягането, тези два елемента преминават в почти течно състояние. Още по-надълбоко атомите се отделят от електроните си и водорода и хелия започват да се държат като метали. В този пласт се получава и магнитното поле на планетата. В център на Сатурн е ядрото му, което е изградено от лед и скали. Пръстените на Сатурн също са изградени гланво от лед. Планетата има общо седем пръстена като всеки от тях носи име на буква от A до F. Разстоянията между пръстените, носят имената на астрономите които са ги открили. Ледените късове изграждащи пръстените отразява слънчевата светлина и ги кара да блестят.'),
(7, 'Уран', 'uran.jpg', 'Уран e седмата планета в системата ни. Той ,подобно на Сатурн и Юпитер, има система от пръстени и цяло семейство луни. Заради силния наклон на оста му от Земята изглежда все едно планетата, спътници и пръстените й обикалят „отгоре надолу“. На всяко завъртане около Слънцето, северният и южният му полюс са в 42-годишно постоянно греене или 42 години пълна тъмнина. Това от своя страна води до доста дълги и контрастни сезони. Атмосферата на Уран е богата на водород и кристалите метан в нея поглъщат червенатa слънчева светлина и затова ние виждаме Уран в синьо. Най-горният слой на атмосферата, може да бъде описан като мъгла. Тя скрива, лентовидна структура и признаци на движение на ярките метанови облаци. Под повърхностните облаци има друг слой, който е доста по плътен, а под него е възможно да има океан от течна вода, а в центъра и твърдо ядро. Пръстеновидната система на Уран е била открита през 1977, докато астрономи са наблюдавали преминаването му пред звезда. Вътрешните пръстени са от прах и тъмни частици, с големина от няколко сантиметра до няколко метра. Най-яркият е Епсилон, около който обикалят две малки луни - Корделия, която е в орбитира близо до вътрешната част на пръстена, и Офелия, в орбитира от външната му част. Заедно, двете луни „направляват“ частиците на пръстена, като ги държат в тази форма. Общо луните на Уран са 27 ,като по-големите от тях са Миранда, Ариел, Умбриел, Титания и Оберон. Интересен факт е че всички носят имената на герои от пиеси на Шекспир. '),
(8, 'Нептун', 'neptun.jpg', 'Нептун е най-отдалечената от Слънцето планета. Много наподобява Уран, по размери и структура. Температурата на повърхността му достига -201 ˚C. Оста му на въртене е наклонена на 28,3˚ (сравнително малък), което обособява и сезони. Разликата с тези на Земята е че те траят по около 40 години. Външната част на атмосферата му е богата на водород. В по-долните пластове, имавода, амоняк и метан, а в центъра – твърдо скалисто ядро. На Нептун е наблюдават най-бързите ветрове познати в Слънчевата система, както и гигантски бури. Учените смятат, че това се влияен от напознат вътрешен източник на топлина. Същият този източник кара планетата да излъчва два пъти повече енергия отколкото получава от Слънцето. Нептун изглежда бледосин, поради метана, който поглъща червената светлина от слънчевото греене, също като Уран. През 1989г. Вояджър 2 успява да заснеме невероятна буря, наречена е „Голямото черно петно“ и когато през 1994г. планетата е наблюдавана отново вече е била изчезнала. Тази буря е едно от най-интересните явления, наблюдавани на Нептун. Пръстеновидната система на планетата е била открита през ’80-те години. Астрономи наблюдавали преминаването на Нептун пред звезди и открили общо шест системи от пръстени (подобно на Уран). Интересен факт е че всички са получили имената на учените, които са ги открили. Започвайки от най-вътрешния те са Гай, Льо Вериер, Ласел, Араго и Адамс. Открит е и шести пръстен, който си няма име, но се движи с орбитата на луната Галатея.\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
