-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 10:04 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stftitle`
--

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id`, `title`) VALUES
(1, 'Health'),
(2, 'relationship'),
(3, 'self help'),
(4, 'SPIRITUALITY, NEW AGE & ALTERNATIVE BELIEFS - CLICKBANK'),
(5, 'Wealth');

-- --------------------------------------------------------

--
-- Table structure for table `subsubtopic`
--

CREATE TABLE `subsubtopic` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `mid` int(11) NOT NULL,
  `subid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subtopic`
--

CREATE TABLE `subtopic` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `mid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subtopic`
--

INSERT INTO `subtopic` (`id`, `title`, `mid`) VALUES
(1, 'BUSINESS E-MARKETING', 5),
(2, 'Business/Investing', 5),
(3, 'ASTROLOGY', 4),
(4, 'NUMEROLOGY', 4),
(5, 'TAROT', 4),
(6, 'PARANORMAL', 4),
(7, 'PHYSICS', 4),
(8, 'Beauty', 1),
(9, 'Dental Health', 1),
(10, 'Diets & Weight loss', 1),
(11, 'Exercise & Fitness', 1),
(12, 'Mental Health', 1),
(13, 'MARRIAGE & RELATIONSHIPS', 2),
(14, 'DATING GUIDES', 2),
(15, 'Break – Up ', 2),
(16, 'After Break-Up', 2),
(17, 'Finding the one', 2),
(18, 'HELP GENERAL', 3),
(19, 'MOTIVATIONAL & TRANSFORMATIONAL', 3),
(20, 'SUCCESS', 3),
(21, 'TIME MANAGEMENT', 3);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `meaning` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `meaning`) VALUES
(1, 'Great amount or supply'),
(2, 'Agreement,Approval'),
(3, 'Capable,Skilled'),
(4, 'Certainity or Correctness'),
(5, 'Something completed successfully'),
(6, 'Widely recognized,Accepted'),
(7, 'Action,Activity'),
(8, 'Changebility and flexibilty'),
(9, 'Intense love,Admiration'),
(10, 'Adeptness,Ability'),
(11, 'Risky or unexpected undertaking'),
(12, 'Strong fondness,Care'),
(13, 'Abundance'),
(14, 'Destructive'),
(15, 'Sharpness, Cleverness'),
(16, 'Watchfulness,readiness'),
(17, 'Unselfish concern,Kindness'),
(18, 'A strong desire for success,Aspiration'),
(19, 'Making someone laugh,Delight'),
(20, 'Expectation,Hope'),
(21, 'Thankfulness,Gratitude'),
(22, 'Accessible,Attainable'),
(23, 'Clearly,fluent'),
(24, 'Decideness'),
(25, 'Statement to relive doubt,Affirmation'),
(26, 'Alertness'),
(27, 'Attraction'),
(28, 'Daring,Boldness'),
(29, 'Opening,Opportunity'),
(30, 'Knowledge,Information'),
(31, 'Admiration,Amazement'),
(32, 'Equity'),
(33, 'Physical attractiveness, Charm'),
(34, 'Finest, Top of class'),
(35, 'Acceptance, Attachment'),
(36, 'Charity,compassion'),
(37, 'Happiness,Ecstacy'),
(38, 'Bravery,Courage'),
(39, 'Daring,Boldness'),
(40, 'Genius,Cleverness'),
(41, 'Quietness,composure'),
(42, 'Companship,Friendship'),
(43, 'Complete honesty'),
(44, 'Ability to perform'),
(45, 'Concern'),
(46, 'Cautiousness'),
(47, 'Dignitary,figure'),
(48, 'Positive assurance,Confidence'),
(49, 'Dispute,Protest'),
(50, 'Donation,Generosity'),
(51, 'Beauty,Grace'),
(52, 'Purity,Decency'),
(53, 'Happiness,Ecstacy'),
(54, 'Accuracy,Certainity'),
(55, 'Purity,Being clean'),
(56, 'Presence of mind'),
(57, 'Brilliance'),
(58, 'Nearness,intimacy'),
(59, 'Amenity,convenience'),
(60, 'Assurance,obligation'),
(61, 'Tender feeling'),
(62, 'Achievement,finishing'),
(63, 'Calmness'),
(64, 'absorption'),
(65, 'Certainity'),
(66, 'Complaince,obedience'),
(67, 'Agreement,Approval'),
(68, 'Relation,Network'),
(69, 'Alertness'),
(70, 'Regularity,thickness'),
(71, 'Comfort'),
(72, 'Progression'),
(73, 'Addition,input'),
(74, 'Authority,Command'),
(75, 'Confidence,belief'),
(76, 'Festivity,Entertainment'),
(77, 'Calmness'),
(78, 'Mutual effort,Assistance'),
(79, 'Friendliness'),
(80, 'Truth'),
(81, 'Bravery'),
(82, 'Good manners'),
(83, 'Deceitfulness'),
(84, 'Artistry'),
(85, 'Chance'),
(86, 'Sharpness'),
(87, 'Concern,personal interest'),
(88, 'Bravery,Courage'),
(89, 'Assertiveness'),
(90, 'Appropriate behaviour'),
(91, 'Complaince,obedience'),
(92, 'Happiness,Ecstacy'),
(93, 'Reputation'),
(94, 'Bottom,Intensity'),
(95, 'Want,longing'),
(96, 'Conviction'),
(97, 'Commitment'),
(98, 'Religiousness'),
(99, 'Ability,artistry'),
(100, 'Nobility'),
(101, 'Alertness'),
(102, 'Guidance, Leadership'),
(103, 'Simplicity,condor'),
(104, 'Control,Regimen'),
(105, 'Finding,Uncovering'),
(106, 'Judgement,Caution'),
(107, 'Variety'),
(108, 'Control,Regimen'),
(109, 'Imagination'),
(110, 'Jounry by vehicle, Ride'),
(111, 'Responsibility'),
(112, 'Action,Activity'),
(113, 'Anxiouness'),
(114, 'Saving,Frugality'),
(115, 'Happiness'),
(116, 'Development of knowledge'),
(117, 'Influence'),
(118, 'Adapteness, Ability'),
(119, 'Extreme happiness,bliss'),
(120, 'Cultivated Beauty'),
(121, 'Understanding'),
(122, 'Hopeful,promising'),
(123, 'Capacity,Bearing'),
(124, 'Person\'s spirit and vigor'),
(125, 'Amusement'),
(126, 'Festivity'),
(127, 'Keen interest,excitement'),
(128, 'Perfection'),
(129, 'Enthusiasm'),
(130, 'Great happiness'),
(131, 'Anticipation'),
(132, 'Practically'),
(133, 'Knowledge,Information'),
(134, 'Knowledge,Information'),
(135, 'Investigation'),
(136, 'revealing'),
(137, 'luxury,Excess'),
(138, 'Extreme'),
(139, 'excitement'),
(140, 'Justice'),
(141, 'Belief,Trust in someone'),
(142, 'Glory, Greatness'),
(143, 'Clan,offspring'),
(144, 'Strong interest'),
(145, 'Latest style'),
(146, 'Courage'),
(147, 'Fierceness'),
(148, 'Loyalty,faithful'),
(149, 'Wildness'),
(150, 'economy,Having to do with money'),
(151, 'Stiffness'),
(152, 'Good condition,health'),
(153, 'flexibilty'),
(154, 'Stream'),
(155, 'Ease of expression'),
(156, 'Centre of attraction,spotlight'),
(157, 'Bravery,Courage'),
(158, 'Openess,Honesty'),
(159, 'Independence'),
(160, 'Companship,Friendship'),
(161, 'economizing'),
(162, 'Enjoyment'),
(163, 'Bravery'),
(164, 'Sophistication,civility'),
(165, 'Offering'),
(166, 'Charm,Loveliness'),
(167, 'acknowledgment'),
(168, 'Friendliness'),
(169, 'Development,progress'),
(170, 'Counseling,advice'),
(171, 'Joy'),
(172, 'Social agreement'),
(173, 'Physical, well being'),
(174, 'Emotions'),
(175, 'Assistance'),
(176, 'Bravery'),
(177, 'religiousness'),
(178, 'Truth'),
(179, 'Respect'),
(180, 'Optimism,confidence'),
(181, 'Neighbourliness'),
(182, 'Humbleness,Modesty'),
(183, 'Funniness'),
(184, 'Cleaniness'),
(185, 'Power to create in one\'s mind'),
(186, 'Effect'),
(187, 'Freedom'),
(188, 'Business,commerce'),
(189, 'Cleverness'),
(190, 'curiosity'),
(191, 'Smart,intelligent'),
(192, 'Idea'),
(193, 'Honor'),
(194, 'Ability to understand'),
(195, 'Passion,force'),
(196, 'Closeness'),
(197, 'Courage'),
(198, 'Reflection,Medition'),
(199, 'Insight'),
(200, 'Innovation'),
(201, 'Contributing money to make money'),
(202, 'Happiness'),
(203, 'calmness'),
(204, 'Fairness'),
(205, 'Insight'),
(206, 'Generosity'),
(207, 'Information'),
(208, 'Guidance'),
(209, ''),
(210, ''),
(211, ''),
(212, ''),
(213, ''),
(214, ''),
(215, ''),
(216, ''),
(217, ''),
(218, ''),
(219, ''),
(220, ''),
(221, ''),
(222, ''),
(223, ''),
(224, ''),
(225, ''),
(226, ''),
(227, ''),
(228, ''),
(229, ''),
(230, ''),
(231, ''),
(232, ''),
(233, ''),
(234, ''),
(235, ''),
(236, ''),
(237, ''),
(238, 'Strong emotion'),
(239, ''),
(240, ''),
(241, ''),
(242, ''),
(243, ''),
(244, ''),
(245, ''),
(246, ''),
(247, ''),
(248, ''),
(249, ''),
(250, ''),
(251, ''),
(252, ''),
(253, ''),
(254, ''),
(255, ''),
(256, ''),
(257, ''),
(258, ''),
(259, ''),
(260, ''),
(261, ''),
(262, ''),
(263, ''),
(264, ''),
(265, ''),
(266, ''),
(267, ''),
(268, ''),
(269, ''),
(270, ''),
(271, ''),
(272, ''),
(273, ''),
(274, ''),
(275, 'Devoutness'),
(276, ''),
(277, ''),
(278, ''),
(279, ''),
(280, 'Honor'),
(281, ''),
(282, ''),
(283, ''),
(284, ''),
(285, ''),
(286, ''),
(287, ''),
(288, ''),
(289, ''),
(290, ''),
(291, ''),
(292, ''),
(293, ''),
(294, ''),
(295, ''),
(296, ''),
(297, ''),
(298, ''),
(299, ''),
(300, ''),
(301, ''),
(302, ''),
(303, ''),
(304, ''),
(305, ''),
(306, ''),
(307, ''),
(308, ''),
(309, ''),
(310, ''),
(311, ''),
(312, ''),
(313, ''),
(314, ''),
(315, ''),
(316, ''),
(317, ''),
(318, ''),
(319, ''),
(320, ''),
(321, ''),
(322, ''),
(323, ''),
(324, ''),
(325, ''),
(326, ''),
(327, ''),
(328, ''),
(329, ''),
(330, ''),
(331, ''),
(332, ''),
(333, ''),
(334, ''),
(335, ''),
(336, ''),
(337, 'Honest');

-- --------------------------------------------------------

--
-- Table structure for table `userwordmain`
--

CREATE TABLE `userwordmain` (
  `id` int(11) NOT NULL,
  `useid` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `sameid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userwordmain`
--

INSERT INTO `userwordmain` (`id`, `useid`, `word`, `sameid`) VALUES
(1, 77584, 'Activeness', 1),
(2, 77584, 'Attractiveness', 1),
(3, 77584, 'Adaptability', 1),
(4, 77584, 'Anticipation', 1),
(5, 77584, 'Amusement', 1),
(6, 77584, 'Altruism', 1),
(7, 77584, 'Adoration', 1),
(8, 77584, 'Achievement', 1),
(9, 77584, 'Assertiveness', 1),
(10, 77584, 'Attractiveness', 1),
(11, 77584, 'Beauty', 2),
(12, 77584, 'Availability', 1),
(13, 77584, 'Brilliance', 2),
(14, 77584, 'Bravery', 2),
(15, 77584, 'Cleverness', 3),
(16, 77584, 'Candor', 2),
(17, 77584, 'Concentration', 0),
(18, 77584, 'Continuity', 0),
(19, 77584, 'Cheerfulness', 1),
(20, 77584, 'Control', 0),
(21, 77584, 'Self-control', 0),
(22, 77584, 'Cordiality', 0),
(23, 77584, 'Cooperation', 0),
(24, 77584, 'Curiosity', 0),
(25, 77584, 'Creativity', 0),
(26, 77584, 'Economy', 0),
(27, 77584, 'Dynamism', 0),
(28, 77584, 'Devoutness', 0),
(29, 77584, 'Extravagance', 0),
(30, 77584, 'Energy', 0),
(31, 77584, 'Fierceness', 0),
(32, 77584, 'Ferocity', 0),
(33, 77584, 'Expertise', 0),
(34, 77584, 'Harmony', 0),
(35, 77584, 'Flow', 0),
(36, 77584, 'Helpfulness', 0),
(37, 77584, 'Honesty', 0),
(38, 77584, 'Gentility', 0),
(39, 77584, 'Inspiration', 0),
(40, 77584, 'Inquisitiveness', 0),
(41, 77584, 'Intensity', 0),
(42, 77584, 'Integrity', 0),
(43, 77584, 'Making a difference', 0),
(44, 77584, 'Optimism', 0),
(45, 77584, 'Openness', 0),
(46, 77584, 'Persistence', 0),
(47, 77584, 'Precision', 0),
(48, 77584, 'Pleasantness', 0),
(49, 77584, 'Privacy', 0),
(50, 77584, 'Self-control', 0),
(51, 77584, 'Sincerity', 0),
(52, 77584, 'Sensitivity', 0),
(53, 77584, 'Significance', 0),
(54, 77584, 'Skilfulness', 0),
(55, 77584, 'Speed', 0),
(56, 77584, 'Transcendence', 0),
(57, 77584, 'Thankfulness', 0),
(58, 77584, 'Truth', 0),
(59, 77584, 'Vision', 0),
(60, 77584, 'Virtue', 0),
(61, 77584, 'Uniqueness', 0);

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `id` int(11) NOT NULL,
  `word` text NOT NULL,
  `meaning` text NOT NULL,
  `sameword` text NOT NULL,
  `sameid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `word`
--

INSERT INTO `word` (`id`, `word`, `meaning`, `sameword`, `sameid`) VALUES
(1, 'Abundance', 'Great amount or supply', 'Affluence,Certainty,Confidence,Conviction,Hopefulness', 1),
(2, 'Acceptance', 'Agreement,Approval', 'Congruency', 1),
(3, 'Accomplished', 'Capable,Skilled', '', 1),
(4, 'Accuracy', 'Certainity or Correctness', '', 1),
(5, 'Achievement', 'Something completed successfully', '', 1),
(6, 'Acknowledged', 'Widely recognized,Accepted', '', 1),
(7, 'Activeness', 'Action,Activity', '', 1),
(8, 'Adaptability', 'Changebility and flexibilty', '', 1),
(9, 'Adoration', 'Intense love,Admiration', '', 1),
(10, 'Adroitness', 'Adeptness,Ability', '', 1),
(11, 'Adventure', 'Risky or unexpected undertaking', '', 1),
(12, 'Affection', 'Strong fondness,Care', '', 1),
(13, 'Affluence', 'Abundance', 'Abundance,Certainty,Confidence,Conviction,Hopefulness', 1),
(14, 'Aggressive', 'Destructive', '', 1),
(15, 'Agility', 'Sharpness, Cleverness', '', 1),
(16, 'Alertness', 'Watchfulness,readiness', '', 1),
(17, 'Altruism', 'Unselfish concern,Kindness', '', 1),
(18, 'Ambition', 'A strong desire for success,Aspiration', '', 1),
(19, 'Amusement', 'Making someone laugh,Delight', '', 1),
(20, 'Anticipation', 'Expectation,Hope', '', 1),
(21, 'Appreciation', 'Thankfulness,Gratitude', '', 1),
(22, 'Approachable', 'Accessible,Attainable', '', 1),
(23, 'Articulate', 'Clearly,fluent', '', 1),
(24, 'Assertiveness', 'Decideness', '', 1),
(25, 'Assurance', 'Statement to relive doubt,Affirmation', '', 1),
(26, 'Attentiveness', 'Alertness', '', 1),
(27, 'Attractiveness', 'Attraction', '', 1),
(28, 'Audacity', 'Daring,Boldness', '', 1),
(29, 'Availability', 'Opening,Opportunity', '', 1),
(30, 'Awareness', 'Knowledge,Information', '', 1),
(31, 'Awe', 'Admiration,Amazement', '', 1),
(32, 'Balance', 'Equity', '', 2),
(33, 'Beauty', 'Physical attractiveness, Charm', '', 2),
(34, 'Being the best', 'Finest, Top of class', '', 2),
(35, 'Belonging', 'Acceptance, Attachment', '', 2),
(36, 'Benevolence', 'Charity,compassion', '', 2),
(37, 'Bliss', 'Happiness,Ecstacy', '', 2),
(38, 'Boldness', 'Bravery,Courage', '', 2),
(39, 'Bravery', 'Daring,Boldness', '', 2),
(40, 'Brilliance', 'Genius,Cleverness', '', 2),
(41, 'Calmness', 'Quietness,composure', '', 3),
(42, 'Camaraderie', 'Companship,Friendship', '', 3),
(43, 'Candor', 'Complete honesty', '', 3),
(44, 'Capability', 'Ability to perform', '', 3),
(45, 'Care', 'Concern', '', 3),
(46, 'Carefulness', 'Cautiousness', '', 3),
(47, 'Celebrity', 'Dignitary,figure', '', 3),
(48, 'Certainty', 'Positive assurance,Confidence', 'Abundance,Affluence,Confidence,Conviction,Hopefulness', 3),
(49, 'Challenge', 'Dispute,Protest', '', 3),
(50, 'Charity', 'Donation,Generosity', '', 3),
(51, 'Charm', 'Beauty,Grace', '', 3),
(52, 'Chastity', 'Purity,Decency', '', 3),
(53, 'Cheerfulness', 'Happiness,Ecstacy', '', 3),
(54, 'Clarity', 'Accuracy,Certainity', '', 3),
(55, 'Cleanliness', 'Purity,Being clean', '', 3),
(56, 'Clear-mindedness', 'Presence of mind', '', 3),
(57, 'Cleverness', 'Brilliance', '', 3),
(58, 'Closeness', 'Nearness,intimacy', '', 3),
(59, 'Comfort', 'Amenity,convenience', '', 3),
(60, 'Commitment', 'Assurance,obligation', '', 0),
(61, 'Compassion', 'Tender feeling', '', 0),
(62, 'Completion', 'Achievement,finishing', '', 0),
(63, 'Composure', 'Calmness', '', 0),
(64, 'Concentration', 'absorption', '', 0),
(65, 'Confidence', 'Certainity ', 'Abundance,Affluence,Certainty,Conviction,Hopefulness', 0),
(66, 'Conformity', 'Complaince,obedience', '', 0),
(67, 'Congruency', 'Agreement,Approval', 'Acceptance', 1),
(68, 'Connection', 'Relation,Network', '', 0),
(69, 'Consciousness', 'Alertness', '', 0),
(70, 'Consistency', 'Regularity,thickness', '', 0),
(71, 'Contentment', 'Comfort', '', 0),
(72, 'Continuity', 'Progression', '', 0),
(73, 'Contribution', 'Addition,input', '', 0),
(74, 'Control', 'Authority,Command', '', 0),
(75, 'Conviction', 'Confidence,belief', 'Abundance,Affluence,Certainty,Confidence,Hopefulness', 0),
(76, 'Conviviality', 'Festivity,Entertainment', '', 0),
(77, 'Coolness', 'Calmness', '', 0),
(78, 'Cooperation', 'Mutual effort,Assistance', '', 0),
(79, 'Cordiality', 'Friendliness', '', 0),
(80, 'Correctness', 'Truth', '', 0),
(81, 'Courage', 'Bravery', '', 0),
(82, 'Courtesy', 'Good manners', '', 0),
(83, 'Craftiness', 'Deceitfulness', '', 0),
(84, 'Creativity', 'Artistry', '', 0),
(85, 'Credibility', 'Chance', '', 0),
(86, 'Cunning', 'Sharpness', '', 0),
(87, 'Curiosity', 'Concern,personal interest', '', 0),
(88, 'Daring', 'Bravery,Courage', '', 0),
(89, 'Decisiveness', 'Assertiveness', '', 0),
(90, 'Decorum', 'Appropriate behaviour', '', 0),
(91, 'Deference', 'Complaince,obedience', '', 0),
(92, 'Delight', 'Happiness,Ecstacy', '', 0),
(93, 'Dependability', 'Reputation', '', 0),
(94, 'Depth', 'Bottom,Intensity', '', 0),
(95, 'Desire', 'Want,longing', '', 0),
(96, 'Determination', 'Conviction', '', 0),
(97, 'Devotion', 'Commitment', '', 0),
(98, 'Devoutness', 'Religiousness', '', 0),
(99, 'Dexterity', 'Ability,artistry', '', 0),
(100, 'Dignity', 'Nobility', '', 0),
(101, 'Diligence', 'Alertness', '', 0),
(102, 'Direction', 'Guidance, Leadership', '', 0),
(103, 'Directness', 'Simplicity,condor', '', 0),
(104, 'Discipline', 'Control,Regimen', '', 0),
(105, 'Discovery', 'Finding,Uncovering', '', 0),
(106, 'Discretion', 'Judgement,Caution', '', 0),
(107, 'Diversity', 'Variety', '', 0),
(108, 'Dominance', 'Control,Regimen', '', 0),
(109, 'Dreaming', 'Imagination', '', 0),
(110, 'Drive', 'Jounry by vehicle, Ride', '', 0),
(111, 'Duty', 'Responsibility', '', 0),
(112, 'Dynamism', 'Action,Activity', '', 0),
(113, 'Eagerness', 'Anxiouness', '', 0),
(114, 'Economy', 'Saving,Frugality', '', 0),
(115, 'Ecstasy', 'Happiness', '', 0),
(116, 'Education', 'Development of knowledge', '', 0),
(117, 'Effectiveness', 'Influence', '', 0),
(118, 'Efficiency', 'Adapteness, Ability', '', 0),
(119, 'Elation', 'Extreme happiness,bliss', '', 0),
(120, 'Elegance', 'Cultivated Beauty', '', 0),
(121, 'Empathy', 'Understanding', '', 0),
(122, 'Encouraging', 'Hopeful,promising', '', 0),
(123, 'Endurance', 'Capacity,Bearing', '', 0),
(124, 'Energy', 'Person\'s spirit and vigor', '', 0),
(125, 'Enjoyment', 'Amusement', '', 0),
(126, 'Entertainment', 'Festivity', '', 0),
(127, 'Enthusiasm', 'Keen interest,excitement', '', 0),
(128, 'Excellence', 'Perfection', '', 0),
(129, 'Excitement', 'Enthusiasm', '', 0),
(130, 'Exhilaration', 'Great happiness', '', 0),
(131, 'Expectancy', 'Anticipation', '', 0),
(132, 'Expediency', 'Practically', '', 0),
(133, 'Experience', 'Knowledge,Information', '', 0),
(134, 'Expertise', 'Knowledge,Information', '', 0),
(135, 'Exploration', 'Investigation', '', 0),
(136, 'Expressive', 'revealing', '', 0),
(137, 'Extravagance', 'luxury,Excess', '', 0),
(138, 'Extroversion', 'Extreme', '', 0),
(139, 'Exuberance', 'excitement', '', 0),
(140, 'Fairness', 'Justice', '', 0),
(141, 'Faith', 'Belief,Trust in someone', '', 0),
(142, 'Fame', 'Glory, Greatness', '', 0),
(143, 'Family', 'Clan,offspring', '', 0),
(144, 'Fascination', 'Strong interest', '', 0),
(145, 'Fashion', 'Latest style', '', 0),
(146, 'Fearlessness', 'Courage', '', 0),
(147, 'Ferocity', 'Fierceness', '', 0),
(148, 'Fidelity', 'Loyalty,faithful', '', 0),
(149, 'Fierceness', 'Wildness', '', 0),
(150, 'Financial ', 'economy,Having to do with money', '', 0),
(151, 'Firmness', 'Stiffness', '', 0),
(152, 'Fitness', 'Good condition,health', '', 0),
(153, 'Flexibility', 'flexibilty', '', 0),
(154, 'Flow', 'Stream', '', 0),
(155, 'Fluency', 'Ease of expression', '', 0),
(156, 'Focus', 'Centre of attraction,spotlight', '', 0),
(157, 'Fortitude', 'Bravery,Courage', '', 0),
(158, 'Frankness', 'Openess,Honesty', '', 0),
(159, 'Freedom', 'Independence', '', 0),
(160, 'Friendliness', 'Companship,Friendship', '', 0),
(161, 'Frugality', 'economizing', '', 0),
(162, 'Fun', 'Enjoyment', '', 0),
(163, 'Gallantry', 'Bravery', '', 0),
(164, 'Gentility', 'Sophistication,civility', '', 0),
(165, 'Giving', 'Offering', '', 0),
(166, 'Grace', 'Charm,Loveliness', '', 0),
(167, 'Gratitude', 'acknowledgment', '', 0),
(168, 'Gregarious', 'Friendliness', '', 0),
(169, 'Growth', 'Development,progress', '', 0),
(170, 'Guidance', 'Counseling,advice', '', 0),
(171, 'Happiness', 'Joy', '', 0),
(172, 'Harmony', 'Social agreement', '', 0),
(173, 'Health', 'Physical, well being', '', 0),
(174, 'Heart', 'Emotions', '', 0),
(175, 'Helpfulness', 'Assistance', '', 0),
(176, 'Heroism', 'Bravery', '', 0),
(177, 'Holiness', 'religiousness', '', 0),
(178, 'Honesty', 'Truth', '', 0),
(179, 'Honour', 'Respect', '', 0),
(180, 'Hopefulness', 'Optimism,confidence', 'Abundance,Affluence,Certainty,Confidence,Conviction,', 0),
(181, 'Hospitality', 'Neighbourliness', '', 0),
(182, 'Humility', 'Humbleness,Modesty', '', 0),
(183, 'Humour', 'Funniness', '', 0),
(184, 'Hygiene', 'Cleaniness', '', 0),
(185, 'Imagination', 'Power to create in one\'s  mind', '', 0),
(186, 'Impact', 'Effect', '', 0),
(187, 'Independence ', 'Freedom', '', 0),
(188, 'Industry', 'Business,commerce', '', 0),
(189, 'Ingenuity', 'Cleverness', '', 0),
(190, 'Inquisitiveness', 'curiosity', '', 0),
(191, 'Insightful', 'Smart,intelligent', '', 0),
(192, 'Inspiration', 'Idea', '', 0),
(193, 'Integrity', 'Honor', '', 0),
(194, 'Intelligence', 'Ability to understand', '', 0),
(195, 'Intensity', 'Passion,force', '', 0),
(196, 'Intimacy', 'Closeness', '', 0),
(197, 'Intrepidness', 'Courage', '', 0),
(198, 'Introversion', 'Reflection,Medition', '', 0),
(199, 'Intuition', 'Insight', '', 0),
(200, 'Inventiveness', 'Innovation', '', 0),
(201, 'Investing', 'Contributing money to make money', '', 0),
(202, 'Joy', 'Happiness', '', 0),
(203, 'Judiciousness', 'calmness', '', 0),
(204, 'Justice', 'Fairness', '', 0),
(205, 'Keenness', 'Insight', '', 0),
(206, 'Kindness', 'Generosity', '', 0),
(207, 'Knowledge', 'Information', '', 0),
(208, 'Leadership', 'Guidance', '', 0),
(209, 'Learning', '', '', 0),
(210, 'Liberation', '', '', 0),
(211, 'Liberty', '', '', 0),
(212, 'Liveliness', '', '', 0),
(213, 'Logic', '', '', 0),
(214, 'Longevity', '', '', 0),
(215, 'Love', '', '', 0),
(216, 'Majesty', '', '', 0),
(217, 'Making a difference', '', '', 0),
(218, 'Mastery', '', '', 0),
(219, 'Maturity', '', '', 0),
(220, 'Meekness', '', '', 0),
(221, 'Mellowness', '', '', 0),
(222, 'Meticulous', '', '', 0),
(223, 'Mindfulness', '', '', 0),
(224, 'Modesty', '', '', 0),
(225, 'Motivation', '', '', 0),
(226, 'Mysterious', '', '', 0),
(227, 'Neatness', '', '', 0),
(228, 'Nerve', '', '', 0),
(229, 'Obedience', '', '', 0),
(230, 'Open-minded', '', '', 0),
(231, 'Openness', '', '', 0),
(232, 'Optimism', '', '', 0),
(233, 'Order', '', '', 0),
(234, 'Organization', '', '', 0),
(235, 'Originality', '', '', 0),
(236, 'Outlandish', '', '', 0),
(237, 'Outrageous', '', '', 0),
(238, 'Passion', 'Strong emotion', '', 0),
(239, 'Peace', '', '', 0),
(240, 'Perceptiveness', '', '', 0),
(241, 'Perfection', '', '', 0),
(242, 'Perkiness', '', '', 0),
(243, 'Perseverance', '', '', 0),
(244, 'Piety', '', '', 0),
(245, 'Playfulness', '', '', 0),
(246, 'Pleasantness', '', '', 0),
(247, 'Pleasure', '', '', 0),
(248, 'Poise', '', '', 0),
(249, 'Popularity', '', '', 0),
(250, 'Potency', '', '', 0),
(251, 'Power', '', '', 0),
(252, 'Persistence', '', '', 0),
(253, 'Persuasive', '', '', 0),
(254, 'Philanthropy', '', '', 0),
(255, 'Practicality', '', '', 0),
(256, 'Pragmatism', '', '', 0),
(257, 'Precision', '', '', 0),
(258, 'Preparedness', '', '', 0),
(259, 'Presence', '', '', 0),
(260, 'Privacy', '', '', 0),
(261, 'Proactive', '', '', 0),
(262, 'Professional', '', '', 0),
(263, 'Prosperity', '', '', 0),
(264, 'Prudence', '', '', 0),
(265, 'Punctuality', '', '', 0),
(266, 'Purity', '', '', 0),
(267, 'Realism', '', '', 0),
(268, 'Reason', '', '', 0),
(269, 'Recognition', '', '', 0),
(270, 'Recreation', '', '', 0),
(271, 'Refinement', '', '', 0),
(272, 'Reflection', '', '', 0),
(273, 'Relaxation', '', '', 0),
(274, 'Reliability', '', '', 0),
(275, 'Religiousness', 'Devoutness', '', 0),
(276, 'Resilience', '', '', 0),
(277, 'Resolution', '', '', 0),
(278, 'Resolve', '', '', 0),
(279, 'Resourceful', '', '', 0),
(280, 'Respect', 'Honor', '', 0),
(281, 'Rest', '', '', 0),
(282, 'Restraint', '', '', 0),
(283, 'Reverence', '', '', 0),
(284, 'Richness', '', '', 0),
(285, 'Rigour', '', '', 0),
(286, 'Sacredness', '', '', 0),
(287, 'Sacrifice', '', '', 0),
(288, 'Sagacity', '', '', 0),
(289, 'Saintliness', '', '', 0),
(290, 'Satisfaction', '', '', 0),
(291, 'Security', '', '', 0),
(292, 'Self-control', '', '', 0),
(293, 'Selflessness', '', '', 0),
(294, 'Self-reliance', '', '', 0),
(295, 'Sensitivity', '', '', 0),
(296, 'Sensuality', '', '', 0),
(297, 'Serenity', '', '', 0),
(298, 'Service', '', '', 0),
(299, 'Sexuality', '', '', 0),
(300, 'Sharing', '', '', 0),
(301, 'Shrewdness', '', '', 0),
(302, 'Significance', '', '', 0),
(303, 'Silence', '', '', 0),
(304, 'Silliness', '', '', 0),
(305, 'Simplicity', '', '', 0),
(306, 'Sincerity', '', '', 0),
(307, 'Skilfulness', '', '', 0),
(308, 'Solidarity', '', '', 0),
(309, 'Solitude', '', '', 0),
(310, 'Soundness', '', '', 0),
(311, 'Speed', '', '', 0),
(312, 'Spirit', '', '', 0),
(313, 'Spirituality', '', '', 0),
(314, 'Spontaneity', '', '', 0),
(315, 'Spunk', '', '', 0),
(316, 'Stability', '', '', 0),
(317, 'Stealth', '', '', 0),
(318, 'Stillness', '', '', 0),
(319, 'Strength', '', '', 0),
(320, 'Structure', '', '', 0),
(321, 'Success', '', '', 0),
(322, 'Supremacy', '', '', 0),
(323, 'Sympathy', '', '', 0),
(324, 'Synergy', '', '', 0),
(325, 'Teamwork', '', '', 0),
(326, 'Temperance', '', '', 0),
(327, 'Thankfulness', '', '', 0),
(328, 'Thoroughness', '', '', 0),
(329, 'Thoughtful', '', '', 0),
(330, 'Thrift', '', '', 0),
(331, 'Tidiness', '', '', 0),
(332, 'Timeliness', '', '', 0),
(333, 'Traditionalism', '', '', 0),
(334, 'Tranquillity', '', '', 0),
(335, 'Transcendence', '', '', 0),
(336, 'Trust', '', '', 0),
(337, 'Truth', 'Honest', '', 0),
(338, 'Understanding', '', '', 0),
(339, 'Unflappability', '', '', 0),
(340, 'Uniqueness', '', '', 0),
(341, 'Unity', '', '', 0),
(342, 'Usefulness', '', '', 0),
(343, 'Utility', '', '', 0),
(344, 'Variety', '', '', 0),
(345, 'Virtue', '', '', 0),
(346, 'Vision', '', '', 0),
(347, 'Vitality', '', '', 0),
(348, 'Warmth', '', '', 0),
(349, 'Watchfulness', '', '', 0),
(350, 'Wealth', '', '', 0),
(351, 'Wilfulness', '', '', 0),
(352, 'Willingness', '', '', 0),
(353, 'Winning', '', '', 0),
(354, 'Wisdom', '', '', 0),
(355, 'Wittiness', '', '', 0),
(356, 'Wonder', '', '', 0),
(357, 'Youthfulness', '', '', 0),
(358, 'Zeal', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subsubtopic`
--
ALTER TABLE `subsubtopic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subtopic`
--
ALTER TABLE `subtopic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userwordmain`
--
ALTER TABLE `userwordmain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subsubtopic`
--
ALTER TABLE `subsubtopic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subtopic`
--
ALTER TABLE `subtopic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `userwordmain`
--
ALTER TABLE `userwordmain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `word`
--
ALTER TABLE `word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
