-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 04:22 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trm`
--

-- --------------------------------------------------------

--
-- Table structure for table `belbin`
--

CREATE TABLE `belbin` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `group` varchar(50) NOT NULL,
  `strengths` varchar(200) DEFAULT NULL,
  `weaknesses` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `belbin`
--

INSERT INTO `belbin` (`id`, `code`, `name`, `group`, `strengths`, `weaknesses`, `description`) VALUES
(1, 'PL', 'Plant', 'Thought Oriented Role', 'Creative, imaginative, free-thinking, generates ideas and solves difficult problems', 'Might ignore incidentals, and may be too preoccupied to communicate effectively. They could be absent-minded or forgetful', 'The Plant is the creative innovator who comes up with new ideas and approaches. They thrive on praise but criticism is especially hard for them to deal with. Plants are often introverted and prefer to work apart from the team. Because their ideas are so novel, they can be impractical at times. They may also be poor communicators and can tend to ignore given parameters and constraints'),
(2, 'RI', 'Resource Investigator', 'People Oriented Role', 'Outgoing, enthusiastic. Explores opportunities and develops contacts', 'Might be over-optimistic, and can lose interest once the initial enthusiasm has passed. They might forget to follow up on a lead', 'Resource Investigators are innovative and curious. They explore available options, develop contacts, and negotiate for resources on behalf of the team. They are enthusiastic team members, who identify and work with external stakeholders to help the team accomplish its objective. They are outgoing and are often extroverted, meaning that others are often receptive to them and their ideas. On the downside, they may lose enthusiasm quickly, and are often overly optimistic'),
(3, 'CO', 'Co-ordinator', 'People Oriented Role', 'Mature, confident, identifies talent. Clarifies goals', 'Can be seen as manipulative and might offload their own share of the work. They might over-delegate, leaving themselves little work to do', 'Coordinators are the ones who take on the traditional team-leader role and have also been referred to as the chairmen. They guide the team to what they perceive are the objectives. They are often excellent listeners and they are naturally able to recognize the value that each team member brings to the table. They are calm and good-natured, and delegate tasks very effectively. Their potential weaknesses are that they may delegate away too much personal responsibility, and may tend to be manipulative'),
(4, 'SH', 'Shaper', 'Action Oriented Role', 'Challenging, dynamic, thrives on pressure. Has the drive and courage to overcome obstacles', 'Can be prone to provocation, and may sometimes offend people\"s feelings. They could risk becoming aggressive and bad-humoured in their attempts to get things done', 'Shapers are people who challenge the team to improve. They are dynamic and usually extroverted people who enjoy stimulating others, questioning norms, and finding the best approaches for solving problems. The Shaper is the one who shakes things up to make sure that all possibilities are considered and that the team does not become complacent. Shapers often see obstacles as exciting challenges and they tend to have the courage to push on when others feel like quitting. Their potential weaknesses may be that they\"re argumentative, and that they may offend people\"s feelings'),
(5, 'ME', 'Monitor Evaluator', 'Thought Oriented Role', 'Sober, strategic and discerning. Sees all options and judges accurately', 'Sometimes lacks the drive and ability to inspire others and can be overly critical. They could be slow to come to decisions', 'Monitor-Evaluators are best at analyzing and evaluating ideas that other people (often Plants) come up with. These people are shrewd and objective, and they carefully weigh the pros and cons of all the options before coming to a decision. Monitor-Evaluators are critical thinkers and very strategic in their approach. They are often perceived as detached or unemotional. Sometimes they are poor motivators who react to events rather than instigating them'),
(6, 'TW', 'Team Worker', 'People Oriented Role', 'Co-operative, perceptive and diplomatic. Listens and averts friction', 'Can be indecisive in crunch situations and tends to avoid confrontation. They might be hesitant to make unpopular decisions', 'Team Workers are the people who provide support and make sure that people within the team are working together effectively. These people fill the role of negotiators within the team and they are flexible, diplomatic and perceptive. These tend to be popular people who are very capable in their own right, but who prioritize team cohesion and helping people get along. Their weaknesses may be a tendency to be indecisive, and to maintain uncommitted positions during discussions and decision-making'),
(7, 'IMP', 'Implementer', 'Action Oriented Role', 'Practical, reliable, efficient. Turns ideas into actions and organises work that needs to be done', 'Can be a bit inflexible and slow to respond to new possibilities. They might be slow to relinquish their plans in favour of positive changes', 'Implementers are the people who get things done. They turn the team\"s ideas and concepts into practical actions and plans. They are typically conservative, disciplined people who work systematically and efficiently and are very well organized. These are the people who you can count on to get the job done. On the downside, Implementers may be inflexible and can be somewhat resistant to change'),
(8, 'CF', 'Completer Finisher', 'Action Oriented Role', 'Painstaking, conscientious, anxious. Searches out errors. Polishes and perfects', 'Can be inclined to worry unduly, and reluctant to delegate. They could be accused of taking their perfectionism to extremes', 'Completer-Finishers are the people who see that projects are completed thoroughly. They ensure that there have been no errors or omissions and they pay attention to the smallest of details. They are very concerned with deadlines and will push the team to make sure the job is completed on time. They are described as perfectionists who are orderly, conscientious and anxious. However, a Completer-Finisher may worry unnecessarily, and may find it hard to delegate');

-- --------------------------------------------------------

--
-- Table structure for table `belbin_answer`
--

CREATE TABLE `belbin_answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `belbin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `belbin_answer`
--

INSERT INTO `belbin_answer` (`id`, `question_id`, `answer`, `belbin_id`) VALUES
(1, 1, 'I can be relied upon to see that work that needs to be done is organised', 7),
(2, 1, 'I pick up slips and omissions that others fail to notice', 8),
(3, 1, 'I react strongly when meetings look like losing track of the main objective', 4),
(4, 1, 'I produce original suggestions', 1),
(5, 1, 'I analyse other people’s ideas objectively, for both merits and failings', 5),
(6, 1, 'I am keen to find out the latest ideas and developments', 2),
(7, 1, 'I have an aptitude for organising people', 3),
(8, 1, 'I am always ready to support good suggestions that help to resolve a problem', 6),
(9, 2, 'I like to have a strong influence on decisions', 4),
(10, 2, 'I feel in my element where work requires a high degree of attention and concentration', 8),
(11, 2, 'I am concerned to help colleagues with their problems', 6),
(12, 2, 'I like to make critical discrimination between alternatives', 5),
(13, 2, 'I tend to have a creative approach to problem solving', 1),
(14, 2, 'I enjoy reconciling different points of view', 3),
(15, 2, 'I am more interested in practicalities than new ideas', 7),
(16, 2, 'I particularly enjoy exploring different views and techniques', 2),
(17, 3, 'I keep a watching eye on areas where difficulty may arise', 8),
(18, 3, 'I explore ideas that may have a wider application than in the immediate task', 1),
(19, 3, 'I like to weigh up a range of suggestions before choosing a solution', 5),
(20, 3, 'I can co-ordinate and use productively other people’s abilities and talents', 3),
(21, 3, 'I maintain a steady approach whatever the pressures', 7),
(22, 3, 'I often produce a new approach to long continuing problems', 1),
(23, 3, 'I am ready to make my personal views known in a forceful way if necessary', 4),
(24, 3, 'I am ready to help whenever I can', 6),
(25, 4, 'I am keen to see there is nothing vague about my task and objectives', 7),
(26, 4, 'I am not reluctant to emphasise my own point of view in meetings', 4),
(27, 4, 'I can work with all sorts of people provided that they have got something worthwhile to contribute', 3),
(28, 4, 'I make a point of following up interesting ideas and/or people', 2),
(29, 4, 'I can usually find the argument to refute unsound propositions', 5),
(30, 4, 'I tend to see patterns where others would see items as unconnected', 1),
(31, 4, 'Being busy gives me real satisfaction', 8),
(32, 4, 'I have an interest in getting to know people better', 6),
(33, 5, 'I often find my imagination frustrated by working in a group', 1),
(34, 5, 'I find my personal skill particularly appropriate in achieving agreement', 6),
(35, 5, 'My feelings seldom interfere with my judgement', 5),
(36, 5, 'I strive to build up an effective structure', 7),
(37, 5, 'I can work with people who vary widely in their personal qualities', 3),
(38, 5, 'I feel it is sometimes worth incurring some temporary unpopularity if one is to succeed in getting one’s views across in a group', 4),
(39, 5, 'I usually know someone whose specialist knowledge is particularly apt', 2),
(40, 5, 'I seem to develop a natural sense of urgency', 8),
(41, 6, 'I start to look around for possible ideas and openings', 2),
(42, 6, 'I am concerned to finish and perfect current work before I start', 8),
(43, 6, 'I approach the problem in a carefully analytical way', 5),
(44, 6, 'I am able to assert myself to get other people involved if necessary', 3),
(45, 6, 'I am able to take an independent and innovative look at most situations', 1),
(46, 6, 'I am happy to take the lead when action is required', 4),
(47, 6, 'I can respond positively to my colleagues and their initiatives', 6),
(48, 6, 'I find it hard to give in a job where the goals are not clearly defined', 7),
(49, 7, 'I think I have a talent for sorting out the concrete steps that need to be taken given a broad brief', 7),
(50, 7, 'My considered judgement may take time but is usually near the mark', 5),
(51, 7, 'A broad range of personal contacts is important to my style of working', 2),
(52, 7, 'I have an eye for getting the details right', 8),
(53, 7, 'I try to make my mark in group meetings', 4),
(54, 7, 'I can see how ideas and techniques can be used in new relationships', 1),
(55, 7, 'I see both sides of a problem and take a decision acceptable to all', 3),
(56, 7, 'I get on well with others and work hard for the team', 6);

-- --------------------------------------------------------

--
-- Table structure for table `belbin_question`
--

CREATE TABLE `belbin_question` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `belbin_question`
--

INSERT INTO `belbin_question` (`id`, `question`) VALUES
(1, 'when involved in a project with other people'),
(2, 'in seeking satisfaction through my work'),
(3, 'when the team is trying to solve a particulary complex problem'),
(4, 'in carrying out my day-to-day work'),
(5, 'if I am suddenly given a difficult task with limited time and unfamiliar people'),
(6, 'when suddenly asked to consider a new project'),
(7, 'in contributing to group projects in general');

-- --------------------------------------------------------

--
-- Table structure for table `enneagram`
--

CREATE TABLE `enneagram` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enneagram`
--

INSERT INTO `enneagram` (`id`, `name`, `description`) VALUES
(1, 'The Reformer', ' The rational, idealistic type. Ones are conscientious and ethical, with a strong sense of right and wrong. They are teachers, crusaders, and advocates for change: always striving to improve things, but afraid of making a mistake. Wellorganized, orderly, and fastidious, they try to maintain high standards, but can slip into being critical and perfectionistic. They typically have problems with resentment and impatience. At their Best: wise, discerning, realistic, and noble. Can be morally heroic'),
(2, 'The Helper', 'The caring, interpersonal type. Twos are empathetic, sincere, and warm-hearted. They are friendly, generous, and self-sacrificing, but can also be sentimental, flattering, and people-pleasing. They are well-meaning and driven to be close to others, but can slip into doing things for others in order to be needed. They typically have problems with possessiveness and with acknowledging their own needs. At their Best: unselfish and altruistic, they have unconditional love for others'),
(3, 'The Achiever', 'The success-oriented, pragmatic type. Threes are self-assured, attractive, and charming. Ambitious, competent, and energetic, they can also be status-conscious and highly driven for advancement. They are diplomatic and poised, but can also be overly concerned with their image and what others think of them. They typically have problems with workaholism and competitiveness. At their Best: self-accepting, authentic, everything they seem to be—role models who inspire others'),
(4, 'The Individualist', 'The sensitive, introspective, type. Fours are self-aware, expressive, and reserved. They are emotionally honest, creative, and personal, but can also be moody and self-conscious. Withholding themselves from others due to feeling vulnerable and defective, they can also feel disdainful and exempt from ordinary ways of living. They typically have problems with melancholy, selfindulgence, and self-pity. At their Best: inspired and highly creative, they are able to renew themselves and transform their experiences'),
(5, 'The Investigator', 'The intense, cerebral type. Fives are alert, insightful, and curious. They are able to concentrate and focus on developing complex ideas and skills. Independent, innovative, and inventive, they can also become preoccupied with their thoughts and imaginary constructs. They become detached, yet high-strung and intense. They typically have problems with eccentricity, nihilism, and isolation. At their Best: visionary pioneers, often ahead of their time, and able to see the world in an entirely new way'),
(6, 'The Loyalist', 'The committed, security-oriented type. Sixes are reliable, hard-working, responsible, and trustworthy. Excellent “trouble-shooters,” they foresee problems and foster cooperation, but can also become defensive, evasive, and anxious-running on stress while complaining about it. They can be cautious and indecisive, but also reactive, defiant and rebellious. They typically have problems with self-doubt and suspicion. At their Best: internally stable and self-reliant, courageously championing themselves and others'),
(7, 'The Enthusiast', 'The busy, variety-seeking type. Sevens are extroverted, optimistic, versatile, and spontaneous. Playful, high-spirited, and practical, they can also misapply their many talents, becoming over-extended, scattered, and undisciplined. They constantly seek new and exciting experiences, but can become distracted and exhausted by staying on the go. They typically have problems with impatience and impulsiveness. At their Best: they focus their talents on worthwhile goals, becoming appreciative, joyous, and satisfied'),
(8, 'The Challenger', 'The powerful, dominating type. Eights are self-confident, strong, and assertive. Protective, resourceful, straight-talking, and decisive, but can also be egocentric and domineering. Eights feel they must control their environment, especially people, sometimes becoming confrontational and intimidating. Eights typically have problems with their tempers and with allowing themselves to be vulnerable. At their Best: self-mastering, they use their strength to improve others\" lives, becoming heroic, magnanimous, and inspiring.'),
(9, 'The Peacemaker', 'The easygoing, self-effacing type. Nines are accepting, trusting, and stable. They are usually creative, optimistic, and supportive, but can also be too willing to go along with others to keep the peace. They want everything to go smoothly and be without conflict, but they can also tend to be complacent, simplifying problems and minimizing anything upsetting. They typically have problems with inertia and stubbornness. At their Best: indomitable and all-embracing, they are able to bring people together and heal conflicts');

-- --------------------------------------------------------

--
-- Table structure for table `enneagram_answer`
--

CREATE TABLE `enneagram_answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `eneagram_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enneagram_answer`
--

INSERT INTO `enneagram_answer` (`id`, `question_id`, `answer`, `eneagram_type`) VALUES
(1, 1, 'I\"ve been romantic and imaginative', 2),
(2, 1, 'I\"ve been pragmatic and down to earth', 6),
(3, 2, 'I have tended to take on confrontations', 8),
(4, 2, 'I have tended avoid confrontations', 9),
(5, 3, 'I have typically been diplomatic, charming, and ambitious', 3),
(6, 3, 'I have typically been direct, formal, and idealistic', 1),
(7, 4, 'I have tended to be focused and intense', 5),
(8, 4, 'I have tended to be spontaneous and fun-loving', 7),
(9, 5, 'I have been a hospitable person and have enjoyed welcoming new friends into my life', 2),
(10, 5, 'I have been a private person and have not mixed much with others', 4),
(11, 6, 'Generally, it\"s been easy to \"get a rise\" out of me', 6),
(12, 6, 'Generally, it\"s been difficult to \"get a rise\" out of me', 9),
(13, 7, 'I\"ve been more of a \"street-smart\" survivor', 8),
(14, 7, 'I\"ve been more of a \"high-minded\" idealist ', 1),
(15, 8, 'I have needed to show affection to people', 2),
(16, 8, 'I have preferred to maintain a certain distance with people', 5),
(17, 9, 'When presented with a new experience, I\"ve usually asked myself if it would be useful to me', 3),
(18, 9, 'When presented with a new experience, I\"ve usually asked myself if it would be enjoyable', 7),
(19, 10, 'I have tended to focus too much on myself', 4),
(20, 10, 'I have tended to focus too much on others', 9),
(21, 11, 'Others have depended on my insight and knowledge', 5),
(22, 11, 'Others have depended on my strength and decisiveness', 8),
(23, 12, 'I have come across as being too unsure of myself', 6),
(24, 12, 'I have come across as being too sure of myself', 1),
(25, 13, 'I have been more relationship-oriented than goal-oriented', 2),
(26, 13, 'I have been more goal-oriented than relationship-oriented', 3),
(27, 14, 'I have not been able to speak up for myself very well', 4),
(28, 14, 'I have been outspoken - I\"ve said what others wished they had the nerve to say', 7),
(29, 15, 'It\"s been difficult for me to stop considering alternatives and do something definite', 5),
(30, 15, 'It\"s been difficult for me to take it easy and be more flexible.', 1),
(31, 16, 'I have tended to be hesitant and procrastinating', 6),
(32, 16, 'I have tended to be bold and domineering', 8),
(33, 17, 'My reluctance to get too involved has gotten me into trouble with people', 9),
(34, 17, 'My eagerness to have people depend on me has gotten me into trouble with them', 2),
(35, 18, 'Usually, I have been able to put my feelings aside to get the job done', 3),
(36, 18, 'Usually, I have needed to work through my feelings before I could act', 4),
(37, 19, 'Generally, I have been methodical and cautious', 6),
(38, 19, 'Generally, I have been adventurous and taken risks', 7),
(39, 20, 'I have tended to be a supportive, giving person who enjoys the company of others', 2),
(40, 20, 'I have tended to be a serious, reserved person who likes discussing issues', 1),
(41, 21, 'I\"ve often felt the need to be a \"pillar of strength.\"', 8),
(42, 21, 'I\"ve often felt the need to perform perfectly', 3),
(43, 22, 'I\"ve typically been interested in asking tough questions and maintaining my independence', 5),
(44, 22, 'I\"ve typically been interested in maintaining my stability and peace of mind', 9),
(45, 23, 'I\"ve been too hard-nosed and sceptical', 6),
(46, 23, 'I\"ve been too soft-hearted and sentimental', 2),
(47, 24, 'I\"ve often worried that I\"m missing out on something better', 7),
(48, 24, 'I\"ve often worried that if I let down my guard, someone will take advantage of me', 8),
(49, 25, 'My habit of being \"stand-offish\" has annoyed people', 4),
(50, 25, 'My habit of telling people what to do has annoyed people', 1),
(51, 26, 'Usually, when troubles have gotten to me, I have been able to \"tune them out', 9),
(52, 26, 'Usually, when troubles have gotten to me, I have treated myself to something I\"ve enjoyed', 7),
(53, 27, 'I have depended upon my friends and they have known that they can depend on me', 6),
(54, 27, 'I have not depended on people; I have done things on my own', 3),
(55, 28, 'I have tended to be detached and preoccupied', 5),
(56, 28, 'I have tended to be moody and self-absorbed', 4),
(57, 29, 'I have liked to challenge people and \"shake them up.\" ', 8),
(58, 29, 'I have liked to comfort people and calm them down', 2),
(59, 30, 'I have generally been an outgoing, sociable person', 7),
(60, 30, 'I have generally been an earnest, self-disciplined person', 1),
(61, 31, 'I\"ve usually been shy about showing my abilities', 9),
(62, 31, 'I\"ve usually liked to let people know what I can do well', 3),
(63, 32, 'Pursuing my personal interests has been more important to me than having comfort and security', 5),
(64, 32, 'Having comfort and security has been more important to me than pursuing my personal interests', 6),
(65, 33, 'When I\"ve had conflict with others, I\"ve tended to withdraw', 4),
(66, 33, 'When I\"ve had conflict with others, I\"ve rarely backed down', 8),
(67, 34, 'I have given in too easily and let others push me around', 9),
(68, 34, 'I have been too uncompromising and demanding with others', 1),
(69, 35, 'I\"ve been appreciated for my unsinkable spirit and great sense of humour', 7),
(70, 35, 'I\"ve been appreciated for my quiet strength and exceptional generosite', 2),
(71, 36, 'Much of my success has been due to my talent for making a favourable impression', 3),
(72, 36, 'Much of my success has been achieved despite my lack of interest in developing \"interpersonal skills.\" ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `enneagram_question`
--

CREATE TABLE `enneagram_question` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enneagram_question`
--

INSERT INTO `enneagram_question` (`id`, `question`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, '16'),
(17, '17'),
(18, '18'),
(19, '19'),
(20, '20'),
(21, '21'),
(22, '22'),
(23, '23'),
(24, '24'),
(25, '25'),
(26, '26'),
(27, '27'),
(28, '28'),
(29, '29'),
(30, '30'),
(31, '31'),
(32, '32'),
(33, '33'),
(34, '34'),
(35, '35'),
(36, '36');

-- --------------------------------------------------------

--
-- Table structure for table `mbti`
--

CREATE TABLE `mbti` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(4) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mbti`
--

INSERT INTO `mbti` (`id`, `code`, `description`) VALUES
(1, 'ISTJ', 'Quiet, serious, earn success by thoroughness and dependability. Practical, matter-of-fact, realistic, and responsible. Decide logically what should be done and work toward it steadily, regardless of distractions. Take pleasure in making everything orderly and organized - their work, their home, their life. Value traditions and loyalty.'),
(2, 'ISFJ', 'Quiet, friendly, responsible, and conscientious. Committed and steady in meeting their obligations. Thorough, painstaking, and accurate. Loyal, considerate, notice and remember specifics about people who are important to them, concerned with how others feel. Strive to create an orderly and harmonious environment at work and at home.'),
(3, 'INFJ', 'Seek meaning and connection in ideas, relationships, and material possessions. Want to understand what motivates people and are insightful about others. Conscientious and committed to their firm values. Develop a clear vision about how best to serve the common good. Organized and decisive in implementing their vision.'),
(4, 'INTJ', 'Have original minds and great drive for implementing their ideas and achieving their goals. Quickly see patterns in external events and develop long-range explanatory perspectives. When committed, organize a job and carry it through. Skeptical and independent, have high standards of competence and performance - for themselves and others.'),
(5, 'ISTP', 'Tolerant and flexible, quiet observers until a problem appears, then act quickly to find workable solutions. Analyze what makes things work and readily get through large amounts of data to isolate the core of practical problems. Interested in cause and effect, organize facts using logical principles, value efficiency.'),
(6, 'ISFP', 'Quiet, friendly, sensitive, and kind. Enjoy the present moment, what\"s going on around them. Like to have their own space and to work within their own time frame. Loyal and committed to their values and to people who are important to them. Dislike disagreements and conflicts, do not force their opinions or values on others.'),
(7, 'INFP', 'Idealistic, loyal to their values and to people who are important to them. Want an external life that is congruent with their values. Curious, quick to see possibilities, can be catalysts for implementing ideas. Seek to understand people and to help them fulfill their potential. Adaptable, flexible, and accepting unless a value is threatened.'),
(8, 'INTP', 'Seek to develop logical explanations for everything that interests them. Theoretical and abstract, interested more in ideas than in social interaction. Quiet, contained, flexible, and adaptable. Have unusual ability to focus in depth to solve problems in their area of interest. Skeptical, sometimes critical, always analytical.'),
(9, 'ESTP', 'Flexible and tolerant, they take a pragmatic approach focused on immediate results. Theories and conceptual explanations bore them - they want to act energetically to solve the problem. Focus on the here-and-now, spontaneous, enjoy each moment that they can be active with others. Enjoy material comforts and style. Learn best through doing.'),
(10, 'ESFP', 'Outgoing, friendly, and accepting. Exuberant lovers of life, people, and material comforts. Enjoy working with others to make things happen. Bring common sense and a realistic approach to their work, and make work fun. Flexible and spontaneous, adapt readily to new people and environments. Learn best by trying a new skill with other people.'),
(11, 'ENFP', 'Warmly enthusiastic and imaginative. See life as full of possibilities. Make connections between events and information very quickly, and confidently proceed based on the patterns they see. Want a lot of affirmation from others, and readily give appreciation and support. Spontaneous and flexible, often rely on their ability to improvise and their verbal fluency.'),
(12, 'ENTP', 'Quick, ingenious, stimulating, alert, and outspoken. Resourceful in solving new and challenging problems. Adept at generating conceptual possibilities and then analyzing them strategically. Good at reading other people. Bored by routine, will seldom do the same thing the same way, apt to turn to one new interest after another.'),
(13, 'ESTJ', 'Practical, realistic, matter-of-fact. Decisive, quickly move to implement decisions. Organize projects and people to get things done, focus on getting results in the most efficient way possible. Take care of routine details. Have a clear set of logical standards, systematically follow them and want others to also. Forceful in implementing their plans.'),
(14, 'ESFJ', 'Warmhearted, conscientious, and cooperative. Want harmony in their environment, work with determination to establish it. Like to work with others to complete tasks accurately and on time. Loyal, follow through even in small matters. Notice what others need in their day-by-day lives and try to provide it. Want to be appreciated for who they are and for what they contribute.'),
(15, 'ENFJ', 'Warm, empathetic, responsive, and responsible. Highly attuned to the emotions, needs, and motivations of others. Find potential in everyone, want to help others fulfill their potential. May act as catalysts for individual and group growth. Loyal, responsive to praise and criticism. Sociable, facilitate others in a group, and provide inspiring leadership.'),
(16, 'ENTJ', 'Frank, decisive, assume leadership readily. Quickly see illogical and inefficient procedures and policies, develop and implement comprehensive systems to solve organizational problems. Enjoy long-term planning and goal setting. Usually well informed, well read, enjoy expanding their knowledge and passing it on to others. Forceful in presenting their ideas.');

-- --------------------------------------------------------

--
-- Table structure for table `mbti_answer`
--

CREATE TABLE `mbti_answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `mbti_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mbti_answer`
--

INSERT INTO `mbti_answer` (`id`, `question_id`, `answer`, `mbti_type`) VALUES
(1, 1, 'Interact with many, including strangers', 'E'),
(2, 1, 'Interact with a few, known to you', 'I'),
(3, 2, 'Realistic than speculative', 'S'),
(4, 2, 'Speculative than realistic', 'N'),
(5, 3, 'Have your “head in the clouds\"', 'S'),
(6, 3, 'Be “in a rut”', 'N'),
(7, 4, 'Principles', 'T'),
(8, 4, 'Emotions', 'F'),
(9, 5, 'Convincing', 'T'),
(10, 5, 'Touching', 'F'),
(11, 6, 'To deadlines', 'J'),
(12, 6, ' Just “whenever”', 'P'),
(13, 7, 'Rather carefully', 'J'),
(14, 7, 'Somewhat impulsively ', 'P'),
(15, 8, 'Stay late, with increasing energy', 'E'),
(16, 8, 'Leave early with decreased energy', 'I'),
(17, 9, 'Sensible people', 'S'),
(18, 9, 'Imaginative people', 'N'),
(19, 10, 'What is actual', 'S'),
(20, 10, 'What is possible', 'N'),
(21, 11, 'Laws than circumstances', 'T'),
(22, 11, 'Circumstances than laws', 'F'),
(23, 12, 'Objective', 'T'),
(24, 12, 'Personal', 'F'),
(25, 13, 'Punctual', 'J'),
(26, 13, 'Leisurely', 'P'),
(27, 14, 'Incomplete', 'J'),
(28, 14, 'Completed', 'P'),
(29, 15, 'Keep abreast of other’s happenings', 'E'),
(30, 15, 'Get behind on the news', 'I'),
(31, 16, 'Do it the usual way', 'S'),
(32, 16, 'Do it your own way', 'N'),
(33, 17, '“Say what they mean and mean what they say”', 'S'),
(34, 17, 'Express things more by use of analogy', 'N'),
(35, 18, 'Consistency of thought', 'T'),
(36, 18, 'Harmonious human relationships', 'F'),
(37, 19, 'Logical judgments', 'T'),
(38, 19, 'Value judgments', 'F'),
(39, 20, 'Settled and decided', 'J'),
(40, 20, 'Unsettled and undecided', 'P'),
(41, 21, 'Serious and determined', 'J'),
(42, 21, 'Easy-going', 'P'),
(43, 22, 'Rarely question that it will all be said', 'E'),
(44, 22, 'Rehearse what you’ll say', 'I'),
(45, 23, '“Speak for themselves” ', 'S'),
(46, 23, 'Illustrate principles', 'N'),
(47, 24, 'somewhat annoying', 'S'),
(48, 24, 'rather fascinating', 'N'),
(49, 25, 'a cool-headed person', 'T'),
(50, 25, 'a warm-hearted person', 'F'),
(51, 26, 'unjust', 'T'),
(52, 26, 'merciless', 'F'),
(53, 27, 'by careful selection and choice', 'J'),
(54, 27, 'randomly and by chance', 'P'),
(55, 28, 'having purchased', 'J'),
(56, 28, 'having the option to buy', 'P'),
(57, 29, 'initiate conversation', 'E'),
(58, 29, 'wait to be approached', 'I'),
(59, 30, 'rarely questionable', 'S'),
(60, 30, 'frequently questionable', 'N'),
(61, 31, 'make themselves useful enough', 'S'),
(62, 31, 'exercise their fantasy enough', 'N'),
(63, 32, 'standards', 'T'),
(64, 32, 'feelings', 'F'),
(65, 33, 'firm than gentle', 'T'),
(66, 33, 'gentle than firm', 'F'),
(67, 34, 'the ability to organize and be methodical', 'J'),
(68, 34, 'the ability to adapt and make do', 'P'),
(69, 35, 'infinite', 'J'),
(70, 35, 'open-minded', 'P'),
(71, 36, 'stimulate and energize you', 'E'),
(72, 36, 'tax your reserves', 'I'),
(73, 37, 'a practical sort of person', 'S'),
(74, 37, 'a fanciful sort of person', 'N'),
(75, 38, 'see how others are useful', 'S'),
(76, 38, 'see how others see', 'N'),
(77, 39, 'to discuss an issue thoroughly', 'T'),
(78, 39, 'to arrive at agreement on an issue', 'F'),
(79, 40, 'your head', 'T'),
(80, 40, 'your heart', 'F'),
(81, 41, 'contracted', 'J'),
(82, 41, 'done on a casual basis', 'P'),
(83, 42, 'the orderly', 'J'),
(84, 42, 'whatever turns up', 'P'),
(85, 43, 'many friends with brief contact', 'E'),
(86, 43, 'a few friends with more lengthy contact', 'I'),
(87, 44, 'facts', 'S'),
(88, 44, 'principles', 'N'),
(89, 45, 'production and distribution', 'S'),
(90, 45, 'design and research', 'N'),
(91, 46, '“There is a very logical person”', 'T'),
(92, 46, '“There is a very sentimental person”', 'F'),
(93, 47, 'unwavering', 'T'),
(94, 47, 'devoted', 'F'),
(95, 48, 'final and unalterable statement', 'J'),
(96, 48, 'tentative and preliminary statement', 'P'),
(97, 49, 'after a decision', 'J'),
(98, 49, 'before a decision', 'P'),
(99, 50, 'speak easily and at length with strangers', 'E'),
(100, 50, 'find little to say to strangers', 'I'),
(101, 51, 'experience', 'S'),
(102, 51, 'hunch', 'N'),
(103, 52, 'more practical than ingenious', 'S'),
(104, 52, 'more ingenious than practical', 'N'),
(105, 53, 'clear reason', 'T'),
(106, 53, 'strong feeling', 'F'),
(107, 54, 'fair-minded', 'T'),
(108, 54, 'sympathetic', 'F'),
(109, 55, 'make sure things are arranged', 'J'),
(110, 55, 'just let things happen', 'P'),
(111, 56, 're-negotiable', 'J'),
(112, 56, 'random and circumstantial', 'O'),
(113, 57, 'hasten to get to it first', 'E'),
(114, 57, 'hope someone else will answer', 'I'),
(115, 58, 'a strong sense of reality', 'S'),
(116, 58, 'a vivid imagination', 'N'),
(117, 59, 'fundamentals', 'S'),
(118, 59, 'overtones', 'N'),
(119, 60, 'to be too passionate', 'T'),
(120, 60, 'to be too objective', 'F'),
(121, 61, 'hard-headed', 'T'),
(122, 61, 'soft-hearted', 'F'),
(123, 62, 'the structured and scheduled', 'J'),
(124, 62, 'the unstructured and unscheduled', 'P'),
(125, 63, 'routinized than whimsical', 'J'),
(126, 63, 'whimsical than routinized', 'P'),
(127, 64, 'easy to approach', 'E'),
(128, 64, 'somewhat reserved', 'I'),
(129, 65, 'the more literal', 'S'),
(130, 65, 'the more figurative', 'N'),
(131, 66, 'identify with others', 'S'),
(132, 66, 'utilize others', 'N'),
(133, 67, 'clarity of reason', 'T'),
(134, 67, 'strength of compassion', 'F'),
(135, 68, 'being indiscriminate', 'T'),
(136, 68, 'being critical', 'F'),
(137, 69, 'planned event', 'J'),
(138, 69, 'unplanned event', 'P'),
(139, 70, 'deliberate than spontaneous', 'J'),
(140, 70, 'spontaneous than deliberate', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `mbti_question`
--

CREATE TABLE `mbti_question` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mbti_question`
--

INSERT INTO `mbti_question` (`id`, `question`) VALUES
(1, 'At a party do you'),
(2, 'Are you more'),
(3, 'Is it worse to'),
(4, 'Are you more impressed by'),
(5, 'Are more drawn toward the'),
(6, 'Do you prefer to work'),
(7, 'Do you tend to choose'),
(8, 'At parties do you'),
(9, 'Are you more attracted to'),
(10, 'Are you more interested in'),
(11, 'In judging others are you more swayed by'),
(12, 'In approaching others is your inclination to be somewhat'),
(13, 'Are you more'),
(14, 'Does it bother you more having things'),
(15, 'In your social groups do you'),
(16, 'In doing ordinary things are you more likely to'),
(17, 'Writers should'),
(18, 'Which appeals to you more'),
(19, 'Are you more comfortable in making'),
(20, 'Do you want things'),
(21, 'Would you say you are more'),
(22, 'In phoning do you'),
(23, 'Facts'),
(24, 'Are visionaries'),
(25, 'Are you more often'),
(26, 'Is it worse to be'),
(27, 'Should one usually let events occur'),
(28, 'Do you feel better about'),
(29, 'In company do you'),
(30, 'Common sense is'),
(31, 'Children often do not'),
(32, 'In making decisions do you feel more comfortable with'),
(33, 'Are you more'),
(34, 'Which is more admirable'),
(35, 'Do you put more value on'),
(36, 'Does new and non-routine interaction with others'),
(37, 'Are you more frequently'),
(38, 'Are you more likely to'),
(39, 'Which is more satisfying'),
(40, 'Which rules you more'),
(41, 'Are you more comfortable with work that is'),
(42, 'Do you tend to look for'),
(43, 'Do you prefer'),
(44, 'Do you go more by'),
(45, 'Are you more interested in'),
(46, 'Which is more of a compliment'),
(47, 'Do you value in yourself more that you are'),
(48, 'Do you more often prefer the'),
(49, 'Are you more comfortable'),
(50, 'Do you'),
(51, 'Are you more likely to trust your'),
(52, 'Do you feel'),
(53, 'Which person is more to be complimented – one of'),
(54, 'Are you inclined more to be'),
(55, 'Is it preferable mostly to'),
(56, 'In relationships should most things be'),
(57, 'When the phone rings do you'),
(58, 'Do you prize more in yourself'),
(59, 'Are you drawn more to'),
(60, 'Which seems the greater error'),
(61, 'Do you see yourself as basically'),
(62, 'Which situation appeals to you more'),
(63, 'Are you a person that is more'),
(64, 'Are you more inclined to be'),
(65, 'In writings do you prefer'),
(66, 'Is it harder for you to'),
(67, 'Which do you wish more for yourself'),
(68, 'Which is the greater fault'),
(69, 'Do you prefer the'),
(70, 'Do you tend to be more');

-- --------------------------------------------------------

--
-- Table structure for table `numerology`
--

CREATE TABLE `numerology` (
  `id` int(10) UNSIGNED NOT NULL,
  `day_of_month` int(11) NOT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `numerology`
--

INSERT INTO `numerology` (`id`, `day_of_month`, `description`) VALUES
(1, 1, 'A determined leader in the truest sense, and can gain the support and trust of others easily, even when his highly independent self would rather work alone.'),
(2, 2, 'Very sensitive and diplomatic, and his warm demeanor is a strength when dealing with or mediating others. His intuition is strong, tapping him into the inner thoughts of those around him.'),
(3, 3, 'Whether he has worked at it or not, he has a highly-developed creative talent and is a natural-born artist. His affectionate demeanor and wit make 3s a social star.'),
(4, 4, '4s are every employer\"s dream: a hard working, detail-oriented individual with high principles. And still, he maintains a sense of compassion for others and a love of close family.'),
(5, 5, '5s are lusty ... wanderlusty, that is. His eccentric self loves a change of scene and craves travel and adventure. He is highly adaptable and communicative, and relate well to others.'),
(6, 6, '6s are a generous family person, a kind soul with a strong skill in keeping the peace. He is able to resolve unrest between loved ones by easily finding the best middle ground.'),
(7, 7, '7s mind is its greatest asset. He enjoys contemplating on any topic, from the scientific to the spiritual, and have a great sense of focus. He takes nothing at face value, and can rely on his strong intuition to find truths that are hidden to others.'),
(8, 8, 'He is an \"ideas person\" when it comes to dreaming up new ventures, and he backs this with a creative approach to business and money matters. 8s are efficient, realistic and confident in its skills, always up for a challenge.'),
(9, 9, 'His open mind, relentless optimism and compassion for his fellow man makes him true humanitarian. He is charming and well-liked by others, and find it easy to relate to others, regardless of their differences.'),
(10, 10, '10s are highly ambitious and (no surprise!) yearn for independence so that he can follow his dreams however he sees fit. His drive for success is strong, and he can rely on his analytical mind and solid managerial skills.'),
(11, 11, 'He is an optimist, but not naive: his rose-colored view of the world is matched with a strong sense of confidence and determination. He is a dreamer, and his intuition is highly refined, helping him to reach an understanding of others.'),
(12, 12, '12s are a true artist, bringing creativity to everything from your home and style to the way he express himself. His enthusiastic nature, imagination and wit makes him the light of his social circle.'),
(13, 13, 'He is \"the rock\" in his family and community, and dependable above all else. He is organized and detail-oriented, using these skills in everything from nose-to-the-grindstone work to artistic endeavors.'),
(14, 14, 'Hello, globetrotter! His restless nature flocks toward the unexpected twists and turns of travel and variety. While he possesses an analytical mind, on the outside he is a very social, communicative and lucky person.'),
(15, 15, 'His creative spirit pushes him toward artistic expression. While he possess strong instincts in business and financial matters, his sensitivity and range of talents makes him accessible to those around him.'),
(16, 16, 'Never quite at home in the \"real world,\" he loves to concentrate his focus on big ideas. His interests lie in the spiritual and philosophical realms of life, and his intuition is excellent.'),
(17, 17, 'His lofty ambitions and towering goals are balanced out by his grounding skills in finances and business. His judgment is practical and efficient and his confidence level is high, motivating him to meet the expectations of others, and himself.'),
(18, 18, 'Not only he is a natural leader, but his leadership also inspires others. He has a keen understanding of other people, and could be an efficient manager or politician. He is broadminded and able to express himself well.'),
(19, 19, 'He is highly ambitious, and thrive on independence. His pioneering, risk-taking nature is balanced with creativity and sensitivity to help him succeed in a wide variety of endeavors.'),
(20, 20, 'He is like a mood ring, reflecting the emotions, desires and fears of the people who surround himself. His intuition and sensitivity are strong, and he must fight to keep a healthy distance from others.'),
(21, 21, 'His creative visions and unique ideas are propelled by his determination to succeed. His imagination is the driving force behind nearly everything he does, and his passionate nature is reflected in his love of other people.'),
(22, 22, 'He has a strong professional drive and flock toward innovative business rather than supporting the status quo. His greatest strength is in his unusually dualistic perception: he is able to envision what he wants and actually makes his desires materialize.'),
(23, 23, '23s love changes, excitement and risk, and thankfully, he is quite adaptable and easy to get along with. His skills in affection and communication are strong, and his creative, versatile mind loves the experience of something new.'),
(24, 24, 'He is family-oriented, with a gift for restoring and maintaining balance, peace and harmony in relationships. He is an emotional soul who is willing to sacrifice for the good of others. His strongest skills lie in healing and mediation.'),
(25, 25, 'His rational, analytical mind is balanced with a strong intuition, giving him the gift of broad knowledge and understanding to help him makes the best decisions.'),
(26, 26, 'His strong sense of business and financial affairs is supported by a creative, daring mindset, making him a confident and capable professional leader. He just don\"t want to lose sight of the details within the bigger picture.'),
(27, 27, 'He makes an efficient manager, capable of organizing the facts and inspiring others. His knack for creativity and expression, paired with a strong understanding of others, helps him excel in such diverse fields as politics, art and law.'),
(28, 28, 'He has a gentle air of authority about him, but feels most comfortable leading others when there\"s a sense of cooperation and teamwork. While his mind is rational, his thinking is unconventional and idealistic.'),
(29, 29, 'He has a rich imagination and a visual approach to every area of his life. His intuition is his greatest asset, and his connection to higher spiritual forces is strong.'),
(30, 30, 'He is an artist to his very core. He is a sociable person, and others perceive him as a charming and inspiring individual. While he seeks harmony in all that he does, he must always remind himself to balance his imagination with a sense of discipline.'),
(31, 31, 'His love of family and tradition makes him a solid foundation amongst loved ones. He draws appreciation and support from co-workers because of his affinity toward order, discipline and details. He is urged to make the most of the many opportunities he will encounter.');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `employerCode` varchar(50) NOT NULL,
  `company` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `birthDate` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `dataSet` int(11) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `selected` tinyint(1) NOT NULL,
  `assigned` tinyint(1) NOT NULL,
  `teamName` varchar(100) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `firstName`, `lastName`, `code`, `employerCode`, `company`, `phone`, `email`, `birthDate`, `time`, `dataSet`, `enabled`, `selected`, `assigned`, `teamName`, `role`, `position`) VALUES
(26, 'demo', '$2b$10$6s0AElH7tpvz3QeM6gOuEumEihN4O52mxmhOvK.ZumN58esmAZt2m', 'Ion', 'Iliescu', '1', '', 'compania ma-tii', '0327281892', 'ion@ion.com', '1978/07/04', '06:30', 0, 1, 0, 0, '', 'EMPLOYER', ''),
(27, 'dsadsa', '$2b$10$F1/u9YSA1da8IyuFCrz9Q.3C7M3/wQlpStdGxusMuknlvM04OwGci', '', '', '', '1', '', '', '', '2014/04/03', '05:25', 0, 1, 0, 0, '', 'EMPLOYEE', ''),
(28, 'demo2', '$2b$10$P.IrJl8bT7wTHumB/i6z5uCdOZ0B4.GQdhkI4mBH5JtkuhJuegVYO', 'Constantin', 'Prezan', '|}PNk(a}[tjWwLy=W4p,9IDc?3LD]ZpO', '1', '', '0726532432', 'cioco@maca.com', '2010/09/06', '06:15', 0, 1, 0, 0, '', 'EMPLOYER', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_belbin`
--

CREATE TABLE `user_belbin` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `answerId` int(11) NOT NULL,
  `answerScore` varchar(30) DEFAULT NULL,
  `answerBelbinId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_data_set`
--

CREATE TABLE `user_data_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `zodiac_id` int(11) DEFAULT NULL,
  `zodiac_ascendant_id` int(11) DEFAULT NULL,
  `numerology` int(11) DEFAULT NULL,
  `belbin_first_role` int(11) DEFAULT NULL,
  `belbin_second_role` int(11) DEFAULT NULL,
  `MBTI_role` varchar(4) DEFAULT NULL,
  `enneagram_first_role` int(11) DEFAULT NULL,
  `enneagram_second_role` int(11) DEFAULT NULL,
  `enneagram_third_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_data_set`
--

INSERT INTO `user_data_set` (`id`, `userId`, `zodiac_id`, `zodiac_ascendant_id`, `numerology`, `belbin_first_role`, `belbin_second_role`, `MBTI_role`, `enneagram_first_role`, `enneagram_second_role`, `enneagram_third_role`) VALUES
(18, 26, 10, 116, 14, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_enneagram`
--

CREATE TABLE `user_enneagram` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `answerId` int(11) NOT NULL,
  `answerEnneagramType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_mbti`
--

CREATE TABLE `user_mbti` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `answerId` int(11) NOT NULL,
  `answerMbtiType` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zodiac`
--

CREATE TABLE `zodiac` (
  `id` int(10) UNSIGNED NOT NULL,
  `zodiac` varchar(20) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `date_range` varchar(100) NOT NULL,
  `element` varchar(100) NOT NULL,
  `quality` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `ruler` varchar(100) NOT NULL,
  `compatibility` varchar(100) NOT NULL,
  `lucky_numbers` varchar(100) NOT NULL,
  `from_date` varchar(100) NOT NULL,
  `to_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zodiac`
--

INSERT INTO `zodiac` (`id`, `zodiac`, `description`, `date_range`, `element`, `quality`, `color`, `day`, `ruler`, `compatibility`, `lucky_numbers`, `from_date`, `to_date`) VALUES
(1, 'Aquarius', 'Progressive, original, independent, humanitarian, runs from emotional expression, temperamental, uncompromising, aloof, fun with friends, helping others, fighting for causes, intellectual conversation, a good listener, Limitations, broken promises, being lonely, dull or boring situations, people who disagree with them. Aquarius-born are shy and quiet , but on the other hand they can be eccentric and energetic. However, in both cases, they are deep thinkers and highly intellectual people who love helping others. They are able to see without prejudice, on both sides, which makes them people who can easily solve problems. Although they can easily adapt to the energy that surrounds them, Aquarius-born have a deep need to be some time alone and away from everything, in order to restore power. People born under the Aquarius sign, look at the world as a place full of possibilities.', 'January 20 - February 18', 'Air', 'Fixed', 'Light-Blue, Silver', 'Saturday', 'Uranus, Saturn', 'Leo, Sagittarius', '4, 7, 11, 22, 29', '01/20/2000', '02/18/2000'),
(2, 'Pisces', 'Compassionate, artistic, intuitive, gentle, wise, musical, fearful, overly trusting, sad, desire to escape reality, can be a victim or a martyr, being alone, sleeping, music, romance, visual media, swimming, spiritual themes, know-it-all, being criticized, the past coming back to haunt, cruelty of any kind. Pisces are very friendly, so they often find themselves in a company of very different people. Pisces are selfless, they are always willing to help others, without hoping to get anything back. Pisces is a Water sign and as such this zodiac sign is characterized by empathy and expressed emotional capacity.', 'February 19 - March 20', 'Water', 'Mutable', 'Mauve, Lilac, Purple, Violet, Sea green', 'Thursday', 'Neptune, Jupiter', 'Virgo, Taurus', '3, 9, 12, 15, 18, 24', '02/19/2000', '03/20/2000'),
(3, 'Aries', 'Courageous, determined, confident, enthusiastic, optimistic, honest, passionate, impatient, moody, short-tempered, impulsive, aggressive,  comfortable clothes, taking on leadership roles, physical challenges, individual sports, inactivity, delays, work that does not use one\"s talents. As the first sign in the zodiac, the presence of Aries always marks the beginning of something energetic and turbulent. They are continuously looking for dynamic, speed and competition, always being the first in everything - from work to social gatherings. Thanks to its ruling planet Mars and the fact it belongs to the element of Fire (just like Leo and Sagittarius), Aries is one of the most active zodiac signs. It is in their nature to take action, sometimes before they think about it well.', 'March 21 - April 19', 'Fire', 'Cardinal', 'Red', 'Tuesday', 'Mars', 'Libra, Leo', '1, 8, 17', '03/21/2000', '04/19/2000'),
(4, 'Taurus', 'Reliable, patient, practical, devoted, responsible, stable, stubborn, possessive, uncompromising, gardening, cooking, music, romance, high quality clothes, working with hands, sudden changes, complications, insecurity of any kind, synthetic fabrics. Practical and well-grounded, Taurus is the sign that harvests the fruits of labor. They feel the need to always be surrounded by love and beauty, turned to the material world, hedonism, and physical pleasures. People born with their Sun in Taurus are sensual and tactile, considering touch and taste the most important of all senses. Stable and conservative, this is one of the most reliable signs of the zodiac, ready to endure and stick to their choices until they reach the point of personal satisfaction.', 'April 20 - May 20', 'Earth', 'Fixed', 'Green, Pink', 'Friday, Monday', 'Venus', 'Scorpio, Cancer', '2, 6, 9, 12, 24', '04/20/2000', '05/20/2000'),
(5, 'Gemini', 'Gentle, affectionate, curious, adaptable, ability to learn quickly and exchange ideas, nervous, inconsistent, indecisive, music, books, magazines, chats with nearly anyone, short trips around the town, being alone, being confined, repetition and routine. Expressive and quick-witted, Gemini represents two different personalities in one and you will never be sure which one you will face. They are sociable, communicative and ready for fun, with a tendency to suddenly get serious, thoughtful and restless. They are fascinated with the world itself, extremely curious, with a constant feeling that there is not enough time to experience everything they want to see.', 'May 21 - June 20', 'Air', 'Mutable', 'Light-Green, Yellow', 'Wednesday', 'Mercury', 'Sagittarius, Aquarius', '5, 7, 14, 23', '05/21/2000', '06/20/2000'),
(6, 'Cancer', 'Tenacious, highly imaginative, loyal, emotional, sympathetic, persuasive, moody, pessimistic, suspicious, manipulative, insecure, art, home-based hobbies, relaxing near or in water, helping loved ones, a good meal with friends, strangers, any criticism of Mom, revealing of personal life. Deeply intuitive and sentimental, Cancer can be one of the most challenging zodiac signs to get to know. They are very emotional and sensitive, and care deeply about matters of the family and their home. Cancer is sympathetic and attached to people they keep close. Those born with their Sun in Cancer are very loyal and able to empathize with other people\"s pain and suffering.', 'June 21 - July 22', 'Water', 'Cardinal', 'White', 'Monday, Thursday', 'Moon', 'Capricorn, Taurus', '2, 3, 15, 20', '06/21/2000', '07/22/2000'),
(7, 'Leo', 'Creative, passionate, generous, warm-hearted, cheerful, humorous, arrogant, stubborn, self-centered, lazy, inflexible, theater, taking holidays, being admired, expensive things, bright colors, fun with friends, being ignored, facing difficult reality, not being treated like a king or queen. People born under the sign of Leo are natural born leaders. They are dramatic, creative, self-confident, dominant and extremely difficult to resist, able to achieve anything they want to in any area of life they commit to. There is a specific strength to a Leo and their \"king of the jungle\" status. Leo often has many friends for they are generous and loyal. Self-confident and attractive, this is a Sun sign capable of uniting different groups of people and leading them as one towards a shared cause, and their healthy sense of humor makes collaboration with other people even easier.', 'July 23 - August 22', 'Fire', 'Fixed', 'Gold, Yellow, Orange', 'Sunday', 'Sun', 'Aquarius, Gemini', '1, 3, 10, 19', '07/23/2000', '08/22/2000'),
(8, 'Virgo', 'Loyal, analytical, kind, hardworking, practical, shyness, worry, overly critical of self and others, all work and no play, animals, healthy food, books, nature, cleanliness, rudeness, asking for help, taking center stage. Virgos are always paying attention to the smallest details and their deep sense of humanity makes them one of the most careful signs of the zodiac. Their methodical approach to life ensures that nothing is left to chance, and although they are often tender, their heart might be closed for the outer world. This is a sign often misunderstood, not because they lack the ability to express, but because they won’t accept their feelings as valid, true, or even relevant when opposed to reason. The symbolism behind the name speaks well of their nature, born with a feeling they are experiencing everything for the first time.', 'August 23 - September 22', 'Earth', 'Mutable', 'Grey, Beige, Pale-Yellow', 'Wednesday', 'Mercury', 'Pisces, Cancer', '5, 14, 15, 23, 32', '08/23/2000', '09/22/2000'),
(9, 'Libra', 'Cooperative,diplomatic, gracious, fair-minded, social, indecisive, avoids confrontations, will carry a grudge, self-pity, harmony, gentleness, sharing with others, the outdoors, violence, injustice, loudmouths, conformity. People born under the sign of Libra are peaceful, fair, and they hate being alone. Partnership is very important for them, as their mirror and someone giving them the ability to be the mirror themselves. These individuals are fascinated by balance and symmetry, they are in a constant chase for justice and equality, realizing through life that the only thing that should be truly important to themselves in their own inner core of personality. This is someone ready to do nearly anything to avoid conflict, keeping the peace whenever possible', 'September 23 - October 22', 'Air', 'Cardinal', 'Pink, Green', 'Friday', 'Venus', 'Aries, Sagittarius', '4, 6, 13, 15, 24', '09/23/2000', '10/22/2000'),
(10, 'Scorpio', 'Resourceful, brave, passionate, stubborn, a true friend, distrusting, jealous, secretive, violent, truth, facts, being right, longtime friends, teasing, a grand passion, dishonesty, revealing secrets, passive people. Scorpio-born are passionate and assertive people. They are determined and decisive, and will research until they find out the truth. Scorpio is a great leader, always aware of the situation and also features prominently in resourcefulness. Scorpio is a Water sign and lives to experience and express emotions. Although emotions are very important for Scorpio, they manifest them differently than other water signs. In any case, you can be sure that the Scorpio will keep your secrets, whatever they may be.', 'October 23 - November 21', 'Water', 'Fixed', 'Scarlet, Red, Rust', 'Tuesday', 'Pluto, Mars', 'Taurus, Cancer', '8, 11, 18, 22', '10/23/2000', '11/21/2000'),
(11, 'Sagittarius', 'Generous, idealistic, great sense of humor, promises more than can deliver, very impatient, will say anything no matter how undiplomatic, freedom, travel, philosophy, being outdoors, lingy people, being constrained, off-the-wall theories, details. Curious and energetic, Sagittarius is one of the biggest travelers among all zodiac signs. Their open mind and philosophical view motivates them to wander around the world in search of the meaning of life. Sagittarius is extrovert, optimistic and enthusiastic, and likes changes. Sagittarius-born are able to transform their thoughts into concrete actions and they will do anything to achieve their goals.', 'November 22 - December 21', 'Fire', 'Mutable', 'Blue', 'Thursday', 'Jupiter', 'Gemini, Aries', '3, 7, 9, 12, 21', '11/22/2000', '12/21/2000'),
(12, 'Capricorn', 'Responsible, disciplined, self-control, good managers, know-it-all, unforgiving, condescending, expecting the worst, family, tradition, music, understated status, quality craftsmanship, almost everything at some point. Capricorn is a sign that represents time and responsibility, and its representatives are traditional and often very serious by nature. These individuals possess an inner state of independence that enables significant progress both in their personal and professional lives. They are masters of self-control and have the ability to lead the way, make solid and realistic plans, and manage many people who work for them at any time. They will learn from their mistakes and get to the top based solely on their experience and expertise.', 'December 22 - January 19', 'Earth', 'Cardinal', 'Brown, Black', 'Saturday', 'Saturn', 'Taurus, Cancer', '4, 8, 13, 22', '12/22/2000', '01/19/2000');

-- --------------------------------------------------------

--
-- Table structure for table `zodiac_ascendant`
--

CREATE TABLE `zodiac_ascendant` (
  `id` int(10) UNSIGNED NOT NULL,
  `zodiac` int(11) NOT NULL,
  `ascendant` int(11) NOT NULL,
  `time_range` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zodiac_ascendant`
--

INSERT INTO `zodiac_ascendant` (`id`, `zodiac`, `ascendant`, `time_range`) VALUES
(1, 1, 3, '9:19 - 10:19'),
(2, 1, 4, '10:19 - 11:48'),
(3, 1, 5, '11:48 - 13:42'),
(4, 1, 6, '13:42 - 15:59'),
(5, 1, 7, '15:59 - 18:34'),
(6, 1, 8, '18.34 - 21.14 '),
(7, 1, 9, '21:14 - 23:56'),
(8, 1, 10, '23:56 - 2:34'),
(9, 1, 11, '2:34 - 4:59'),
(10, 1, 12, '4:59 - 6:49'),
(11, 1, 1, '6:49 - 8:16'),
(12, 1, 2, '8:16 - 9:19'),
(13, 2, 3, '7:20 - 8:20 '),
(14, 2, 4, '8:20 - 9:49'),
(15, 2, 5, '9:49 - 11:43'),
(16, 2, 6, '11:43 - 14:00'),
(17, 2, 7, '14:00 - 16:35'),
(18, 2, 8, '16:35 - 19:15'),
(19, 2, 9, '19:15 - 21:57'),
(20, 2, 10, '21:57 - 0:35'),
(21, 2, 11, '0:35 - 3:00'),
(22, 2, 12, '3:00 - 4:50'),
(23, 2, 1, '4:50 - 6:17'),
(24, 2, 2, '6:17 - 7:20'),
(25, 3, 3, '5:23 - 6:23'),
(26, 3, 4, '6:23 - 7:52'),
(27, 3, 5, '7:52 - 9:46'),
(28, 3, 6, '9:46 - 12:13'),
(29, 3, 7, '12:13 - 14:41'),
(30, 3, 8, '14:41 - 17:18'),
(31, 3, 9, '17:18 - 20:00'),
(32, 3, 10, '20:00 - 22:38'),
(33, 3, 11, '22:38 - 1:08'),
(34, 3, 12, '1:08 - 2:53'),
(35, 3, 1, '2:53 - 4:17'),
(36, 3, 2, '4:17 - 5:23'),
(37, 4, 3, '3:20 - 4:20'),
(38, 4, 4, '4:20 - 5:49'),
(39, 4, 5, '5:49 - 7:43'),
(40, 4, 6, '7:43 - 10:00'),
(41, 4, 7, '10:00 - 12:38'),
(42, 4, 8, '12:38 - 15:40'),
(43, 4, 9, '15:40 - 17:53'),
(44, 4, 10, '17:53 - 20:35'),
(45, 4, 11, '20:35 - 23:00'),
(46, 4, 12, '23:00 - 0:50'),
(47, 4, 1, '0:50 - 2:17'),
(48, 4, 2, '2:17 - 3:20'),
(49, 5, 3, '1:48 - 2:48'),
(50, 5, 4, '2:48 - 4:17'),
(51, 5, 5, '4:17 - 6:11'),
(52, 5, 6, '6:11 - 8:28'),
(53, 5, 7, '8:28 - 11:03'),
(54, 5, 8, '11:03 - 13:43'),
(55, 5, 9, '13:43 - 16:25'),
(56, 5, 10, '16:25 - 19:03'),
(57, 5, 11, '19:03 - 21:28'),
(58, 5, 12, '21:28 - 23:18'),
(59, 5, 1, '23:18 - 0:45'),
(60, 5, 2, '0:45 - 1:48'),
(61, 6, 3, '23:12 - 0:12'),
(62, 6, 4, '0:12 - 1:41'),
(63, 6, 5, '1:41 - 3:35'),
(64, 6, 6, '3:35 - 5:52'),
(65, 6, 7, '5:52 - 8:27'),
(66, 6, 8, '8:27 - 11:07'),
(67, 6, 9, '11:07 - 13:49'),
(68, 6, 10, '13:49 - 16:27'),
(69, 6, 11, '16:27 - 18:52'),
(70, 6, 12, '18:52 - 20:40'),
(71, 6, 1, '20:40 - 22:09'),
(72, 6, 2, '22:09 - 23:12'),
(73, 7, 3, '21:09 - 22:09'),
(74, 7, 4, '22:09 - 23:38'),
(75, 7, 5, '23:38 - 1:32'),
(76, 7, 6, '1:32 - 3:49'),
(77, 7, 7, '3:49 - 6:42'),
(78, 7, 8, '6:42 - 9:04'),
(79, 7, 9, '9:04 - 11:42'),
(80, 7, 10, '11:42 - 14:24'),
(81, 7, 11, '14.24 - 16.49'),
(82, 7, 12, '16:49 - 17:39'),
(83, 7, 1, '17:39 - 20:07'),
(84, 7, 2, '20:07 - 21:09'),
(85, 8, 3, '19:07 - 20:07'),
(86, 8, 4, '20:07 - 21:36'),
(87, 8, 5, '21:36 - 23:30'),
(88, 8, 6, '23:30 - 1:47'),
(89, 8, 7, '1:47 - 4:22'),
(90, 8, 8, '4:22 - 7:02'),
(91, 8, 9, '7:02 - 9:44'),
(92, 8, 10, '9:44 - 12:22'),
(93, 8, 11, '12:22 - 15:47'),
(94, 8, 12, '15:47 - 16:37'),
(95, 8, 1, '16:37 - 18:04'),
(96, 8, 2, '18:04 - 19:07'),
(97, 9, 3, '17:05 - 18:05'),
(98, 9, 4, '18:05 - 19:34'),
(99, 9, 5, '19:34 - 21:28'),
(100, 9, 6, '21:28 - 23:35'),
(101, 9, 7, '23:35 - 2:20'),
(102, 9, 8, '2:20 - 5:00'),
(103, 9, 9, '5:00 - 7:42'),
(104, 9, 10, '7:42 - 10:20'),
(105, 9, 11, '10:20 - 12:35'),
(106, 9, 12, '12:35 - 13:35'),
(107, 9, 1, '13:35 - 16:02'),
(108, 9, 2, '16:02 - 17:05'),
(109, 10, 3, '15:07 - 16:07'),
(110, 10, 4, '16:07 - 17:36'),
(111, 10, 5, '17:36 - 19:30'),
(112, 10, 6, '19:30 - 21:47'),
(113, 10, 7, '21:47 - 0:22'),
(114, 10, 8, '0:22 - 3:02'),
(115, 10, 9, '3:02 - 5:44'),
(116, 10, 10, '5:44 - 8:22'),
(117, 10, 11, '8:22 - 10:47'),
(118, 10, 12, '10:47 - 11:37'),
(119, 10, 1, '11.37 - 14.02'),
(120, 10, 2, '14:02 - 15:07'),
(121, 11, 3, '13:08 - 14:08'),
(122, 11, 4, '14:08 - 15:37'),
(123, 11, 5, '15:37 - 17:31'),
(124, 11, 6, '17:31 - 19:48'),
(125, 11, 7, '19:48 - 22:23'),
(126, 11, 8, '22:23 - 1:03'),
(127, 11, 9, '1:03 - 3:45'),
(128, 11, 10, '3:45 - 6:23'),
(129, 11, 11, '6:23 - 8:48'),
(130, 11, 12, '8:48 - 10:38'),
(131, 11, 1, '10:38 - 12:05'),
(132, 11, 2, '12:05 - 13:08'),
(133, 12, 3, '11:13 - 12:13'),
(134, 12, 4, '12:13 - 13:42'),
(135, 12, 5, '13:42 - 15:36'),
(136, 12, 6, '15:36 - 17:53'),
(137, 12, 7, '17:53 - 20:28'),
(138, 12, 8, '20:28 - 23:08'),
(139, 12, 9, '23:08 - 1:50'),
(140, 12, 10, '1:50 - 4:28'),
(141, 12, 11, '4:28 - 6:53'),
(142, 12, 12, '6:53 - 8:43'),
(143, 12, 1, '8:43 - 10:10'),
(144, 12, 2, '10:10 - 11:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `belbin`
--
ALTER TABLE `belbin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `belbin_answer`
--
ALTER TABLE `belbin_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `belbin_question`
--
ALTER TABLE `belbin_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enneagram`
--
ALTER TABLE `enneagram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enneagram_answer`
--
ALTER TABLE `enneagram_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enneagram_question`
--
ALTER TABLE `enneagram_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbti`
--
ALTER TABLE `mbti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbti_answer`
--
ALTER TABLE `mbti_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbti_question`
--
ALTER TABLE `mbti_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `numerology`
--
ALTER TABLE `numerology`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_belbin`
--
ALTER TABLE `user_belbin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data_set`
--
ALTER TABLE `user_data_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_enneagram`
--
ALTER TABLE `user_enneagram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_mbti`
--
ALTER TABLE `user_mbti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zodiac`
--
ALTER TABLE `zodiac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zodiac_ascendant`
--
ALTER TABLE `zodiac_ascendant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `belbin`
--
ALTER TABLE `belbin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `belbin_answer`
--
ALTER TABLE `belbin_answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `belbin_question`
--
ALTER TABLE `belbin_question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `enneagram`
--
ALTER TABLE `enneagram`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `enneagram_answer`
--
ALTER TABLE `enneagram_answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `enneagram_question`
--
ALTER TABLE `enneagram_question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `mbti`
--
ALTER TABLE `mbti`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mbti_answer`
--
ALTER TABLE `mbti_answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `mbti_question`
--
ALTER TABLE `mbti_question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `numerology`
--
ALTER TABLE `numerology`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_belbin`
--
ALTER TABLE `user_belbin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1570;

--
-- AUTO_INCREMENT for table `user_data_set`
--
ALTER TABLE `user_data_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_enneagram`
--
ALTER TABLE `user_enneagram`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `user_mbti`
--
ALTER TABLE `user_mbti`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `zodiac`
--
ALTER TABLE `zodiac`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `zodiac_ascendant`
--
ALTER TABLE `zodiac_ascendant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
