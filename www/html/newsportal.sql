-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 04:20 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2021-05-26 18:30:00', '2021-11-11 16:23:15'),
(5, 'Syromalabar', 'c52ec1474ab343f76a5b8797529f4a31', 'rcsc@gmail.com', 0, '2023-02-21 15:51:09', NULL),
(6, 'Mcatholic', '0a1d2d76f4ecb7e14263ca17d94a3ea6', 'malankara@gmail.com', 0, '2023-03-01 04:20:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Roman Catholic', 'Related to RC', '2021-06-05 18:30:00', '2023-02-21 07:26:13', 1),
(5, 'Orthodox', 'News related to Orthodox Churches', '2021-06-13 18:30:00', '2023-02-21 07:27:30', 1),
(6, 'Protastant', 'News related to Protastant Churches', '2021-06-21 18:30:00', '2023-02-21 07:46:21', 1),
(7, 'Other Churches', 'News Related to Other Churches', '2021-06-21 18:30:00', '2023-02-21 07:47:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About  C News ', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">True News by the hands of trusted once.</span></font>', '2021-06-29 18:30:00', '2023-02-21 12:33:43'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>New Delhi India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>phpgurukulofficial@gmail.com</p>', '2021-06-29 18:30:00', '2021-11-06 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(14, 'Letter from Pope Francis', 3, 11, '<p>സിറോ മലബാർ സഭയിലെ മെത്രാന്മാർക്കും വൈദികർക്കും സന്യസ്തർക്കും വിശ്വാസികൾക്കുമായി പരിശുദ്ധ പിതാവ് ഫ്രാൻസിസ് മാർപാപ്പ എഴുതുന്ന കത്ത്&nbsp;</p><p><br></p><p>മിശിഹായിൽ പ്രിയ സഹോദരീ സഹോദരന്മാരേ,</p><p><br></p><p>സിറോ മലബാർ സഭയുടെ മെത്രാൻ സിനഡ് 1999-ൽ കുർബാനയർപ്പണത്തിന്റെ ഏകീകരണത്തിനായി ഏകകണ്ഠമായി എടുത്ത തീരുമാനത്തെ പ്രത്യേക അംഗീകാരത്തോടും പ്രോത്സാഹനത്തോടും കൂടിയാണ് പരിശുദ്ധ സിംഹാസനം പരിഗണിക്കുന്നത്. തുടർന്നു വന്ന വർഷങ്ങളിൽ പരിശുദ്ധ സിംഹാസനം&nbsp; ഈ തീരുമാനത്തിന്&nbsp; ആവർത്തിച്ച് അംഗീകാരം നൽകുകയും ചെയ്തിട്ടുള്ളതാണ്. നിങ്ങളുടെ പ്രിയപ്പെട്ട സഭയിൽ മുഴുവൻ വർദ്ധമാനമായ സ്ഥിരതയും സഭാത്മകമായ ഐക്യവും സംജാതമാവുന്നതിന് ഈ ഐക്യതീരുമാനം അതിപ്രധാനമായ ഒരു കാൽവെയ്‌പ്പ് ആണ്. മഹാ ജൂബിലി വർഷത്തിൽ (2000) ശ്രേഷ്ഠമായ ഈ തീരുമാനം നടപ്പിലാക്കുന്നതിനുള്ള നിങ്ങളുടെ കൂട്ടായ പരിശ്രമങ്ങൾ നമ്മുടെ മുൻഗാമിയായ വിശുദ്ധ ജോൺ പോൾ രണ്ടാമൻ മാർപാപ്പയ്ക്ക് നിങ്ങളുടെ സ്വയാധികായ സഭയിൽ സഭയിൽ സന്തോഷപൂർവമായ പ്രതീക്ഷ നൽകി.</p><p><br></p><p>നിങ്ങളുടെ ഊർജ്ജസ്വലമായ സഭയിൽ നിലനിൽക്കുന്നതും തുടർ നടപടികൾ ആവശ്യമുള്ളതുമായ ചില എതിർപ്പുകൾക്കിടയിലും മെത്രാൻ സംഘത്തിന്റെ നിരന്തരമായ അഭിപ്രായ ഐക്യം പരിശുദ്ധാത്മാവിന്റെ പ്രവർത്തനഫലമാണെന്ന് മനസ്സിലാക്കി സമാധപൂർവ്വമായും പ്രാര്ഥനാപൂർവ്വമായും കുർബാനയർപ്പണത്തിന്റെ ഏകീകരണത്തിനായുള്ള ഔദ്യോഗിക രീതി നടപ്പിലാക്കിയ പ്രദേശങ്ങളിൽ, പ്രത്യേകിച്ചും മിഷൻ രൂപതകളിൽ, സുവിഷവത്കരണത്തിന്റെ വിജയം ഉൾപ്പെടെ ഗണ്യമായ സത്ഫലങ്ങൾ ലഭിച്ചു.&nbsp;</p><p><br></p><p>തങ്ങളെടുത്ത ഐക്യതീരുമാനത്തിൽ നിലനിൽക്കാൻ സിറോ മലബാർ മെത്രാന്മാരോട് ഞാൻ ആവശ്യപ്പെടുന്നു. “സ്ഥലത്തേക്കാൾ സമയം പ്രധാനപ്പെട്ടതാണ്” (cf. Evangelii Gaudium, 222-225) എന്നും “സംഘർഷത്തിനു മുകളിൽ ഐക്യം പ്രാമുഖ്യം നേടുന്നു” (cf. Ibid, 226-230) എന്നും വിശ്വസിച്ച് ദൈവജനവുമൊത്ത് “ഒരുമിച്ച് നടക്കാനുള്ള” അവരുടെ സഭാത്മകമായ തീരുമാനത്തെ ഞാൻ സ്ഥിരീകരിക്കുന്നു.</p><p><br></p><p>നിങ്ങളുടെ സഭയുടെ ഉപരി നന്മയ്ക്കും ഐക്യത്തിനും വേണ്ടി വിശുദ്ധ കുർബാനയർപ്പണത്തിന്റെ&nbsp; ഏകീകൃത രീതി ഉടനടി നടപ്പിലാക്കാൻ എല്ലാ വൈദികരെയും സന്യസ്തരെയും വിശ്വാസികളെയും ഉപദേശിക്കുന്നതിന് പുതിയ റാസ കുർബാന തക്‌സയ്ക്ക് അംഗീകാരം നൽകുന്ന സന്ദർഭം ഞാൻ ബോധപൂർവ്വം ഉപയോഗിക്കുന്നു.സിനഡൽ തീരുമാനം നടപ്പിലാക്കാൻ നിങ്ങൾ പ്രവർത്തിക്കുമ്പോൾ പരിശുദ്ധാത്മാവ് നിങ്ങളുടെ സഭയിലെ എല്ലാ അംഗങ്ങളിലും ഐക്യവും സാഹോദര്യവും കൂട്ടായ്മയും വളർത്തട്ടെ.</p><p><br></p><p>പരിശുദ്ധ കന്യാമറിയത്തിന്റെയും പുണ്യപിതാവായ ​മാർ യൗസെപ്പിന്റെയും മാർത്തോമാ ശ്ലീഹായുടെയും മധ്യസ്ഥതയിൽ നിങ്ങളെ എല്ലാവരെയും ഭരമേൽപ്പിച്ചുകൊണ്ട്, ഞാൻ സന്തോഷപൂർവ്വം എന്റെ ശ്ലൈഹീക ആശീർവാദം നൽകുന്നു. പ്രാർത്ഥനയിലുള്ള എന്റെ അടുപ്പം ഞാൻ നിങ്ങൾക്ക് ഉറപ്പുനൽകുന്നു. ദയവായി എനിക്കുവേണ്ടി പ്രാർത്ഥിക്കാൻ നിങ്ങളോട് ആവശ്യപ്പെടുന്നു.</p><p><br></p><p>ഫ്രാൻസിസ് മാർപാപ്പ&nbsp;</p><p><br></p><p>റോം, സെന്റ് ജോൺ ലാറ്ററൻ, 3 ജൂലൈ 2021</p>', '2023-02-21 15:40:25', '2023-03-01 05:09:08', 1, 'Letter-from-Pope-Francis', '0b99a95066ac04c8d3d896882017e164jpeg', 6, 'admin', 'Syromalabar'),
(15, 'Orthodox Church of Finland', 5, 15, '<p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap;\">The Orthodox Church of Finland is celebrating its 1st centenary as part of the Ecumenical Patriarchate. The Tomos in 1923 confirmed the separation of the Church </span><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space: pre-wrap; animation-name: none !important; transition-property: none !important;\"><a tabindex=\"-1\" style=\"color: rgb(56, 88, 152); cursor: pointer; font-family: inherit; animation-name: none !important; transition-property: none !important;\"></a></span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap;\">of Finland from the Moscow Patriarchate and its autonomy within the Ecumenical Patriarchate.</span><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space: pre-wrap; animation-name: none !important; transition-property: none !important;\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1fey0fg\" href=\"https://orthodoxtimes.com/the-ecumenical-patriarch-bartholomew-to-visit-finland/?fbclid=IwAR2iI344cfJPB67gv3B12An8iIC9XYYwUcJ8YPVvPQnzEK8sFLRdEVcv8lw\" rel=\"nofollow noopener\" role=\"link\" tabindex=\"0\" target=\"_blank\" style=\"color: var(--blue-link); cursor: pointer; margin: 0px; text-align: inherit; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; -webkit-tap-highlight-color: transparent; list-style: none; touch-action: manipulation; display: inline; font-family: inherit; animation-name: none !important; transition-property: none !important;\"> https://orthodoxtimes.com/the-ecumenical-patriarch-bartholomew-to-visit-finland</a></span><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap;\"><a href=\"https://orthodoxtimes.com/the-ecumenical-patriarch-bartholomew-to-visit-finland/?fbclid=IwAR2iI344cfJPB67gv3B12An8iIC9XYYwUcJ8YPVvPQnzEK8sFLRdEVcv8lw\" target=\"_blank\">/</a></span><br></p>', '2023-02-21 15:45:20', '2023-02-21 15:46:18', 1, 'Orthodox-Church-of-Finland', 'f6ac4ebc3a153ed9e7ecd1d8e42e396b.jpg', 1, 'admin', NULL),
(16, 'Ash Wednesday', 3, 11, '<p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">സീറോ മലബാർ ആരാധന ക്രമത്തിലെ കുരിശുവര പെരുന്നാൾ (വിഭൂതി തിരുനാൾ) തിങ്കളാഴ്ചയും ലത്തീൻ ആരാധനക്രമത്തിൽ ബുധനാഴ്ചയും....</span><br></p>', '2023-02-21 15:56:41', '2023-02-21 15:56:50', 1, 'Ash-Wednesday', '9ec32a5243fa0ade8505d2b70367744a.jpg', 1, 'Syromalabar', NULL),
(17, 'Pope Francis', 3, 11, '<font color=\"#050505\" face=\"Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15px;\">Pope Francis</span></font>', '2023-02-21 16:02:02', '2023-02-21 16:02:24', 1, 'Pope-Francis', '03f878bc8b1d0894c25433533c50916f.jpg', 1, 'Syromalabar', NULL),
(18, 'Indian Orthodox', 5, 14, '<p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">പരിശുദ്ധ വട്ടശ്ശേരിൽ തിരുമേനി മലങ്കര സഭയുടെ കാവൽക്കാരൻ……</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">അന്നും ഇന്നും എന്നും..…</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">പരിശുദ്ധ വട്ടശ്ശേരിൽ തിരുമേനി മാർത്തോമാ ശ്ലീഹായാൽ പൗരോഹിത്യം നൽകപ്പെട്ട 4 കുടുംബങ്ങളിൽ ഒന്നായ പകലോമറ്റം തറവാട്ടിൽ ജനിച്ചു. 1818 വരെ മലങ്കര സഭയ്ക്ക് മെത്രാൻമാരെ വാഴിച്ചിരുന്ന പ്രസിദ്ധമായ തറവാടാണ് പകലോമറ്റം തറവാട്. സുറിയാനിയിലും ഇംഗ്ലീഷിലും അന്നത്തെ കാലത്ത് പരിശുദ്ധ തിരുമേനിക്കു ഉണ്ടായിരുന്ന അവഗാഹം വളരെ ശ്രേഷ്ഠമായിരുന്നു. വിശുദ്ധ കുർബ്ബാന തക്സ സുറിയാനി ഭാഷയിൽ നിന്നും പൂർണ്ണമായും തർജ്ജമ ചെയ്തു മലയാളത്തിലേക്ക് മാറ്റുവാൻ തിരുമേനിയുടെ സുറിയാനി പരിജ്ഞാനം അങ്ങേയറ്റം സഹായകമായി എന്ന് വേണം പറയാൻ.</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; animation-name: none !important; transition-property: none !important;\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1fey0fg\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fqrgo.page.link%2FPe76L%3Ffbclid%3DIwAR3iTMQvWtWEZ9jSF9cuYUWNUEBtkd3g5pW65zcPNEQkYfF_hDTY6ubEGbU&amp;h=AT36bUX3tf_1WO9ydbii4ASZcJwqacsPHGweDJUph1erqxVICtL8_z-JSzMS9gx2_XDZj6kDQxrN3OTKwAyarl4FOdyKqnz6u4koZdiMeieMXvEjctd8IEGbvp1ViL9osUf7&amp;__tn__=-UK*F&amp;c[0]=AT13EUElUCBsL3uWEdOwMiGTV7wpsY4-BFGmXrNJx0MSuhCRAfjkeKnycpMiBFLdDYqvYpnVqwbVOIBa1svp4uorWwXQp16EEtBb9hK9L_oiCSUID6b26F9KbcaeDjQBotJf1LhZSLLtkwHIRzIOhETXqY-ZaxpK5uA3advL0IQO2BTqe8N8qEHJCgytT7xXsnhexsH0LRaXyEoOag\" rel=\"nofollow noopener\" role=\"link\" tabindex=\"0\" target=\"_blank\" style=\"color: var(--blue-link); cursor: pointer; margin: 0px; text-align: inherit; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; -webkit-tap-highlight-color: transparent; list-style: none; touch-action: manipulation; display: inline; font-family: inherit; animation-name: none !important; transition-property: none !important;\">https://qrgo.page.link/Pe76L</a></span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">പരിശുദ്ധ വട്ടശ്ശേരിൽ തിരുമേനി എങ്ങനെ എല്ലാകാലത്തും മലങ്കര സഭയുടെ കാവൽക്കാരനായി?</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">വളരെ ശ്രദ്ധാപൂർവം തന്റെ കാര്യങ്ങളും സഭാ കാര്യങ്ങളും ഗ്രഹിക്കുവാനും എഴുതുവാനും പരിശുദ്ധ തിരുമേനി ശ്രദ്ധ ചെലുത്തിയിരുന്നു. തന്റെ ചെറിയ തെറ്റുകൾ കൊണ്ട് മലങ്കര സഭയ്ക്ക് ഉണ്ടായേക്കാവുന്ന വിപത്തുകൾ മുന്നിൽകണ്ട് വളരെ ശ്രദ്ധാപൂർവ്വം തിരുമേനി കാര്യങ്ങൾ നടത്തിപ്പോന്നു.</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">1920 കാലഘട്ടത്തിൽ മലങ്കര സഭയുടെ വിഭജന കാലഘട്ടത്തിൽ സഭയെ ഒന്നായി നയിക്കുവാൻ തിരുമേനി അങ്ങേയറ്റം ശ്രമിക്കുകയുണ്ടായി എന്ന് ചരിത്രം പറയുന്നു. 1923 കാലഘട്ടത്തിൽ പരിശുദ്ധ പാത്രിയർക്കീസ് ബാവ കൊടുത്തയച്ച മുടക്ക് പിൻവലിച്ചുള്ള കല്പന ചില തൽപ്പരകക്ഷികളുടെ പ്രവർത്തനഫലമായി മലങ്കരയിൽ വായിച്ചില്ല, എന്ന് മാത്രമല്ല അത് മലങ്കരയിൽ ഇന്നും വിഘടനത്തിന് മാറ്റുകൂട്ടുന്നു എന്നത് നിർഭാഗ്യകരമാണ്. സഭയുടെ വിഭജനകാലത്ത് പരിശുദ്ധ തിരുമേനിയുടെ ജീവനു വരെ വലിയ ഭീഷണി ഉണ്ടായി. അതിന് ഉദാഹരണമാണ് പരിശുദ്ധ തിരുമേനിയെ കൊല്ലാൻ വന്ന വാടകക്കൊലയാളിക്കു തിരുമേനിയുടെ പ്രാർത്ഥന മൂലം മാനസാന്തരം കൈവന്നത്. പുലർച്ചെ നാല് മണിക്ക് ഉണർന്ന് പ്രാർത്ഥനയിലും ആത്മീയ കാര്യങ്ങളിലും മുഴുകിയിരുന്ന തിരുമേനിക്ക് ശത്രുക്കളെ പോലും സ്നേഹിക്കുവാനും മാനസാന്തരപ്പെടുത്തുവാനും ഉള്ള കഴിവ് ദൈവത്തിൽ നിന്ന് ലഭിച്ച വരദാനമായിരുന്നു.</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">മലങ്കര സഭയെ ഇത്ര അധികം കരുതിയ ഒരു പിതാവ് പരിശുദ്ധ വട്ടശ്ശേരിൽ തിരുമേനിക്കു ശേഷമുണ്ടായില്ല എന്ന് തന്നെ പറയാം. 1928 കാലഘട്ടത്തിൽ ലോക ക്രൈസ്തവസഭകളുടെ കൂട്ടായ്മ രൂപം കൊണ്ടപ്പോൾ തന്നെ അതിൽ അംഗത്വമെടുക്കാൻ തിരുമേനി ശ്രമിച്ചു എന്നത് അത്യന്തം അഭിനന്ദനാർഹമാണ്. ഇന്ന് ഓറിയന്റൽ ഓർത്തഡോക്സ് സഭകളിൽ മലങ്കര സഭ ഒരു അവിഭാജ്യഘടകമാണ്.</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; animation-name: none !important; transition-property: none !important;\"><a class=\"x1i10hfl xjbqb8w x6umtig x1b1mbwd xaqea5y xav7gou x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz xt0b8zv x1fey0fg\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fqrgo.page.link%2FPe76L%3Ffbclid%3DIwAR22nztE-AZberDHkechjd-U9TPlE7egAzU0rBOA_38nnyLyQhMZXMW_gEk&amp;h=AT36bUX3tf_1WO9ydbii4ASZcJwqacsPHGweDJUph1erqxVICtL8_z-JSzMS9gx2_XDZj6kDQxrN3OTKwAyarl4FOdyKqnz6u4koZdiMeieMXvEjctd8IEGbvp1ViL9osUf7&amp;__tn__=-UK*F&amp;c[0]=AT13EUElUCBsL3uWEdOwMiGTV7wpsY4-BFGmXrNJx0MSuhCRAfjkeKnycpMiBFLdDYqvYpnVqwbVOIBa1svp4uorWwXQp16EEtBb9hK9L_oiCSUID6b26F9KbcaeDjQBotJf1LhZSLLtkwHIRzIOhETXqY-ZaxpK5uA3advL0IQO2BTqe8N8qEHJCgytT7xXsnhexsH0LRaXyEoOag\" rel=\"nofollow noopener\" role=\"link\" tabindex=\"0\" target=\"_blank\" style=\"color: var(--blue-link); cursor: pointer; margin: 0px; text-align: inherit; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; -webkit-tap-highlight-color: transparent; list-style: none; touch-action: manipulation; display: inline; font-family: inherit; animation-name: none !important; transition-property: none !important;\">https://qrgo.page.link/Pe76L</a></span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">പരിശുദ്ധ വട്ടശ്ശേരിൽ തിരുമേനി മലങ്കര സഭ ഭരണഘടനയുടെ ശില്പി:</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">ഭാരതം സ്വാതന്ത്ര്യത്തിന്റെ മധുരം നുണയുന്നതിന് മുൻപേതന്നെ മലങ്കര സഭയുടെ ഭരണഘടന പരിശുദ്ധ തിരുമേനിയുടെ നേതൃത്വത്തിൽ രൂപംകൊണ്ടു എന്നത് അദ്ദേഹത്തിന്റെ ഭാവി ചിന്തകൾ എത്ര ഉന്നതമായിരുന്നു എന്നതിനെ കാണിക്കുന്നു.</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">1995 ൽ മലങ്കര സഭ ഭരണഘടനയെക്കുറിച്ച് ബഹുമാനപ്പെട്ട സുപ്രീംകോടതിയുടെ അഞ്ചംഗ ബെഞ്ച് പറയുന്നത് \" It is a wonderful thing \" എന്നാണ്.</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">1934-ലെ മലങ്കര സഭാ ഭരണഘടന ഇന്നും പരിശുദ്ധ സഭയ്ക്ക് കാവലും കോട്ടയും ആയി നിലകൊള്ളുന്നു. 1934ൽ സുരക്ഷിതമായ കരങ്ങളിൽ ഭരണഘടന ഏൽപ്പിച്ചു കാലം ചെയ്യുമ്പോൾ പരിശുദ്ധ തിരുമേനിക്ക് 76 വയസ്സായിരുന്നു. മലങ്കര സഭയ്ക്ക് ദൈവം കനിഞ്ഞു നൽകിയ വരദാനമാണ് മലങ്കരസഭാ ഭാസുനായ പരിശുദ്ധ വട്ടശ്ശേരിൽ തിരുമേനി. തനിക്ക് ഉണ്ടായിരുന്ന ശാരീരിക കുറവുകളെ പോലും മറുവിഭാഗം പരിഹസിച്ചപ്പോഴും ഓരോ അവസരത്തിലും അവർക്കെതിരെ യാതൊരുവിധ മറുവാക്കുകളും പരിശുദ്ധ തിരുമേനിയിൽ നിന്ന് ഉണ്ടായില്ല.</span><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><br style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; animation-name: none !important; transition-property: none !important;\"><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\">ഈ 2023 കാലഘട്ടത്തിൽ പരിശുദ്ധ സഭ രുചിച്ചറിയുന്ന സ്വാതന്ത്ര്യവും സ്വയം ശീര്ഷകത്വവും വട്ടശ്ശേരിൽ തിരുമേനിയുടെ കഷ്ടപ്പാടിന്റെ ഫലമാണ്. മലങ്കര സഭാ കേസ് മുതൽ വട്ടിപ്പണക്കേസ് വരെയുള്ള പരിശുദ്ധ സഭയുടെ വിജയം പരിശുദ്ധ തിരുമേനിയുടെ പ്രയത്നഫലം ആണ്. പരിശുദ്ധ വട്ടശ്ശേരിൽ തിരുമേനിയുടെ ഓർമ്മ ആചരിക്കുന്ന ഈ വേളയിൽ ആ മഹാ പരിശുദ്ധന്റെ മധ്യസ്ഥതയിൽ നമുക്ക് ശരണപ്പെടാം. പരിശുദ്ധന്റെ മധ്യസ്ഥത നമുക്ക് അനുഗ്രഹവും കോട്ടയും കാവലും ആകട്ടെ.</span><br></p>', '2023-02-23 03:20:34', '2023-03-02 05:26:12', 1, 'Indian-Orthodox', 'c2fcf4884c9a32e3dccf692da21c622f.jpg', 3, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(11, 3, 'Syro Malabar Catholic Church', 'News Regarding RCSC', '2023-02-21 08:50:55', '2023-02-21 15:40:49', 1),
(12, 3, 'Malankara Catholic Church', 'News regarding RCMC', '2023-02-21 08:51:32', NULL, 1),
(13, 3, 'Latin Catholic Church', 'News regarding RCLC', '2023-02-21 08:52:02', NULL, 1),
(14, 5, 'Malankara Orthodox Syrian Church', 'News related to MOSC', '2023-02-21 13:30:27', NULL, 1),
(15, 5, 'Other', 'Outside India', '2023-02-21 15:44:05', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
