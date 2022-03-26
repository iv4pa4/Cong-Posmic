-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Време на генериране: 11 март 2022 в 13:53
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
-- Структура на таблица `cosmic_objects`
--

DROP TABLE IF EXISTS `cosmic_objects`;
CREATE TABLE IF NOT EXISTS `cosmic_objects` (
  `object_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_name` varchar(256) NOT NULL,
  `object_info` text,
  `object_photo` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(1, 'Меркурий', NULL, 'Меркурий е най-малката планета в Слънчевата система и е намира най-близо до Слънцето. Името на Меркурий, както на повечето планети, идва от името на римски бог. Повърхността й е покрита с кратери, скали и прах. Има атмосфера,която прекалено тънка и неможе се да оформят денонощните промени, който се случват в следствие на слънчевото греене. На планетата има големи температурни вариации – от 430˚С през деня Слънцето грее директно), до -180˚С през нощта. До момента две мисии са наблюдавали планетата директно. Първата е Маринър 10, която минава покрай планетата през 1974-75 и заснема около 45% от повърхността й. Втората мисия е тази на Месинджър, която за периода 2008-2009 прави три преминавания. От тези мисии знаем, че Меркурий има метално ядро, което е около 65-70% от масата на планетата и външно ядро от течен метал. Мантията и кората й са изградени основно от силикатни скали. По структура атмосферата се доближава до земната екзосфера като разликата е, че в меркурианската атмосфера намираме около 42% кислород, 6% хелий, 22% водород и 1% следи от други газове.'),
(2, 'Венера', NULL, 'Венера е втората най-близка планета до Слънцето. Орбитата й лежи, почти в същата равнина на земната. Тя е описвана често като планетата сестра на Земята. Приличат по размер, плътност и химичен състав. Атмосферата на Венера е плътна и гореща, липсват каквито и да е следи от кислород или вода. Високо в атмосферата й има много облаци, които отразяват 70% от слънчевата светлина, ковто достига до планетата. Затова Венера е третия най-ярък обект в небето след Слънцето и Луната. Тези облаци ,обаче ,са затруднявали учените да наблюдават повърхността й. Наблюдавайки движението на облаците й, астрономите не са били сигури дали едно пълно завъртане около оста й е 24 или 25 дни. С развитието на радарните технологии за наблюдение, установяват, че се случва за 243 дни! Освен това, движението й е обратно на всички останали планети в Слънчевата система. Друг интересен факт е че северният полюс на Венера е „под“ а южният „над“ еклиптиката.'),
(3, 'Земя', NULL, 'Земята е третата планета в Слънчевата система. Тя е единствената позната ни планета, която има активна система от тектонски плочи, течаща по повърхността вода и изобилен живот. Планетата, която обитаваме има твърдо вътрешно ядро, течно външно ядро, мантия и земна кора. Няма проби от вътрешността на планетата, защото учените не познават материал. който да зидържи налягането на дълбочина повече от 10 км. Геолози ,обаче ,се намерили начин да ги изучт чрез сеизмични вълни и от тях знаем, че вътрешното и външното ядро са изградени предимно от никел, желязо и някакъв по-лек елемент, като сярата. Разликата между двете ядра е, че в следствие на температурата и налягането, тези елементи преминават от течно в твърдо състояние. Мантията е изградена от плътен, но скалист материал – съединения на силикона и кислорода. Атмосферата е разделена на няколко пласта – тропосфера, стратосфера, мезосфера, йоносфера и екзосфера. За нас като хора най-важната характеристика на атмосферата е че може да я дишаме. Въздухът е съставен от газове – в най-голямо количество азот (78%), кислород (21%), аргон (0,9%) и въглероден диоксид (0,03%). Влажността варира от 0,1% до 3%, в зависимост от местоположението и климата. Наличието на кислород, въглероден диоксид и вода, правят атмосферата на планетата ни уникална в Слънчевата система.'),
(4, 'Марс', NULL, 'Марс е най-външната от четирите скалисти планети в Слънчевата система. Също като Земята има ядро, мантия и кора. Завърта се около оста си за приблизително същото време, като Земята. И поради наклона на оста му, северното и южното полукълба съвпадат с полюсите. Това води до наличието на сезони, които са доста по-сложно устроени от земните. Марс носи името на римският бог на войната. Знаем, че някога там е имало течаща вода, но днес Червената планета е студена и суха, а повърхността му е набраздена от каньони и отдавна угаснали вулкани. Атмосферата на пленетата е доста тънка и съставена от задушаващи количества въглероден диоксид. Понякога се образуват бели облаци от замръзнали въглероден диоксид и вода. По време на марсианската зима температурите падат \r\nдо -89 ˚C и се образува сух лед по полюсите на планетата. Не рядко явление са и „пясъчните бури“, които имат сезонен характер. Марс има слабо магнитно поле, което комбинирано с бързото му въртене около оста, предполага, че ядрото му е не-метално, не-течно или и двете. От липсата на вулканична активност, ниската плътност на планетата и високите нива на желязо по повърхността му, учени предполагат, че Марс никога не се е разтапял. Именно това не е позволило на този свят да се обособи, както Земята. \r\n'),
(5, 'Юпитер', NULL, 'Юпитер е петата поред планета от Слънцето и носи името на най-могъщият бог от римския пантеон. Това е най-големият от всички планети в Слънчевата системата. Третият най-ярък обект в нощното небе, след Луната и Венера, той е и доста лесен за наблюдение и изследване. Формата на Юпитер е леко сплескана при екватора, поради бързото му въртене около оста си. Като добавим и наклона на оста на планетата, може да се каже, че на Юпитер няма сезони. Обаче планетата има е система от пръстени, но много по слабо видими от тези на Сатурн. Основният пръстен е широк около 7000км. и е с дебелина около 30км. От вътрешната страна на Юпитер е по-малък и не много плътен пръстен, започващ малко след атмосферата му. От външната страна на планетатa е и по-широкият, наподобяващ ореол пръстен. Съставът на атмосферата на Юпитер е подобен на този на Слънцето –предимно водород и хелий. Дълбоко в атмосферата, се повишава налягането и температурата, като водородния газ се компресира в течност. Това прави Юпитер най-големия океан в Слънчевата система (океан от водород, не от вода). Учените смятат, че на по-голяма дълбочина, налягането става достатъчно голямо да изтлакса електроните от водородните атоми, което прави течността електрически проводима. Бързото въртене на Юпитер се смята, че задвижва електрически токове, генерирайки мощното магнитно поле на планетата. Все още не е ясно дали Юпитер има ядро от твърд материал. \r\n'),
(6, 'Сатурн', NULL, 'Шестата планета в Слънчевата система е Сатурн. Той се различава от останалите газови гиганти по пръстените, които опасват екватора му. Носи името на бог от римския пантеон, баща на Юпитер. Най-горният слой на атмосферата му е видим. Този слой е съставен предимно от водород и хелий, които образуват жълтеникави ленти, успоредни на екватора му. По навътре, под влияниепт на плътността и налягането, тези два елемента преминават в почти течно състояние. Още по-надълбоко атомите се отделят от електроните си и водорода и хелия започват да се държат като метали. В този пласт се получава и магнитното поле на планетата. В център на Сатурн е ядрото му, което е изградено от лед и скали. Пръстените на Сатурн също са изградени гланво от лед. Планетата има общо седем пръстена като всеки от тях носи име на буква от A до F. Разстоянията между пръстените, носят имената на астрономите които са ги открили. Ледените късове изграждащи пръстените отразява слънчевата светлина и ги кара да блестят.'),
(7, 'Уран', NULL, 'Уран e седмата планета в системата ни. Той ,подобно на Сатурн и Юпитер, има система от пръстени и цяло семейство луни. Заради силния наклон на оста му от Земята изглежда все едно планетата, спътници и пръстените й обикалят „отгоре надолу“. На всяко завъртане около Слънцето, северният и южният му полюс са в 42-годишно постоянно греене или 42 години пълна тъмнина. Това от своя страна води до доста дълги и контрастни сезони. Атмосферата на Уран е богата на водород и кристалите метан в нея поглъщат червенатa слънчева светлина и затова ние виждаме Уран в синьо. Най-горният слой на атмосферата, може да бъде описан като мъгла. Тя скрива, лентовидна структура и признаци на движение на ярките метанови облаци. Под повърхностните облаци има друг слой, който е доста по плътен, а под него е възможно да има океан от течна вода, а в центъра и твърдо ядро. Пръстеновидната система на Уран е била открита през 1977, докато астрономи са наблюдавали преминаването му пред звезда. Вътрешните пръстени са от прах и тъмни частици, с големина от няколко сантиметра до няколко метра. Най-яркият е Епсилон, около който обикалят две малки луни - Корделия, която е в орбитира близо до вътрешната част на пръстена, и Офелия, в орбитира от външната му част. Заедно, двете луни „направляват“ частиците на пръстена, като ги държат в тази форма. Общо луните на Уран са 27 ,като по-големите от тях са Миранда, Ариел, Умбриел, Титания и Оберон. Интересен факт е че всички носят имената на герои от пиеси на Шекспир. '),
(8, 'Нептун', NULL, 'Нептун е най-отдалечената от Слънцето планета. Много наподобява Уран, по размери и структура. Температурата на повърхността му достига -201 ˚C. Оста му на въртене е наклонена на 28,3˚ (сравнително малък), което обособява и сезони. Разликата с тези на Земята е че те траят по около 40 години. Външната част на атмосферата му е богата на водород. В по-долните пластове, имавода, амоняк и метан, а в центъра – твърдо скалисто ядро. На Нептун е наблюдават най-бързите ветрове познати в Слънчевата система, както и гигантски бури. Учените смятат, че това се влияен от напознат вътрешен източник на топлина. Същият този източник кара планетата да излъчва два пъти повече енергия отколкото получава от Слънцето. Нептун изглежда бледосин, поради метана, който поглъща червената светлина от слънчевото греене, също като Уран. През 1989г. Вояджър 2 успява да заснеме невероятна буря, наречена е „Голямото черно петно“ и когато през 1994г. планетата е наблюдавана отново вече е била изчезнала. Тази буря е едно от най-интересните явления, наблюдавани на Нептун. Пръстеновидната система на планетата е била открита през ’80-те години. Астрономи наблюдавали преминаването на Нептун пред звезди и открили общо шест системи от пръстени (подобно на Уран). Интересен факт е че всички са получили имената на учените, които са ги открили. Започвайки от най-вътрешния те са Гай, Льо Вериер, Ласел, Араго и Адамс. Открит е и шести пръстен, който си няма име, но се движи с орбитата на луната Галатея.\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
