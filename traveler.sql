-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-01-12 00:32:44
-- サーバのバージョン： 10.4.24-MariaDB
-- PHP のバージョン: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `traveler`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `areas`
--

INSERT INTO `areas` (`id`, `name`) VALUES
(1, '北海道'),
(2, '岩手県'),
(3, '宮城県'),
(4, '青森県'),
(5, '秋田県'),
(6, '福島県'),
(7, '山形県'),
(8, '栃木県'),
(9, '茨城県'),
(10, '群馬県'),
(11, '千葉県'),
(12, '埼玉県'),
(13, '東京都'),
(14, '神奈川'),
(15, '新潟県'),
(16, '山梨県'),
(17, '長野県'),
(18, '富山県'),
(19, '石川県'),
(20, '福井県'),
(21, '愛知県'),
(22, '三重県'),
(23, '岐阜県'),
(24, '静岡県'),
(25, '奈良県'),
(26, '兵庫県'),
(27, '大阪府'),
(28, '京都府'),
(29, '和歌山'),
(30, '滋賀県'),
(31, '岡山県'),
(32, '島根県'),
(33, '鳥取県'),
(34, '広島県'),
(35, '山口県'),
(36, '徳島県'),
(37, '香川県'),
(38, '愛媛県'),
(39, '高知県'),
(40, '福岡県'),
(41, '佐賀県'),
(42, '長崎県'),
(43, '熊本県'),
(44, '大分県'),
(45, '宮崎県'),
(46, '鹿児島県'),
(47, '沖縄県');

-- --------------------------------------------------------

--
-- テーブルの構造 `hotels`
--

CREATE TABLE `hotels` (
  `id` int(32) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_id` int(32) DEFAULT NULL,
  `area_id` int(32) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `picture_id`, `region_id`, `area_id`, `address`, `tel`, `detail`) VALUES
(1, '京王プラザホテル札幌', 'id1_1', 1, 1, '北海道札幌市中央区北５条西７丁目２番地１', '011-271-0111', '札幌駅から徒歩5分の好立地。心温まるサービスと上質なステイが叶う高層シティホテル。駐車場は300台収容可能の為、お車の来館でも安心です。'),
(2, 'あかん遊久の里鶴雅', 'id1_2', 1, 1, '北海道釧路市阿寒町阿寒湖温泉４丁目６−１０', '0154-67-4000', '阿寒湖の西側に位置する「あかん遊久の里鶴雅」。疲れを癒す温泉と山海の美味、日本の旅館文化を継承するおもてなしをご堪能ください。'),
(3, '湯の川プリンスホテル渚亭', 'id1_3', 1, 1, '北海道函館市湯川町１丁目２−２５', '0138-57-3911', '大浴場・露天風呂からは、眼前に津軽海峡を彼方に函館山を望むことができ、とびきりのロケーションを味わうことができます。'),
(4, 'JRタワーホテル日航札幌', 'id1_4', 1, 1, '北海道札幌市中央区北５条西２丁目5番地', '011-251-2222', 'ＪＲ札幌駅南口に直結し、北海道最高層のランドマーク。窓から広がる四季折々の札幌の街、遥かに望む山々等札幌のパノラマビューを満喫いただけます。');

-- --------------------------------------------------------

--
-- テーブルの構造 `itineraries`
--

CREATE TABLE `itineraries` (
  `id` int(11) NOT NULL,
  `user_id` int(32) DEFAULT NULL,
  `region_id` int(32) DEFAULT NULL,
  `area_id` int(32) DEFAULT NULL,
  `tour_date` varchar(255) DEFAULT NULL,
  `departure_day1` varchar(255) DEFAULT NULL,
  `touristarea_num1` varchar(255) DEFAULT NULL,
  `touristarea_num2` varchar(255) DEFAULT NULL,
  `hotel_id` int(32) DEFAULT NULL,
  `departure_day2` varchar(255) DEFAULT NULL,
  `touristarea_num3` varchar(255) DEFAULT NULL,
  `touristarea_num4` varchar(255) DEFAULT NULL,
  `arrival` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `itineraries`
--

INSERT INTO `itineraries` (`id`, `user_id`, `region_id`, `area_id`, `tour_date`, `departure_day1`, `touristarea_num1`, `touristarea_num2`, `hotel_id`, `departure_day2`, `touristarea_num3`, `touristarea_num4`, `arrival`) VALUES
(2, 2, 1, 1, '2023-01-01', 'ホテル', '大通公園', 'すすきの', 2, 'ホテル', '小樽', 'ガラス館', 'ホテル'),
(7, 3, NULL, NULL, NULL, '', 'サロマ湖', '', NULL, '', '', 'サロマ湖', ''),
(8, 3, 1, 1, '2023-01-13', '', '', '', NULL, '', '', '', ''),
(9, 3, 1, 1, '2023-01-19', '', '', '', NULL, '', '', '', ''),
(10, 3, 1, 1, '2023-01-19', '', '', '', NULL, '', '', '', ''),
(11, 3, 1, 1, '2023-01-20', '', '', '', NULL, '', '', '', ''),
(12, 3, 1, 1, '2023-01-27', '', '', '', NULL, '', '', '', ''),
(13, 3, 1, 1, '2023-01-27', '自宅', '', '', NULL, '', '', '', ''),
(16, 3, 1, 1, '2023-02-01', 'a', 'サロマ湖', 'サロマ湖', 1, 'a', 'サロマ湖', '有珠山金比羅山火口', 'a');

-- --------------------------------------------------------

--
-- テーブルの構造 `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `hotel_id` int(32) DEFAULT NULL,
  `room_id` int(32) DEFAULT NULL,
  `price` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `prices`
--

INSERT INTO `prices` (`id`, `hotel_id`, `room_id`, `price`) VALUES
(1, 1, 1, 5000),
(2, 1, 2, 4500),
(3, 1, 3, 4000),
(4, 1, 4, 3500),
(5, 1, 5, 3000),
(6, 2, 6, 10000),
(7, 2, 7, 10000),
(8, 2, 9, 25000),
(9, 3, 1, 5000),
(10, 3, 2, 4000),
(11, 3, 4, 3000);

-- --------------------------------------------------------

--
-- テーブルの構造 `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `regions`
--

INSERT INTO `regions` (`id`, `name`) VALUES
(1, '北海道'),
(2, '東北'),
(3, '北関東'),
(4, '首都圏'),
(5, '甲信越'),
(6, '北陸'),
(7, '東海'),
(8, '近畿'),
(9, '山陽・山陰'),
(10, '四国'),
(11, '九州'),
(12, '沖縄');

-- --------------------------------------------------------

--
-- テーブルの構造 `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `roomtype` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `rooms`
--

INSERT INTO `rooms` (`id`, `roomtype`) VALUES
(1, 'シングル'),
(2, 'ツイン'),
(3, 'ダブル'),
(4, 'トリプル'),
(5, 'フォース'),
(6, '和室'),
(7, '和洋室'),
(8, '洋室'),
(9, '特別室');

-- --------------------------------------------------------

--
-- テーブルの構造 `touristareas`
--

CREATE TABLE `touristareas` (
  `id` int(11) NOT NULL,
  `region_id` int(32) DEFAULT NULL,
  `area_id` int(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `english_name` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `touristareas`
--

INSERT INTO `touristareas` (`id`, `region_id`, `area_id`, `name`, `english_name`, `genre`, `address`, `detail`) VALUES
(1, 1, 1, 'サロマ湖', 'saromako', '景勝地', '北海道紋別郡湧別町', '北海道内で一番、全国でも三番目に大きな湖です。ホタテ、カキの養殖、ホッカイシマエビの漁が盛んです。湖周辺ではサンゴ草や水芭蕉など様々な花を見ることとができます。'),
(2, 1, 1, '有珠山金比羅山火口', 'ususan', '景勝地', '北海道虻田郡洞爺湖町洞爺湖温泉142', '噴火災害を次世代に伝えるために、被災状態のまま保存された建物を見ることができる。洞爺湖温泉街の近くにあり、散策路が設置されている。2000年の噴火で生じた２つの火口を間近に見ることもできる。'),
(3, 1, 1, '洞爺湖', 'toyako', '景勝地', '北海道虻田郡洞爺湖町洞爺町', '支笏洞爺国立公園にある湖で日本で9番目の大きさを誇る。火山活動によってできたカルデラ湖であり、周囲に昭和新山、有珠山、遠くに羊蹄山を望む。湖の中央にある中島には中島湖の森博物館がある。南西岸は洞爺湖温泉で、旅館やホテルが林立し、バスや遊覧船の拠点となっている。山々と湖がおりなす景観美は、北海道三大景観に数えられる。'),
(4, 1, 1, 'コムケ原生花園', 'komuke', '景勝地', '北海道紋別市沼上コムケ湖畔', 'ハマナス、エゾカンゾウ、カワラナデシコなど群生。内陸高山性の珍しいガンコウラン、コケモモ等混生。');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` int(2) NOT NULL DEFAULT 1,
  `del_flg` int(32) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `tel`, `address`, `password`, `role`, `del_flg`) VALUES
(1, 'administrator', 'administrator', NULL, NULL, '0000', 0, 0),
(2, 'テストユーザー１', 'test@a.a', '090-0000-0001', '愛知県', '1111', 1, 0),
(3, 'a', 'a@a.a', '000-000-0000', '香川', '111111', 1, 0),
(4, 'test', 'b@b.b', '090-000-0000', '愛媛県', '333333', 1, 0),
(6, 'テスト', 'aaa@a.a', '090-777-8888', '愛知県', '222222', 1, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `itineraries`
--
ALTER TABLE `itineraries`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `touristareas`
--
ALTER TABLE `touristareas`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `itineraries`
--
ALTER TABLE `itineraries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- テーブルの AUTO_INCREMENT `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- テーブルの AUTO_INCREMENT `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- テーブルの AUTO_INCREMENT `touristareas`
--
ALTER TABLE `touristareas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
