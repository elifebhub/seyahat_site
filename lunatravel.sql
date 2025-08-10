-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Şub 2024, 00:24:51
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `lunatravel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about`
--

CREATE TABLE `about` (
  `id` int(4) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `adress` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `facebook`, `twitter`, `linkedin`, `pinterest`, `phone`, `email`, `adress`) VALUES
(1, 'Hakkımızda', '      Sitemiz hakkında bilgi verecek olursak; sitemiz uluslararası seyahat konusunda 7 / 24 hizmet vermektedir. Sitemizde dilediğinizce çeşitli rezervasyonlar yaptırabilirsiniz. Ayrıca Şartlarınıza uygun olarak çeşitli rezervasyonları aratarak kolayca bulabilirsiniz. İşte seyahatinize başlamadan önce, sitemiz sayesinde biraz olsun hem daha kolay plan yapabileceksiniz hem de daha ucuza gezebileceksiniz. Doya doya gezin ve keyfini çıkarın...\r\n', 'fa', 'tw', 'ln', 'pin', '+90 55 555 55 55', 'eraseyehat@gmail.com', 'Nereden rezervasyon alabilirim?');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `active`
--

CREATE TABLE `active` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `description` text NOT NULL,
  `score` int(11) NOT NULL,
  `user_rating` decimal(4,2) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `checking` date NOT NULL,
  `checkout` date NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `active`
--

INSERT INTO `active` (`id`, `title`, `image`, `price`, `description`, `score`, `user_rating`, `destination`, `checking`, `checkout`, `adults`, `children`) VALUES
(1, 'Dağ Yürüyüşü', 'uploads/65bee46a4c10a.png', 11.00, 'Reit im Winkl Traunstein bölgesinde, Almanya\'nın Bavyera güneydoğu kesiminde Almanya / Avusturya sınırında bulunan küçük bir köy olup, daha önce bir göç ve gümrük kontrol noktasıdır (Schengen\'in oluşumundan önce). Chiemsee\'in güneyinde ve Biatlon Dünya Kupasına ev sahipliği yapan Ruhpolding\'in güneybatısında, Bavyera Alpleri\'nde ve Tyrol\'e doğru bakmaktadır. ', 4, 8.00, 'Avusturya', '2024-07-09', '2024-07-11', 1, 0),
(2, 'Kayak Merkezi', 'uploads/65bee55f1bb54.png', 30.00, '1933\'te Uludağ’a bir otel, bir de muntazam şose yol yapılmış, böylece bu tarihten itibaren Uludağ kış kayak sporları için bir merkez haline gelmiştir. Düzenli otobüs seferlerinin başlaması da buraya ilgiyi daha da artırmıştır. Sonradan asfaltla kaplanan bu yol Uludağ\'ın Kadıyayla hariç bütün yerleşim birimlerini doğrudan Bursa\'ya bağlar. \r\n', 5, 10.00, 'Türkiye', '2025-01-01', '2025-01-10', 1, 1),
(8, 'Rafting', 'uploads/65c00edb5a382.png', 15.00, 'Rafting dünyanın dört bir yanındaki ekstrem spor seven adrenalin tutkunlarının listesinde üst sıralarda yer alan heyecan verici aktivitedir. Macerayı ve doğayı sevenlerdenseniz siz de rafting sporunu öğrenerek bu heyecanı yaşayabilirsiniz. ', 5, 9.00, 'Rusya', '2024-06-12', '2024-06-13', 1, 0),
(9, 'Dalış', 'uploads/65c00fe61c7a4.png', 22.00, 'Müthiş bir deneyimdir; düşünsenize seyrettiğiniz bir su altı belgeselini yaşamak gibisi yoktur. Emin olun su altına girdiğiniz an ve sonrasındaki her dalışınızda yeni bir dünya keşfetmiş gibi keyif almak mümkündür.', 4, 7.00, 'Türkiye', '2024-07-20', '2024-07-21', 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`id`, `image`, `title`, `description`, `create_at`) VALUES
(3, 'uploads/65bef92aa16d1.jpg', 'Dünyayı merak mı ediyorsunuz?', ' Ocak ayında açıklanan istatistiklere göre Türkiye’de internet kullanım oranı son 1 senede yaklaşık olarak %13’lük bir artış göstermiş. Hemen hemen her online sektörde yaşanan bu gözle görülür patlamadan nasibini alan blog dünyasının son zamanlardaki parlayan yıldızı ise gezi blogları. Hem talep, hem ilgi, hem de arzın günden güne çığ gibi büyüdüğü seyahat blogları arasında seçim yapmaya çalışırken aklınızı kaybetmeniz oldukça olası.', '2023-09-06 00:52:37');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bookings_active`
--

CREATE TABLE `bookings_active` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `active_id` int(11) DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bookings_active`
--

INSERT INTO `bookings_active` (`booking_id`, `user_id`, `active_id`, `booking_date`, `first_name`, `last_name`, `phone_number`) VALUES
(2, 10, 1, '2024-02-04 02:33:30', 'Ayşenur', 'Daşönü', '5555555555');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bookings_car`
--

CREATE TABLE `bookings_car` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bookings_car`
--

INSERT INTO `bookings_car` (`booking_id`, `user_id`, `car_id`, `booking_date`, `first_name`, `last_name`, `phone_number`) VALUES
(3, 10, 2, '2024-02-04 01:41:12', 'Rabia', 'Manga', '5555555555'),
(4, 10, 2, '2024-02-04 01:44:32', 'Rabia', 'Manga', '5555555555');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bookings_cruise`
--

CREATE TABLE `bookings_cruise` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cruise_id` int(11) DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bookings_cruise`
--

INSERT INTO `bookings_cruise` (`booking_id`, `user_id`, `cruise_id`, `booking_date`, `first_name`, `last_name`, `phone_number`) VALUES
(2, 10, 1, '2024-02-04 02:34:50', 'Ayşenur', 'Daşönü', '5555555555');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bookings_flight`
--

CREATE TABLE `bookings_flight` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `flight_id` int(11) DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bookings_flight`
--

INSERT INTO `bookings_flight` (`booking_id`, `user_id`, `flight_id`, `booking_date`, `first_name`, `last_name`, `phone_number`) VALUES
(3, 10, 1, '2024-02-04 02:34:16', 'Ayşenur', 'Daşönü', '5555555555'),
(4, 12, 1, '2024-02-04 12:17:51', 'Elif', 'Berber', '5555555555');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bookings_hotels`
--

CREATE TABLE `bookings_hotels` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bookings_trip`
--

CREATE TABLE `bookings_trip` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `trip_id` int(11) DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bookings_trip`
--

INSERT INTO `bookings_trip` (`booking_id`, `user_id`, `trip_id`, `booking_date`, `first_name`, `last_name`, `phone_number`) VALUES
(5, 10, 1, '2024-02-04 01:34:23', 'Rabia', 'Manga', '5555555555');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `description` text NOT NULL,
  `score` int(11) NOT NULL,
  `user_rating` decimal(4,2) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `checking` date NOT NULL,
  `checkout` date NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `car`
--

INSERT INTO `car` (`id`, `title`, `image`, `price`, `description`, `score`, `user_rating`, `destination`, `checking`, `checkout`, `adults`, `children`) VALUES
(1, 'Range Rover', 'uploads/65bedc75c57fc.jpg', 20.00, 'Range Rover, Land Rover\'ın ürettiği 5 kapılı lüks SUV modelidir. Markanın sahibi Tata Motors şirketidir. Range Rover 1970 yılından beri üretilmektedir. Araç 3 nesildir devam etmektedir. Orijinal modeli sadece Range Rover olarak bilinmektedir. Adının Land Rover ile ayırt edilememesi sonucunda aracın adı Range Rover Classic olmuştur. ', 5, 10.00, 'İtalya', '2024-06-06', '2024-06-07', 1, 1),
(2, 'Tofaş', 'uploads/65bedd1acf2f1.jpg', 10.00, '   Tofaş, hem de hafif ticari araç üretebilen bir otomotiv şirketidir. Türk otomotiv sanayisinin büyük üreticilerinden biri olan Tofaş, yılda 450 bin araçlık üretim kapasitesine ve 10.000\'den fazla çalışana sahiptir. Türk Otomobil Fabrikası A.Ş.', 3, 7.00, 'Türkiye', '2024-03-03', '2024-03-06', 1, 1),
(3, 'Mercedes Benz', 'uploads/65bedded79b88.crdownload', 50.00, ' Mercedes-Benz, 1926 yılında Karl Benz\'in şirketi Benz & Cie. ve Gottlieb Daimler\'in şirketi Daimler Motoren Gesellschaft\'in birleşmesi sonucu kurulmuş otomotiv ve motor markası. Almanya\'nın Stuttgart şehrinde kurulmuştur.', 4, 9.00, 'Almanya', '2024-03-20', '2024-03-22', 2, 2),
(12, 'Honda', 'uploads/65c018a330f66.jpg', 150.00, 'Honda Civic, Honda tarafından ilk olarak küçük araç olarak üretilmeye başlandı. Küçük araç olarak üretilen Civic, zamanla değişikliklere uğrayarak hem daha lüks hem de boyut olarak daha büyüyerek kompakt araç sınıfına doğru adım atmış oldu. ', 5, 9.00, 'Amerika', '2024-02-25', '2024-02-27', 2, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `create_at`, `description`) VALUES
(3, 'Era', 'era@gmail.com', 'Aktivite', '2024-02-04 02:36:10', 'Aktiviteleriniz çok güzel');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cruise`
--

CREATE TABLE `cruise` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `description` text NOT NULL,
  `score` int(11) NOT NULL,
  `user_rating` decimal(4,2) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `checking` date NOT NULL,
  `checkout` date NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cruise`
--

INSERT INTO `cruise` (`id`, `title`, `image`, `price`, `description`, `score`, `user_rating`, `destination`, `checking`, `checkout`, `adults`, `children`) VALUES
(1, 'Mavi Tur', 'uploads/65bedf9ba4c25.png', 10.00, ' Trabzon\'un muhteşem doğa manzarasına karşı Ganita Sahili\'nden kalkacak olan Mavi Tur tekneleri ile günübirlik gezi imkanı başlıyor.', 5, 10.00, 'Türkiye', '2024-08-01', '2024-08-02', 3, 2),
(2, 'Icon Of The Seas', 'uploads/65bf710c3901d.jpg', 3200.00, '    Icon of the Seas, Royal Caribbean International için inşa edilmiş bir yolcu gemisidir ve Icon sınıfının lider gemisidir. 27 Ocak 2024\'te ABD\'nin Miami Limanı\'ndan hizmete girdi. Icon of the Seas, 248.663 gros tonajıyla dünyanın en büyük yolcu gemisidir. ', 5, 10.00, 'Florida', '2024-02-16', '2024-02-23', 3, 3),
(8, 'Msc Seaside', 'uploads/65c0158c10b05.png', 20.00, 'MSC Seaside, şu anda MSC Cruises\'ın sahibi olduğu ve işlettiği Seaside sınıfı bir yolcu gemisidir . Seaside sınıfının lider gemisi olarakşirketin Seaside sınıfına da adını veriyor. 153.516 GT ile, Aralık 2017\'de teslim edilmesiyle İtalyan gemi yapımcısı Fincantieri tarafından şimdiye kadar inşa edilen en büyük yolcu gemisi ve Norveç Epic\'in ardından dünyanın 14.gemisi olacaktı.', 4, 8.00, 'Türkiye', '2024-07-15', '2024-07-20', 2, 2),
(9, 'Costa Toscana', 'uploads/65c016c762821.png', 18.00, 'Denizde yaşama sanatı\r\nYeni Amiral gemimiz Costa Toscana ile unutulmaz bir seyir!\r\nUluslararası sanatçıların yer aldığı gösteriler ve eğlencelerin yanı sıra her yaştan misafir için kaydıraklı yüzme havuzları ile su parkı, son teknoloji bir spa ve spor salonu ve çok daha fazlası sizi bekliyor.\r\nCosta Toscana, filodaki en geniş İtalyan ve uluslararası restoran çeşitliliği ile mükemmel mutfağın kendisi.', 4, 6.00, 'Yunanistan', '2024-09-10', '2024-09-12', 3, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cta_content`
--

CREATE TABLE `cta_content` (
  `id` int(4) NOT NULL,
  `title` varchar(200) NOT NULL,
  `cta_button_link` varchar(300) NOT NULL,
  `scor` int(11) NOT NULL,
  `cta_text` text NOT NULL,
  `cta_button_text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cta_content`
--

INSERT INTO `cta_content` (`id`, `title`, `cta_button_link`, `scor`, `cta_text`, `cta_button_text`) VALUES
(7, 'SİTE HAKKINDA', '', 5, 'Seyahat etmeyi seviyorsanız, bilgi alabileceğiniz kaynakları çoktan keşfetmişsinizdir. Ancak henüz yeterli deneyiminiz yoksa ve yurtdışına seyahate çıkmayı düşünüyorsanız muhtemelen kafanız ne yapacağınız konusunda karışık olabilir. Nasıl seyahat edilir, ekonomik gezebilir miyim, rotamı nasıl belirlemeliyim, nasıl ucuza konaklarım, paramı nasıl taşırım, vize bilgilerini nereden bulabilirim… gibi sorular aklınızı kurcalıyorsa doğru yerdesiniz.', ''),
(8, 'SEYAHAT', '', 5, 'Seyahat önce hayallerde başlar. Sonra ne zaman ki uygulanabilir olacağını anlarsınız, işte o andan itibaren araştırmaya, heyecanlanmaya başlarsınız. Geri sayım başlar. Tam ayrılık vakti geldi mi, “Zamanın ne çabuk geçtiğini anlamadım.” dersiniz.  İşte seyahatinize başlamadan önce, bu siteler sayesinde biraz olsun hem daha kolay plan yapabileceksiniz hem de daha ucuza gezebileceksiniz.', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `flight`
--

CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `description` text NOT NULL,
  `score` int(11) NOT NULL,
  `user_rating` decimal(4,2) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `checking` date NOT NULL,
  `checkout` date NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `flight`
--

INSERT INTO `flight` (`id`, `title`, `image`, `price`, `description`, `score`, `user_rating`, `destination`, `checking`, `checkout`, `adults`, `children`) VALUES
(1, 'Turkish Airlines', 'uploads/65bee247326e5.jpg', 20.00, 'Türk Hava Yolları, Türkiye\'nin ulusal, bayrak taşıyıcı hava yolu şirketidir. Merkezi İstanbul\'da bulunan şirketin uçuş ağı Avrupa, Orta Doğu, Uzak Doğu, Kuzey Afrika, Orta Afrika, Güney Afrika, Kuzey ve Güney Amerika\'ya kadar uzanmaktadır. 2015 yılında 61,2 milyon,[7] 2018 yılında 75,2 milyon, 2019 yılında 74,3 milyon, 2020 yılında 28,0 milyon, 2021 yılında 44,8 milyon yolcu taşımıştır.', 5, 10.00, 'Türkiye', '2024-09-19', '2024-09-20', 1, 1),
(2, 'American', 'uploads/65bee3409eedf.jpg', 10.00, 'American Airlines, (kısaca AA) Amerika Birleşik Devletleri\'nin Teksas eyaletinde, Fort Worth merkezli major havayolu şirketi. ABD\'nin 9 farklı havalimanından yurt içi ve dışında, 50 ülkede 330 farklı noktaya tarifeli seferler düzenlemekte olan AA, Oneworld ittifakı kurucu üyesidir.\r\n', 3, 7.00, 'Amerika', '2024-12-01', '2024-12-12', 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `description` text NOT NULL,
  `score` int(11) NOT NULL,
  `user_rating` decimal(4,2) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `checking` date NOT NULL,
  `checkout` date NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `pet` int(11) NOT NULL,
  `carPark` int(11) NOT NULL,
  `wireless` int(11) NOT NULL,
  `reservations` int(11) NOT NULL,
  `privatePark` int(11) NOT NULL,
  `smoking` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hotels`
--

INSERT INTO `hotels` (`id`, `title`, `image`, `price`, `description`, `score`, `user_rating`, `destination`, `checking`, `checkout`, `adults`, `children`, `pet`, `carPark`, `wireless`, `reservations`, `privatePark`, `smoking`) VALUES
(1, 'Titanik Otel', 'uploads/65bf7155d9845.jpg', 100.00, '       Modern, şık ve zevkli bir anlayışı, lüks ve konforla buluşturan Titanik otel’in ayrıcalıklarla dolu dünyasına hoş geldiniz. Dünyanın en çok tercih edilen destinasyonlarında, evinizdeki konforu yaşayacağınız Titanik otel, seyahatinizi zevkli ve bir o kadar da keyifle geçirmeniz için gerekli olan tüm hizmetleri, profesyonel kadrosu ile en ince ayrıntısına kadar sizin adınıza düşünüyor.\r\n\r\nHer biri birbirinden özel konsepte sahip, çevreci ve modern mimarisi ile göz dolduran Titanik otel, tüm lokasyonlarında dünya mutfaklarından seçkin lezzetleri, sağlık, güzellik, spor ve eğlenceye dair hizmetleri, özgün konukseverliği ile dünya standartlarında sizlere sunuyor.', 5, 10.00, 'Türkiye', '2024-07-01', '2024-07-05', 1, 1, 1, 1, 0, 0, 0, 0),
(2, 'Oasis Otel', 'uploads/65bf73b5a95c7.jpg', 80.00, '  Oasis Otel, Marmaris Plajı hedefine (0,6 km ve İçmeler Plajı hedefine 4,5 km mesafede olmanızı sağlar. Açık havuzda keyifli vakit geçirebilir, restoran olanağından yararlanıp bir şeyler atıştırabilir veya barda/dinlenme salonunda bir içecekle gevşeyebilirsiniz. Havuz kenarı barı ve çocuk havuzu diğer öne çıkan özelliklerdir. Ayrıca odalar, balkon ve 24 saat oda servisi sunmaktadır. Misafirler yardıma hazır personel ve yakında alışveriş olanağı hakkında iyi yorumlarda bulunuyor.\r\n\r\n', 4, 8.00, 'Yunanistan', '2024-08-01', '2024-08-14', 1, 1, 0, 0, 0, 0, 0, 0),
(3, 'Miracle Resort Otel', 'uploads/65bf011b36da8.jpg', 90.00, '    İtalya\'nın incisi ultra her şey dahil olarak hizmet sunan Miracle Resort Hotel, geniş bir alana yayılmış tematik mimarisi, deniz manzaralı aileye uygun ferah odaları, yemyeşil doğası, Akdeniz\'in göz alıcı manzarası ile kusursuz ve unutulmaz tatillerin en özel adresi.\r\n\r\nAntalya Lara\'da bulunan Miracle Resort Hotel, misafirlerine konfor, lezzet, eğlence seçeneklerini bir arada sunarak, doğanın tüm renkleri ve olanaklarıyla iç içe, benzersiz bir tatil yaşamak isteyenler için ayrıcalıklı imkanlar sunuyor.', 5, 9.00, 'İtalya', '2024-09-01', '2024-09-30', 2, 2, 0, 0, 0, 0, 1, 0),
(4, 'Majestic Hotel & Spa Barcelona', 'uploads/65bf72266d045.jpg', 50.00, '    Majestic Hotel & Spa Barcelona\'ya hoş geldiniz! Barselona\'da sizin için ikinci bir yuva olma arzusundaki bu otel, konaklamanızı daha keyifli kılmak üzere birçok farklı tesis olanağı sunuyor.\r\n\r\nBarselona\'nın ünlü gezilecek yerlerinden Passeig de Gracia\'ya (0, 2 km) ve Magic Fountain (Font Magica)\'a (2, 7 km) yakınlığı sayesinde Majestic Hotel Barcelona\'da kalan konuklar buraları kolayca gezebilir.', 5, 8.00, 'İspanya', '2024-05-31', '2024-06-09', 1, 1, 0, 0, 0, 0, 0, 0),
(5, 'Aurora Villa Otel', 'uploads/65bed90125922.jpg', 222.00, '   Alaska\'nın Kuzey Kutbu, Aurora Oval\'in hemen altındaki konumumuz ve istikrarlı, açık havayı teşvik eden eşsiz coğrafyanın birleşiminden dolayı, Aurora Borealis\'i izlemek için dünyadaki en iyi yerlerden biridir. Ancak kuzey ışıklarını görebilmek için gecenin yeterince karanlık olması gerekiyor ve Alaska\'da Aurora Sezonu 21 Ağustos\'tan 21 Nisan\'a kadar sürüyor.', 5, 10.00, 'Alaska', '2024-08-21', '2024-09-01', 1, 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `id` int(4) NOT NULL,
  `title_1` varchar(200) NOT NULL,
  `title_2` varchar(200) NOT NULL,
  `button_url` varchar(300) NOT NULL,
  `button_text` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`id`, `title_1`, `title_2`, `button_url`, `button_text`, `image`) VALUES
(7, 'BUGÜN', 'NEREYE GİDELİM?', '', '', 'uploads/65befbda4fa00.jpg'),
(8, 'BUGÜN', 'NEREYE GİDELİM?', '', '', 'uploads/65befc1946c94.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `trips`
--

CREATE TABLE `trips` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `description` text NOT NULL,
  `score` int(11) NOT NULL,
  `user_rating` decimal(4,2) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `checking` date NOT NULL,
  `checkout` date NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `trips`
--

INSERT INTO `trips` (`id`, `title`, `image`, `price`, `description`, `score`, `user_rating`, `destination`, `checking`, `checkout`, `adults`, `children`) VALUES
(1, 'Belgrad Ormanları', 'uploads/65bf742aaceca.jpg', 2.00, ' Çatalca Yarımadası\'nın en doğu ucunda, İstanbul ilinin Avrupa Yakası\'nda yer alan doğal oluşumlu ağaçlık bölgedir.[2] Doğusunda İstanbul Boğazı, kuzeyinde ise Karadeniz doğal sınırlarıdır. Bizans ve Osmanlı döneminde İstanbul\'a içme suyu sağlayan en önemli kaynakken; günümüzde kente sağladığı su kentin gereksiniminin çok altında olduğu için daha çok rekrasyonel işlevi ağır basmaktadır. Güzel bir otel gitmenizi tavsiye ederim.', 5, 8.00, 'Türkiye', '2024-10-01', '2024-10-02', 1, 1),
(2, 'Eyfel Kulesi', 'uploads/65bee7c367649.jpg', 45.00, 'Paris, Fransa\'nın başkenti ve 105 kilometrekare (41 milkare)\'den fazla alanda 2,175,601 (2018 itibarıyla tahmini nüfus) nüfusu ile en kalabalık şehridir.[1] 17. yüzyıldan beri Paris Avrupa\'nın en önemli finans, diplomasi, ticaret, moda, gastronomi, bilim ve sanat merkezlerindendir.', 5, 9.00, 'Paris', '2024-04-04', '2024-04-10', 1, 1),
(8, 'Venedik', 'uploads/65bee8942bc57.jpg', 60.00, 'Venedik (İtalyanca: Venezia [veˈnɛttsia], Venedikçe: Venexia [veˈnɛsja]), kuzeydoğu İtalya\'da birbirinden kanallarla ayrılmış ve köprülerle bağlanan 118 adanın üzerine kuruludur. Şehir, kıyı şeridi boyunca uzanan Venedik Lagünü\'nde, Po ve Piave nehirlerinin deltaları arasına kuruludur. Venedik doğal güzelliği, mimarisi ve sanat eserleri ile ün yapmıştır. Bu şehir bütünüyle, deniz kulağı da dahil, Dünya Mirası listesi listesindedir.\r\n', 5, 9.00, 'İtalya', '2024-06-11', '2024-06-14', 1, 1),
(14, 'Çin Seddi', 'uploads/65c017bceb4d7.jpg', 10.00, 'Çin Seddi, Çin\'in kuzeybatısı boyunca uzanan, dünyanın en uzun savunma duvarıdır. Kalıntıları Po Hay Körfezi\'nde deniz kıyısında başlar. Pekin\'in kuzeyinden geçerek batıya yönelir ve Huang-Ho Nehri\'ni ikiye bölerek güneybatıya uzanır. Gobi Çölü\'nün güneyinden batıya yönelerek devam eder.', 3, 5.00, 'Çin', '2024-11-11', '2024-11-15', 2, 0),
(15, 'Meeru Adası', 'uploads/65c01997b5f9e.png', 50.00, 'Meeru Adası’na sadece tekne ile ulaşabildiği için bu ada, hayatın karmaşasından biraz olsun kaçmak için mükemmel bir fırsat. Ayrıca ada içerisinde misafire özel villaların, plajın, SPA ve restoranların olduğu lüks bir otel bulunuyor. Yani sadece manzarası ile değil, imkanlarıyla da dünyanın en güzel yeri.', 5, 10.00, 'Maldivler', '2024-05-15', '2024-05-20', 2, 0),
(16, 'Ubud', 'uploads/65c01a5a0b362.png', 10.00, 'Endonezya’nın Bali adasında yer alan Ubud, el işi sanatlarının, ağaç oymacılığının ve müzeciliğin gelişmiş olduğu bir noktadır. Burada ayrıca antik tapınaklar, görkemli kraliyet sarayları, yeşil tepeler ve pirinç terasları görülmelidir. Bu bölgeyi ziyaret etmeniz için en uygun dönemin ise Nisan-Mayıs-Haziran-Eylül-Ekim ayları olduğunu belirtmek isteriz.', 5, 9.00, 'Endonezya', '2024-11-01', '2024-11-30', 2, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `username` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `mypassword`, `email`, `create_at`, `admin`) VALUES
(10, 'Era', '$2y$10$bOg8Wvg865E00/mqx8X.ZuCwySuJZkuo//koArI0vusKIjhBvKKrW', 'era@gmail.com', '2024-02-03 23:33:47', 1),
(11, 'Ayşenur', '$2y$10$GVjRZU03ZDyZ0225wxjzDumEWxxJGpqS1vvyUF0a1Xyqi8a4JFunu', 'aysenur@gmail.com', '2024-02-03 23:35:02', 0),
(12, 'Elif', '$2y$10$GQ2Cq.w0qB8PjYci0MEhh.NNb6L/O1iDXBvyk6leeiA3kLvYLN6oG', 'elif@gmail.com', '2024-02-03 23:35:31', 0),
(13, 'Rabia', '$2y$10$4qjfhLGWNYRvamaR.5Ih9eoGf025KUMnW1rwtmWmerwYwcaRR6Gzu', 'rabia@gmail.com', '2024-02-03 23:36:57', 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `active`
--
ALTER TABLE `active`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bookings_active`
--
ALTER TABLE `bookings_active`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `active_id` (`active_id`);

--
-- Tablo için indeksler `bookings_car`
--
ALTER TABLE `bookings_car`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Tablo için indeksler `bookings_cruise`
--
ALTER TABLE `bookings_cruise`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cruise_id` (`cruise_id`);

--
-- Tablo için indeksler `bookings_flight`
--
ALTER TABLE `bookings_flight`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Tablo için indeksler `bookings_hotels`
--
ALTER TABLE `bookings_hotels`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Tablo için indeksler `bookings_trip`
--
ALTER TABLE `bookings_trip`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `trip_id` (`trip_id`);

--
-- Tablo için indeksler `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cruise`
--
ALTER TABLE `cruise`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cta_content`
--
ALTER TABLE `cta_content`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about`
--
ALTER TABLE `about`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `active`
--
ALTER TABLE `active`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `bookings_active`
--
ALTER TABLE `bookings_active`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `bookings_car`
--
ALTER TABLE `bookings_car`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `bookings_cruise`
--
ALTER TABLE `bookings_cruise`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `bookings_flight`
--
ALTER TABLE `bookings_flight`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `bookings_hotels`
--
ALTER TABLE `bookings_hotels`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `bookings_trip`
--
ALTER TABLE `bookings_trip`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `cruise`
--
ALTER TABLE `cruise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `cta_content`
--
ALTER TABLE `cta_content`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `bookings_active`
--
ALTER TABLE `bookings_active`
  ADD CONSTRAINT `bookings_active_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookings_active_ibfk_2` FOREIGN KEY (`active_id`) REFERENCES `active` (`id`);

--
-- Tablo kısıtlamaları `bookings_car`
--
ALTER TABLE `bookings_car`
  ADD CONSTRAINT `bookings_car_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookings_car_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`);

--
-- Tablo kısıtlamaları `bookings_cruise`
--
ALTER TABLE `bookings_cruise`
  ADD CONSTRAINT `bookings_cruise_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookings_cruise_ibfk_2` FOREIGN KEY (`cruise_id`) REFERENCES `cruise` (`id`);

--
-- Tablo kısıtlamaları `bookings_flight`
--
ALTER TABLE `bookings_flight`
  ADD CONSTRAINT `bookings_flight_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookings_flight_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`id`);

--
-- Tablo kısıtlamaları `bookings_hotels`
--
ALTER TABLE `bookings_hotels`
  ADD CONSTRAINT `bookings_hotels_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookings_hotels_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`);

--
-- Tablo kısıtlamaları `bookings_trip`
--
ALTER TABLE `bookings_trip`
  ADD CONSTRAINT `bookings_trip_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookings_trip_ibfk_2` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
