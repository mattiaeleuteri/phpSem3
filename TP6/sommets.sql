
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



--
-- Structure de la table `sommets`
--

DROP TABLE IF EXISTS `sommets`;
CREATE TABLE `sommets` (
  `som_nom` varchar(255) NOT NULL,
  `som_region` varchar(255) NOT NULL,
  `som_coord` varchar(255) NOT NULL,
  `som_altitude` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Sommets`
--

INSERT INTO `sommets` (`som_nom`, `som_region`, `som_coord`, `som_altitude`) VALUES
('Everest', 'Mahalangur Himal, Himalaya', '27° 59? 17? N 86° 55? 31? E', 8848),
('K2', 'Baltoro Muztagh, Karakoram', '35° 52? 57? N 76° 30? 48? E', 8611),
('Kangchenjunga', 'Kangchenjunga, Himalaya', '27° 42? 09? N 88° 08? 49? E', 8586),
('Lhotse', 'Mahalangur Himal, Himalaya', '27° 57? 42? N 86° 55? 59? E', 8516),
('Makalu', 'Mahalangur Himal, Himalaya', '27° 53? 21? N 87° 05? 19? E', 8485),
('Cho Oyu', 'Mahalangur Himal, Himalaya', '28° 05? 39? N 86° 39? 39? E', 8188),
('Dhaulagiri I', 'Dhaulagiri, Himalaya', '28° 41? 45? N 83° 29? 36? E', 8167),
('Manaslu', 'Manaslu, Himalaya', '28° 32? 58? N 84° 33? 39? E', 8163),
('Nanga Parbat', 'Nanga Parbat, Himalaya', '35° 14? 18? N 74° 35? 22? E', 8126),
('Annapurna I', 'Annapurna, Himalaya', '28° 35? 43? N 83° 49? 11? E', 8091),
('Gasherbrum I', 'Baltoro Muztagh, Karakoram', '35° 43? 27? N 76° 41? 44? E', 8080),
('Broad Peak', 'Baltoro Muztagh, Karakoram', '35° 48? 38? N 76° 34? 05? E', 8051),
('Gasherbrum II', 'Baltoro Muztagh, Karakoram', '35° 45? 27? N 76° 39? 11? E', 8034),
('Shishapangma', 'Langtang, Himalaya', '28° 21? 12? N 85° 46? 43? E', 8027),
('Gyachung Kang', 'Mahalangur Himal, Himalaya', '28° 05? 52? N 86° 44? 47? E', 7952),
('Gasherbrum III', 'Baltoro Muztagh, Karakoram', '28° 05? 52? N 86° 44? 47? E', 7946),
('Annapurna II', 'Annapurna, Himalaya', '28° 32? 03? N 84° 07? 20? E', 7937),
('Gasherbrum IV', 'Baltoro Muztagh, Karakoram', '35° 45? 33? N 76° 36? 57? E', 7932),
('Himalchuli', 'Manaslu, Himalaya', '28° 26? 07? N 84° 38? 24? E', 7893),
('Distaghil Sar', 'Hispar Muztagh, Karakoram', '36° 19? 33? N 75° 11? 18? E', 7884),
('Ngadi Chuli', 'Manaslu, Himalaya', '28° 30? 12? N 84° 34? 03? E', 7871),
('Nuptse', 'Mahalangur Himal, Himalaya', '28° 30? 12? N 84° 34? 03? E', 7864),
('Khunyang Chhish', 'Hispar Muztagh, Karakoram', '36° 12? 19? N 75° 12? 28? E', 7823),
('Masherbrum', 'Masherbrum, Karakoram', '35° 38? 28? N 76° 18? 21? E', 7821),
('Nanda Devi', 'Kumaon Himalaya', '30° 22? 36? N 79° 58? 15? E', 7816),
('Chomo Lonzo', 'Mahalangur Himal, Himalaya', '27° 55? 48? N 87° 06? 29? E', 7804),
('Batura Sar', 'Batura Muztagh, Karakoram', '36° 30? 36? N 74° 31? 27? E', 7795),
('Kanjut Sar', 'Hispar Muztagh, Karakoram', '36° 12? 18? N 75° 25? 04? E', 7790),
('Rakaposhi', 'Rakaposhi-Haramosh, Karakoram', '36° 08? 33? N 74° 29? 21? E', 7788),
('Namcha Barwa', 'Assam, Himalaya', '29° 37? 50? N 95° 03? 19? E', 7782),
('Kamet', 'Garhwal Himalaya, Himalaya', '30° 55? 12? N 79° 35? 30? E', 7756),
('Dhaulagiri II', 'Dhaulagiri, Himalaya', '28° 45? 46? N 83° 23? 14? E', 7751),
('Saltoro Kangri', 'Saltoro Muztagh, Karakoram', '35° 23? 57? N 76° 50? 51? E', 7742),
('Jannu', 'Kangchenjunga, Himalaya', '27° 40? 54? N 88° 02? 36? E', 7711),
('Tirich Mir', 'Hindou Kouch', '36° 15? 19? N 71° 50? 30? E', 7708),
('Molamenqing', 'Langtang, Himalaya', '28° 21? 17? N 85° 48? 39? E', 7703),
('Gurla Mandhata', 'Nalakankar Himal, Himalaya', '30° 26? 17? N 81° 17? 53? E', 7694),
('Saser Kangri I', 'Saser Muztagh, Karakoram', '34° 52? 00? N 77° 45? 09? E', 7672),
('Chogolisa', 'Masherbrum, Karakoram', '35° 36? 42? N 76° 34? 18? E', 7665),
('Dhaulagiri IV', 'Dhaulagiri, Himalaya', '28° 44? 09? N 83° 18? 55? E', 7661),
('Kongur Tagh', 'Chaînon Kashgar, Cordillère du Kunlun', '38° 35? 36? N 75° 18? 48? E', 7649),
('Dhaulagiri V', 'Dhaulagiri, Himalaya', '28° 44? 02? N 83° 21? 41? E', 7618),
('Shispare', 'Batura Muztagh, Karakoram', '36° 26? 26? N 74° 40? 51? E', 7611),
('Trivor', 'Hispar Muztagh, Karakoram', '36° 17? 15? N 75° 05? 10? E', 7577),
('Gangkhar Puensum', 'Kula Kangri, Himalaya', '28° 02? 48? N 90° 27? 21? E', 7570),
('Minya Konka', 'Daxue Shan', '29° 35? 43? N 101° 52? 47? E', 7556),
('Annapurna III', 'Annapurna, Himalaya', '28° 35? 05? N 83° 59? 28? E', 7555),
('Mustagh Ata', 'Chaînon Kashgar, Cordillère du Kunlun', '38° 16? 42? N 75° 06? 57? E', 7546),
('Skyang Kangri', 'Baltoro Muztagh, Karakoram', '35° 55? 35? N 76° 34? 03? E', 7545),
('Changtse', 'Mahalangur Himal, Himalaya', '28° 01? 29? N 86° 54? 31? E', 7543),
('Kula Kangri', 'Kula Kangri, Himalaya', '28° 13? 34? N 90° 36? 54? E', 7538),
('Kongur Tiube', 'Chaînon Kashgar, Cordillère du Kunlun', '38° 36? 59? N 75° 11? 55? E', 7530),
('Mamostong Kangri', 'Rimo Muztagh, Karakoram', '35° 08? 27? N 77° 34? 39? E', 7516),
('Saser Kangri II E', 'Saser Muztagh, Karakoram', '34° 48? 15? N 77° 48? 18? E', 7513),
('Saser Kangri III', 'Saser Muztagh, Karakoram', '34° 50? 44? N 77° 47? 06? E', 7495),
('Pic Ismail Samani', 'Chaînon de l''Académie des Sciences, Pamir', '38° 56? 32? N 72° 00? 57? E', 7495),
('Pumari Chhish', 'Hispar Muztagh, Karakoram', '36° 12? 40? N 75° 15? 10? E', 7492),
('Noshaq', 'Hindou Kouch', '36° 26? 00? N 71° 49? 40? E', 7492),
('Pasu Sar', 'Batura Muztagh, Karakoram', '36° 29? 16? N 74° 35? 16? E', 7476),
('Yukshin Gardan Sar', 'Hispar Muztagh, Karakoram', '36° 15? 00? N 75° 22? 30? E', 7469),
('Teram Kangri I', 'Siachen Muztagh, Karakoram', '35° 34? 48? N 77° 04? 42? E', 7462),
('Pic Jongsong', 'Kangchenjunga, Himalaya', '27° 52? 52? N 88° 08? 05? E', 7462),
('Malubiting', 'Rakaposhi-Haramosh, Karakoram', '36° 00? 12? N 74° 52? 31? E', 7458),
('Gangapurna', 'Annapurna, Himalaya', '28° 36? 17? N 83° 57? 51? E', 7455),
('Jengish Chokusu', 'Tian Shan', '42° 02? 06? N 80° 07? 32? E', 7439),
('K12', 'Saltoro Muztagh, Karakoram', '35° 17? 42? N 77° 01? 18? E', 7428),
('Sia Kangri', 'Siachen Muztagh, Karakoram', '35° 39? 48? N 76° 45? 45? E', 7422),
('Yangra (Ganesh I)', 'Ganesh Himal, Himalaya', '28° 23? 28? N 85° 07? 38? E', 7422),
('Momhil Sar', 'Hispar Muztagh, Karakoram', '36° 19? 04? N 75° 02? 11? E', 7414),
('Kabru N', 'Kangchenjunga, Himalaya', '27° 38? 02? N 88° 07? 00? E', 7412),
('Skil Brum', 'Baltoro Muztagh, Karakoram', '35° 51? 03? N 76° 25? 45? E', 7410),
('Haramosh', 'Rakaposhi-Haramosh, Karakoram', '35° 50? 24? N 74° 53? 51? E', 7409),
('Istor-o-Nal', 'Hindou Kouch', '36° 22? 35? N 71° 53? 55? E', 7403),
('Ghent Kangri', 'Saltoro Muztagh, Karakoram', '35° 31? 03? N 76° 48? 01? E', 7401),
('Ultar Sar', 'Batura Muztagh, Karakoram', '36° 23? 54? N 74° 42? 32? E', 7388),
('Rimo I', 'Rimo Muztagh, Karakoram', '35° 21? 21? N 77° 22? 05? E', 7385),
('Churen Himal', 'Dhaulagiri, Himalaya', '28° 44? 06? N 83° 12? 58? E', 7385),
('Teram Kangri III', 'Siachen Muztagh, Karakoram', '35° 35? 59? N 77° 02? 53? E', 7382),
('Sherpi Kangri', 'Saltoro Muztagh, Karakoram', '35° 27? 58? N 76° 46? 53? E', 7380),
('Labuche Kang', 'Labuche, Himalaya', '28° 18? 15? N 86° 21? 03? E', 7367),
('Kirat Chuli', 'Kangchenjunga, Himalaya', '27° 47? 13? N 88° 11? 40? E', 7362),
('Abi Gamin', 'Garhwal Himalaya, Himalaya', '30° 55? 57? N 79° 36? 09? E', 7355),
('Nangpai Gosum', 'Mahalangur Himal, Himalaya', '28° 04? 20? N 86° 36? 52? E', 7350),
('Gimmigela', 'Kangchenjunga, Himalaya', '27° 44? 24? N 88° 09? 28? E', 7350),
('Saraghrar', 'Hindou Kouch', '36° 32? 51? N 72° 06? 54? E', 7349),
('Chamlang', 'Mahalangur Himal, Himalaya', '27° 46? 30? N 86° 58? 47? E', 7321),
('Chomolhari4', 'Chomolhari, Himalaya', '27° 49? 37? N 89° 16? 28? E', 7315),
('Chongtar', 'Baltoro Muztagh, Karakoram', '35° 54? 46? N 76° 25? 47? E', 7315),
('Baltoro Kangri', 'Masherbrum, Karakoram', '35° 38? 21? N 76° 40? 24? E', 7312),
('Siguang Ri', 'Mahalangur Himal, Himalaya', '28° 08? 49? N 86° 41? 06? E', 7309),
('The Crown', 'Yengisogat, Karakoram', '36° 06? 22? N 76° 12? 26? E', 7295),
('Gyala Peri', 'Assam, Himalaya', '29° 48? 47? N 94° 58? 03? E', 7294),
('Porong Ri', 'Langtang, Himalaya', '28° 23? 22? N 85° 43? 17? E', 7292),
('Baintha Brakk (l''Ogre)', 'Panmah Muztagh, Karakoram', '35° 56? 51? N 75° 45? 12? E', 7285),
('Yutmaru Sar', 'Hispar Muztagh, Karakoram', '36° 13? 40? N 75° 22? 05? E', 7283),
('Baltistan Peak (K6)', 'Masherbrum, Karakoram', '35° 25? 06? N 76° 33? 08? E', 7282),
('Kangpenqing', 'Baiku, Himalaya', '28° 33? 03? N 85° 32? 44? E', 7281),
('Muztagh Tower', 'Baltoro Muztagh, Karakoram', '35° 49? 38? N 76° 21? 39? E', 7276),
('Mana', 'Garhwal Himalaya, Himalaya', '30° 52? 51? N 79° 36? 56? E', 7272),
('Dhaulagiri VI', 'Dhaulagiri, Himalaya', '28° 42? 29? N 83° 16? 21? E', 7268),
('Diran', 'Rakaposhi-Haramosh, Karakoram', '36° 07? 19? N 74° 39? 40? E', 7266),
('Labuche Kang III / E5', 'Labuche, Himalaya', '28° 18? 01? N 86° 23? 03? E', 7250),
('Putha Hiunchuli', 'Dhaulagiri, Himalaya', '28° 44? 50? N 83° 08? 55? E', 7246),
('Apsarasas Kangri', 'Siachen Muztagh, Karakoram', '35° 32? 20? N 77° 08? 59? E', 7245),
('Mukut Parbat', 'Garhwal Himalaya, Himalaya', '30° 57? 01? N 79° 34? 07? E', 7242),
('Rimo III', 'Rimo Muztagh, Karakoram', '35° 22? 29? N 77° 21? 42? E', 7233),
('Langtang Lirung', 'Langtang, Himalaya', '28° 15? 20? N 85° 31? 02? E', 7227),
('Karjiang', 'Kula Kangri, Himalaya', '28° 15? 31? N 90° 38? 43? E', 7221),
('Annapurna Dakshin', 'Annapurna, Himalaya', '28° 31? 04? N 83° 48? 27? E', 7219),
('Khartaphu', 'Mahalangur Himal, Himalaya', '28° 03? 45? N 86° 58? 39? E', 7213),
('Tongshanjiabu', 'Lunana, Himalaya', '28° 11? 12? N 89° 57? 27? E', 7207),
('Malangutti Sar', 'Hispar Muztagh, Karakoram', '36° 21? 51? N 75° 08? 52? E', 7207),
('Noijin Kangsang / Norin Kang', 'Nagarze, Himalaya', '28° 56? 48? N 90° 10? 42? E', 7206),
('Langtang Ri', 'Langtang, Himalaya', '28° 22? 53? N 85° 41? 01? E', 7205),
('Kangphu Kang', 'Lunana, Himalaya', '28° 09? 18? N 90° 03? 45? E', 7204),
('Singhi Kangri', 'Siachen Muztagh, Karakoram', '35° 35? 56? N 76° 58? 58? E', 7202),
('Lupghar Sar', 'Hispar Muztagh, Karakoram', '36° 20? 54? N 75° 01? 33? E', 7200),
('Mont Blanc', 'France', '45° 49? 57? N 06° 51? 52? E', 4809),
('Grossglockner', 'Autriche', '47° 04? 27? N 12° 41? 40? E', 3798),
('Finsteraarhorn', 'Suisse', '46° 32? 14? N 08° 07? 34? E', 4274),
('Wildspitze', 'Autriche', '46° 53? 07? N 10° 52? 02? E', 3768),
('Piz Bernina', 'Suisse', '46° 22? 56? N 09° 54? 29? E', 4049),
('Hochkönig', 'Autriche', '47° 25? 13? N 13° 03? 45? E', 2941),
('Pointe Dufour', 'Suisse', '45° 56? 13? N 07° 52? 01? E', 4634),
('Hoher Dachstein', 'Autriche', '47° 28? 31? N 13° 36? 23? E', 2995),
('Marmolada', 'Italie', '46° 26? 05? N 11° 51? 03? E', 3343),
('Mont Viso', 'Italie', '44° 40? 03? N 07° 05? 27? E', 3841),
('Triglav', 'Slovénie', '46° 22? 41? N 13° 50? 13? E', 2864),
('Barre des Écrins', 'France', '44° 55? 21? N 06° 21? 36? E', 4102),
('Säntis', 'Suisse', '47° 14? 58? N 09° 20? 36? E', 2503),
('Ortles', 'Italie', '46° 30? 32? N 10° 32? 41? E', 3905),
('Monte Baldo', 'Italie', '45° 43? 35? N 10° 50? 38? E', 2218),
('Grand Paradis', 'Italie', '45° 31? 05? N 07° 16? 02? E', 4061),
('Pizzo di Coca', 'Italie', '46° 04? 18? N 10° 00? 41? E', 3050),
('Cima Dodici', 'Italie', '45° 59? 51? N 11° 28? 05? E', 2336),
('Dents du Midi', 'Suisse', '46° 09? 40? N 06° 55? 24? E', 3257),
('Chamechaude', 'France', '45° 17? 17? N 05° 47? 24? E', 2082),
('Zugspitze', 'Allemagne / Autriche', '47° 25? 16? N 10° 59? 07? E', 2962),
('Antelao', 'Italie', '46° 27? 09? N 12° 15? 38? E', 3263),
('Arcalod', 'France', '45° 40? 54? N 06° 13? 42? E', 2217),
('Grintovec', 'Slovénie', '46° 21? 25? N 14° 32? 10? E', 2558),
('Grosser Priel', 'Autriche', '47° 43? 01? N 14° 03? 48? E', 2515),
('Grigna Settentrionale', 'Italie', '45° 57? 12? N 09° 23? 15? E', 2410),
('Monte Bondone', 'Italie', '45° 59? 17? N 11° 01? 53? E', 2180),
('Cima Presanella', 'Italie', '46° 13? 12? N 10° 39? 50? E', 3558),
('Birnhorn', 'Autriche', '47° 28? 29? N 12° 44? 02? E', 2634),
('Col Nudo', 'Italie', '46° 13? 39? N 12° 24? 10? E', 2472),
('Pointe Percée', 'France', '45° 57? 20? N 06° 33? 22? E', 2753),
('Montasch', 'Italie', '46° 36? 09? N 13° 26? 01? E', 2752),
('Polinik', 'Autriche', '46° 53? 42? N 13° 09? 29? E', 2784),
('Tödi', 'Suisse', '46° 48? 40? N 08° 54? 53? E', 3614),
('Birkkarspitze', 'Autriche', '47° 24? 40? N 11° 26? 16? E', 2749),
('Ellmauer Halt', 'Autriche', '47° 33? 44? N 12° 18? 11? E', 2344),
('Grande Tête de l''Obiou', 'France', '44° 46? 34? N 05° 50? 27? E', 2790),
('Cima Tosa', 'Italie', '46° 09? 19? N 10° 52? 14? E', 3173),
('Hochtor', 'Autriche', '47° 33? 42? N 14° 37? 58? E', 2369),
('Grimming', 'Autriche', '47° 31? 14? N 14° 01? 01? E', 2351),
('Grand Combin', 'Suisse', '45° 56? 15? N 07° 17? 57? E', 4314),
('La Tournette', 'France', '45° 49? 38? N 06° 17? 11? E', 2351),
('Piz Kesch', 'Suisse', '46° 37? 17? N 09° 52? 22? E', 3418),
('Zirbitzkogel', 'Autriche', '47° 03? 49? N 14° 34? 02? E', 2396);
