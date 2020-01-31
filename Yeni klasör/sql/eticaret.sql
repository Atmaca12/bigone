-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 30 Oca 2020, 22:13:30
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_url` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(350) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analistic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analistic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/20199Nvidia-driver.jpg', 'http://www.youtube.com', 'E ticaret scripti 12', 'php ogrenmeye basladım bu yolda bol sans', 'php ,eticaret,script', 'eren atmaca', '0553 104 15 971', '0553 104 15 97', '0553 104 15 97', 'atmacaeren0@gmail.com', 'Topkapı', 'İstanbul', 'topkapı sarayı ', '7 x 24 acık e ticaret scripti 2', 'ayar_maps_api858', 'ayar_analistic_api', 'ayar_zopim_api', 'www.facebook.com/ 1', 'twitter.com/home', 'www.google.com', 'www.youtube.com', 'mail.alanadiniz.com q', '123456789', 'password', '587', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'ALIŞVERİŞ HAKKINDA K', '<p><strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry<em>.</em> Lorem Ipsum has been the indusy standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesettin <img alt=\"\" src=\"https://cdn.worldvectorlogo.com/logos/php.svg\" style=\"float:right; height:50px; width:50px\" />industry.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indusy standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesettin industry.&nbsp;</strong></p>\r\n\r\n<p><strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry<em>.</em> Lorem Ipsum has been the indusy standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesettin <img alt=\"\" src=\"https://cdn.worldvectorlogo.com/logos/php.svg\" style=\"float:right; height:50px; width:50px\" />industry.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indusy standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesettin industry.&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry<em>.</em> Lorem Ipsum has been the indusy standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesettin <img alt=\"\" src=\"https://cdn.worldvectorlogo.com/logos/php.svg\" style=\"float:right; height:50px; width:50px\" />industry.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indusy standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesettin industry.&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'tAGnKpE4NCI', '2023 vizyonumuz ile beraber dunyanın en iyi ulkesi olma yolundaki adımlarımızı atıyoruz eyyyy ameriga sen kimsin yaa?', 'misyonumuzu GAZİ MUSTAFA KEMAL ATATURK ten almakla beraber calısarak okuyarak ulkemızı arsa cıkarıcagımızdan hıc suphemiz yoktur NE MUTLU TURKUM DİYENE !!!!!');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(1, 'Ayakkabılar', 0, 'ayakkabilar', 0, '1'),
(2, 'Gömlekler', 0, 'gomlekler', 1, '1'),
(3, 'T-shirtler', 0, 't-shirtler', 2, '1'),
(4, 'Pantolonlar', 0, 'pantolonlar', 3, '1'),
(5, 'Şapkalar', 0, 'sapkalar', 4, '1'),
(6, 'Bluzlar', 0, 'bluzlar', 5, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(6, '2020-01-07 19:14:35', '', '123123123123', 'eren ', 'atmacaeren0@gmail.com', '5531041597', 'a088b83896139c89077b739a99af62e7', 'eren atmaca', 'asdasdasfasfasfasf', 'antalya', 'konyaaltı', 'mudur', '5', 0),
(7, '2020-01-07 19:14:35', '', '123123123123', 'eren ', 'atmacaeren0@gmail.com', '5531041597', 'a088b83896139c89077b739a99af62e7', 'mehmet bozkurt', 'asdasdasfasfasfasf', 'antalya', 'konyaaltı', 'mudur', '1', 0),
(8, '2020-01-25 01:36:09', '', '', '', 'selamsahin@gmail.com', '06558424898', 'e10adc3949ba59abbe56e057f20f883e', 'selami şahin', 'istanbul sincan caminin dibinden saha don balıklı golun dibi', 'istanbul', 'fatih', '', '1', 1),
(9, '2020-01-25 13:21:18', '', '', '', 'recep@gmail.com', '06985412353', 'fcea920f7412b5da7be0cf42b8c93759', 'recep altunyanak', '', 'ankara', 'sincan', '', '1', 1),
(10, '2020-01-25 15:09:18', '', '', '', 'mehmet@mehmet.com', '', 'b143bcf4344d9cd4cfe86a05a3e83c74', 'mehmet gözüaçık', '', '', '', '', '1', 1),
(11, '2020-01-27 20:18:27', '', '', '', 'yarakafli@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'yarrakkafalI', '', '', '', '', '1', 1),
(12, '2020-01-30 17:07:49', '', '', '', 'hentai@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', 'henati ', '', '', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda', '', 'hakkimizda', 0, '1', 'hakkimizda'),
(2, '0', 'İletişim', '', '', 1, '1', 'iletisim'),
(6, '', 'Kategoriler ', '', 'kategoriler.php', 2, '1', 'kategoriler'),
(9, '', 'gizlilik kosulları', 'MediaCat Gizlilik Politikası  İşbu Gizlilik Politikası’nda kullanılan “Kişisel Bilgiler” terimi sizi tanımlayabilecek isminiz, doğum tarihiniz, e-posta adresiniz veya posta adresiniz dahil fakat bunlarla sınırlı olmamak kaydıyla kredi kartı bilgileriniz, kimlik bilgileriniz gibi bilgileri ifade etmektedir.  MediaCat olarak, tüm okurlarımızın gizliliğine değer vermekte olup, bizimle paylaşılan kişisel bilgilerin gizliliği ve bilgilerin güvenliğini ile ilgili okurlarımızın kaygılarını saygıyla karşılamaktayız. Gizlilik Politikası gizliliğinizi korumak ve bilgi temininde güvenli bir deneyim sunmak için tasarlamış olup, okurların onayı olmadan kişisel bilgilerini kullanmamayı ve Kişisel Bilgilerin kullanılmasında,  uluslararası alanda kabul edilen mahremiyet koruma standartlarına uymayı taahhüt etmektedir.  MediaCat olarak, platformu kullanmadan veya Kişisel Bilgilerinizi bize iletmeden önce mevcut Gizlilik Politikası’nı okumanızı rica ediyoruz. MediaCat, Gizlilik Politikası’nı bildirimde bulunmaksızın zaman zaman değiştirebilir veyahut da eklemelerde bulunabilir. Bu durumda Gizlilik Politikası’nın söz konusu değişiklikleri yansıtan güncellenmiş halini yükleyecektir. İşbu sebeple güncellenen Gizlilik Politikası hakkında okurların bilgi sahibi olduklarını periyodik olarak gözden geçirmesini öneririz.  MediaCat, okurlarının izniyle Kişisel Bilgileri aşağıdaki amaçlar için kullanacaktır, hiçbir durumda öngörülen amacın dışında kullanmayacaktır.  Elektronik yayınlar göndermek Elektronik posta ile bülten göndermek ya da bildirimler de bulunmak Satın alınan ürünleri teslim etmek Sorularınızı cevaplamak ve etkin bir müşteri hizmeti sunmak Bu amaç için elde edilen bilgiler, tamamen sizin özgür iradenizle tarafımıza sağlanmaktadır. Bu Kişisel Bilgileri bize verip vermemekte okurlar serbesttir. Ancak, okurlarımıza daha çabuk ve kaliteli hizmet sunabilmemiz için, işbu platformda okurlardan talep edilen bilgilerin tamamını vermelerini önermekteyiz. Ayrıca, talep edilen hizmetin gerektirdiği zorunlu bilgilerin verilmemesi durumunda talebin yerine getirilmesinin mümkün olamayacağını dikkatlerinize sunarız. Okurlar tarafından verilen bilgilerin doğru ve eksiksiz olması okurların sorumluluğundadır. Yanlış, yanıltıcı veya eksik bilgi verilmemesi rica olunur. Böyle bir durumda MediaCat hiçbir sorumluluk kabul etmeyecektir. Yanlış, yanıltıcı veya eksik bilgi verilmesi nedeniyle MediaCat’in bir zarara uğraması halinde bu zararı tazmin yükümlülüğü okura aittir.  Kişisel Bilgilere ek olarak platform okurlar tarafından ziyaret edildiğinde okurlar hakkında başkaca bilgiler de toplanabilir, derlenebilir. Otomatik olarak derlenen teşhis edebilirlik niteliğine sahip olmayan bu bilgiler, cookies adı verilen çeşitli teknolojiler ile derlenmektedir. Cookies, web sitesinden bilgisayarların sabit diskine aktarılan küçük çaplı metin dosyalarıdır. Bu bilgileri sitemizi, ilgilendiğiniz ve ihtiyaç duyduğunuz ürünlerimizi değiştirebilmek için toplamaktayız. Tercihen “cookies” reddetmek veya “cookie” gönderildiğinde ikaz edilmek açısından okurlar kendi web gezginlerini ayarlayabilirler.  Girilen sitede “cookie”leri reddetmek, sitenin bazı alanlarını gezmeyi veya site ziyaret edildiğinde kişiselleştirilmiş bilgilerin alınmasını engelleyebilir.  MediaCat toplanan, işlenen ve aktarılan tüm Kişisel Bilgileri korumak için gerekli teknolojik ve kurumsal önlemleri alır ve bu önlemler teknolojik gelişmeye göre sürekli güncellenir ve uyarlanır. İnternet üzerinden iletilen Kişisel Bilgiler’in gizliliği konusunda mutlak bir garanti verilmesinin söz konusu olmadığını hatırlatır, okurlarımıza internet üzerinde Kişisel Bilgiler’ini iletilirken mümkün olan en üst düzey tedbirleri almalarını tavsiye ediyoruz.  Temin edilen Kişiler Bilgiler servisin hizmet amacına yönelik olup, ilke olarak, üçüncü kişilere satılmaz, kiralanmaz ya da başka şekilde kullandırılmaz ve okurlar bizzat aksini talep etmediği sürece üçüncü kişilerle hiçbir suretle paylaşılmaz. Şu kadar ki, MediaCat yürürlükteki mevzuat uyarınca yetkili, idari ve resmi makamlardan usulüne uygun olarak talep gelmesi halinde okurların kendisinde bulunan bilgilerini ilgili yetkili makamlarla paylaşacaktır.  MediaCat vereceğiniz destek ile Kişisel Bilgilerinizi daima güncel ve doğru şekilde tutacaktır. Ancak Kişisel Bilgilerinizin silinmesi, değiştirilmesi veyahut da güncellenmesinin gerektirdiği hallerde bizimle irtibata geçmenizi ve isteklerinizi iletmenizi rica ederiz.', '', 3, '1', 'gizlilik-kosullari'),
(15, '', 'mesafeli satıs sozlesmesi', '<p>MESAFELİ SATIŞ S&Ouml;ZLEŞMESİ</p>\r\n\r\n<p>1.TARAFLAR</p>\r\n\r\n<p>İşbu S&ouml;zleşme aşağıdaki taraflar arasında aşağıda belirtilen h&uuml;k&uuml;m ve şartlar &ccedil;er&ccedil;evesinde imzalanmıştır.</p>\r\n\r\n<p>&lsquo;ALICI&rsquo; ; (s&ouml;zleşmede bundan sonra &quot;ALICI&quot; olarak anılacaktır)</p>\r\n\r\n<p>AD- SOYAD:<br />\r\nADRES:</p>\r\n\r\n<p>&lsquo;SATICI&rsquo; ; (s&ouml;zleşmede bundan sonra &quot;SATICI&quot; olarak anılacaktır)</p>\r\n\r\n<p>AD- SOYAD:<br />\r\nADRES:</p>\r\n\r\n<p>İş bu s&ouml;zleşmeyi kabul etmekle ALICI, s&ouml;zleşme konusu siparişi onayladığı takdirde sipariş konusu bedeli ve varsa kargo &uuml;creti, vergi gibi belirtilen ek &uuml;cretleri &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; altına gireceğini ve bu konuda bilgilendirildiğini peşinen kabul eder.</p>\r\n\r\n<p>2.TANIMLAR</p>\r\n\r\n<p>İşbu s&ouml;zleşmenin uygulanmasında ve yorumlanmasında aşağıda yazılı terimler karşılarındaki yazılı a&ccedil;ıklamaları ifade edeceklerdir.</p>\r\n\r\n<p>BAKAN : G&uuml;mr&uuml;k ve Ticaret Bakanı&rsquo;nı,</p>\r\n\r\n<p>BAKANLIK : G&uuml;mr&uuml;k ve Ticaret Bakanlığı&rsquo;nı,</p>\r\n\r\n<p>KANUN : 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanun&rsquo;u,</p>\r\n\r\n<p>Y&Ouml;NETMELİK : Mesafeli S&ouml;zleşmeler Y&ouml;netmeliği&rsquo;ni (RG:27.11.2014/29188)</p>\r\n\r\n<p>HİZMET : Bir &uuml;cret veya menfaat karşılığında yapılan ya da yapılması taahh&uuml;t edilen mal sağlama dışındaki her t&uuml;rl&uuml; t&uuml;ketici işleminin konusunu ,</p>\r\n\r\n<p>SATICI : Ticari veya mesleki faaliyetleri kapsamında t&uuml;keticiye mal sunan veya mal sunan adına veya hesabına hareket eden şirketi,</p>\r\n\r\n<p>ALICI : Bir mal veya hizmeti ticari veya mesleki olmayan ama&ccedil;larla edinen, kullanan veya yararlanan ger&ccedil;ek ya da t&uuml;zel kişiyi,</p>\r\n\r\n<p>SİTE : SATICI&rsquo;ya ait internet sitesini,</p>\r\n\r\n<p>SİPARİŞ VEREN: Bir mal veya hizmeti SATICI&rsquo;ya ait internet sitesi &uuml;zerinden talep eden ger&ccedil;ek ya da t&uuml;zel kişiyi,</p>\r\n\r\n<p>TARAFLAR : SATICI ve ALICI&rsquo;yı,</p>\r\n\r\n<p>S&Ouml;ZLEŞME : SATICI ve ALICI arasında akdedilen işbu s&ouml;zleşmeyi,</p>\r\n\r\n<p>MAL : Alışverişe konu olan taşınır eşyayı ve elektronik ortamda kullanılmak &uuml;zere hazırlanan yazılım, ses, g&ouml;r&uuml;nt&uuml; ve benzeri gayri maddi malları ifade eder.</p>\r\n\r\n<p>3.KONU</p>\r\n\r\n<p>İşbu S&ouml;zleşme, ALICI&rsquo;nın, SATICI&rsquo;ya ait internet sitesi &uuml;zerinden elektronik ortamda siparişini verdiği aşağıda nitelikleri ve satış fiyatı belirtilen &uuml;r&uuml;n&uuml;n satışı ve teslimi ile ilgili olarak 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanun ve Mesafeli S&ouml;zleşmelere Dair Y&ouml;netmelik h&uuml;k&uuml;mleri gereğince tarafların hak ve y&uuml;k&uuml;ml&uuml;l&uuml;klerini d&uuml;zenler.</p>\r\n\r\n<p>Listelenen ve sitede ilan edilen fiyatlar satış fiyatıdır. İlan edilen fiyatlar ve vaatler g&uuml;ncelleme yapılana ve değiştirilene kadar ge&ccedil;erlidir. S&uuml;reli olarak ilan edilen fiyatlar ise belirtilen s&uuml;re sonuna kadar ge&ccedil;erlidir.</p>\r\n\r\n<p>4. SATICI BİLGİLERİ</p>\r\n\r\n<p>&Uuml;nvanı<br />\r\nAdres<br />\r\nTelefon<br />\r\nFaks<br />\r\nEposta</p>\r\n\r\n<p>5. ALICI BİLGİLERİ</p>\r\n\r\n<p>Teslim edilecek kişi<br />\r\nTeslimat Adresi<br />\r\nTelefon<br />\r\nFaks<br />\r\nEposta/kullanıcı adı</p>\r\n\r\n<p>6. SİPARİŞ VEREN KİŞİ BİLGİLERİ</p>\r\n\r\n<p>Ad/Soyad/Unvan</p>\r\n\r\n<p>Adres<br />\r\nTelefon<br />\r\nFaks<br />\r\nEposta/kullanıcı adı</p>\r\n\r\n<p>7. S&Ouml;ZLEŞME KONUSU &Uuml;R&Uuml;N/&Uuml;R&Uuml;NLER BİLGİLERİ</p>\r\n\r\n<p>1.&nbsp;Malın /&Uuml;r&uuml;n/&Uuml;r&uuml;nlerin/ Hizmetin temel &ouml;zelliklerini (t&uuml;r&uuml;, miktarı, marka/modeli, rengi, adedi) SATICI&rsquo;ya ait internet sitesinde yayınlanmaktadır. Satıcı tarafından kampanya d&uuml;zenlenmiş ise ilgili &uuml;r&uuml;n&uuml;n temel &ouml;zelliklerini kampanya s&uuml;resince inceleyebilirsiniz. Kampanya tarihine kadar ge&ccedil;erlidir.</p>\r\n\r\n<p>7.2.&nbsp;Listelenen ve sitede ilan edilen fiyatlar satış fiyatıdır. İlan edilen fiyatlar ve vaatler g&uuml;ncelleme yapılana ve değiştirilene kadar ge&ccedil;erlidir. S&uuml;reli olarak ilan edilen fiyatlar ise belirtilen s&uuml;re sonuna kadar ge&ccedil;erlidir.</p>\r\n\r\n<p>7.3.&nbsp;S&ouml;zleşme konusu mal ya da hizmetin t&uuml;m vergiler d&acirc;hil satış fiyatı aşağıda g&ouml;sterilmiştir.</p>\r\n', '', 20, '1', 'mesafeli-satis-sozlesmesi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(5, 'slider 1', 'dimg/slider/2168726248202732935020424244982597324344slide-1.jpg', 1, 'http://www.youtube.com', '1'),
(6, 'slider 2', 'dimg/slider/25186290302244826112slide-2.jpg', 2, '', '1'),
(7, 'slider 3', 'dimg/slider/28001250243004731182slide-3.jpg', 3, '', '1'),
(8, 'slider 4', 'dimg/slider/21322282042569323856slide-4.jpg', 4, '', '1'),
(9, 'slider 5', 'dimg/slider/26992204202158120852slide-4.jpg', 5, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1',
  `urun_onecikar` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(2, 3, '2020-01-26 20:43:45', 'lumberjack gomlegi', 'lumberjack-gomlegi', 'Kumaş Detayı: %75 Pamuk %21 Polyamid %4 ElastanRenk: Beyaz, MaviModel Detayı: Mavi Renk Düğme Kapamalı, Yakası Ve Manşeti Metal Aksesuarlı Gömlek', 30.00, 'asdasdasads', '', 100, '1', '1'),
(3, 1, '2020-01-26 22:55:34', 'kundura ', 'kundura', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 200.00, '', 'kundura,ayakkabı', 150, '1', '0'),
(4, 4, '2020-01-27 20:23:24', 'blue jean', 'blue-jean', 'mavi kot pantolon', 50.00, '', 'pantolon,mavi', 100, '1', '1'),
(5, 3, '2020-01-26 20:43:45', 'kırmızıgomlegi', 'kirmizigomlegi', 'Kumaş Detayı: %75 Pamuk %21 Polyamid %4 ElastanRenk: Beyaz, MaviModel Detayı: Mavi Renk Düğme Kapamalı, Yakası Ve Manşeti Metal Aksesuarlı Gömlek', 30.00, '', '', 100, '1', '1'),
(6, 1, '2020-01-26 22:55:34', 'spor', 'spor', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 200.00, 's', 'kundura,ayakkabı', 150, '1', '0'),
(7, 4, '2020-01-27 20:23:24', 'blackjean', 'blackjean', 'mavi kot pantolon', 50.00, '', 'pantolon,mavi', 100, '1', '1'),
(8, 5, '2020-01-26 20:43:45', 'lumberjack gomlegi', 'lumberjack-gomlegi', 'Kumaş Detayı: %75 Pamuk %21 Polyamid %4 ElastanRenk: Beyaz, MaviModel Detayı: Mavi Renk Düğme Kapamalı, Yakası Ve Manşeti Metal Aksesuarlı Gömlek', 30.00, '', '', 100, '1', '1'),
(9, 1, '2020-01-26 22:55:34', 'kundura ', 'kundura', 'vLorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 200.00, '', 'kundura,ayakkabı', 150, '1', '1'),
(10, 4, '2020-01-27 20:23:24', 'blue jean', 'blue-jean', 'mavi kot pantolon', 50.00, '', 'pantolon,mavi', 100, '1', '1'),
(11, 6, '2020-01-26 20:43:45', 'kırmızıgomlegi', 'kirmizigomlegi', 'Kumaş Detayı: %75 Pamuk %21 Polyamid %4 ElastanRenk: Beyaz, MaviModel Detayı: Mavi Renk Düğme Kapamalı, Yakası Ve Manşeti Metal Aksesuarlı Gömlek', 30.00, 'MOqm0qGJhpw', '', 100, '1', '1'),
(12, 6, '2020-01-26 22:55:34', 'spor', 'spor', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', 200.00, '', 'kundura,ayakkabı', 150, '1', '1'),
(13, 5, '2020-01-27 20:23:24', 'blackjean', 'blackjean', 'mavi kot pantolon', 50.00, '', 'pantolon,mavi', 5, '1', '1'),
(14, 5, '2020-01-27 20:23:24', 'blackjean', 'blackjean', 'mavi kot pantolon', 50.00, '', 'pantolon,mavi', 5, '1', '1'),
(15, 1, '2020-01-28 22:42:34', 'swetshirt', 'swetshirt', 'pamuk', 150.00, '', 'shirt', 4, '1', '1'),
(16, 1, '2020-01-28 22:59:52', 'qweqwe', 'qweqwe', 'qweqwe', 40.00, '', 'qweqwe', 123, '1', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
