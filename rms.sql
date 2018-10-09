-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2018 at 09:11 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `total_applicants` varchar(45) DEFAULT NULL,
  `post_job_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `sum_id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_id`, `msg`, `sum_id`, `resume_id`) VALUES
(12, 'shabaz)Hi sir', 96, 21),
(13, 'shabaz) Hi sir', 96, 21),
(15, 'shabaz) Hi sir', 96, 0),
(16, 'shabaz) salam sir my class fellows didn\'t work.', 96, 0),
(17, 'ahtisham) Hi sir', 96, 0),
(18, 'imran) Hi shabaz', 124, 23),
(19, 'shabaz) hi sir', 124, 21),
(20, 'shabaz) jjdjjd', 124, 21),
(21, 'imran) hi', 124, 23),
(22, 'shabaz) Hi sir', 125, 21),
(23, 'sheroz) salam sir my class fellows didn\'t work.', 125, 24),
(24, 'shabaz) Hi sir', 124, 21),
(25, 'shabaz) Hi sir', 124, 21),
(26, 'shabaz) hi', 124, 21),
(27, 'shabaz) hi', 124, 21),
(28, 'shabaz) hi', 124, 21),
(29, 'shabaz) hi', 124, 21),
(30, 'shabaz) xxx', 124, 21),
(31, 'shabaz) hi', 124, 21),
(32, 'shabaz) hi', 124, 21),
(33, 'shabaz) hi', 124, 21),
(34, 'shabaz) hi', 124, 21),
(35, 'shabaz) hi', 124, 21),
(36, 'shabaz) hi', 124, 21),
(37, 'shabaz) hi', 124, 21),
(38, 'shabaz) hi', 124, 21),
(39, 'shabaz) hi', 124, 21),
(40, 'shabaz) hi', 124, 21),
(41, 'shabaz) hi', 124, 21),
(42, 'shabaz) hi', 124, 21);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone_no` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `jobseeker_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `doc_name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `jobseeker_id` int(11) NOT NULL,
  `employer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `degree_title` varchar(45) DEFAULT NULL,
  `institute_name` varchar(45) DEFAULT NULL,
  `from_year` varchar(45) DEFAULT NULL,
  `to_year` varchar(45) DEFAULT NULL,
  `resume_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`degree_title`, `institute_name`, `from_year`, `to_year`, `resume_id`, `id`) VALUES
('BB', 'UMT', '2014', '2018', 21, 3),
('CSS', 'UCP', '2014', '2018', 21, 4),
('BSCS', 'ucp', '2014', '2017', 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `employer_name` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `confirm_password` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `company_city` varchar(45) DEFAULT NULL,
  `employer_phone_no` varchar(45) DEFAULT NULL,
  `company_email` varchar(50) DEFAULT NULL,
  `company_website` varchar(50) DEFAULT NULL,
  `company_type` varchar(25) DEFAULT NULL,
  `company_info` varchar(755) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`id`, `employer_name`, `email_address`, `password`, `confirm_password`, `company`, `country`, `company_address`, `company_city`, `employer_phone_no`, `company_email`, `company_website`, `company_type`, `company_info`) VALUES
(1, 'ahtsham', 'ahtsham.ali@umt.edu.pk', '123', '123', 'Umt', 'Pakistan', 'UMT johar town lahore', 'Lahore', '0333703555', 'umt@umt.edu.pk', 'umt.edu.pk', 'IT', 'UMT is a project of Institute of Leadership and Management (ILM) Trust. ILM was established in 1990 by leading educationists, professionals, and industrialists with an aim to enhance the organizational and individual effectiveness. Guided by the noble mission of helping others in actualizing their limitless human potential to its finest shape, ILM sought to respond to the challenges of information-based economy, globalization, and ever increasing complexity.\n\nThe University of Management and Technology has evolved into a premier institution of higher learning in the country. Recognized by the Higher Education Commission (HEC) as a “W4” category (highest rank) university, UMT is also the first in the Punjab amongst medium sized universities in th'),
(2, 'Shahzad khan', 'sfshouse1@yahoo.com', '123', '123', 'Software Solution ', 'Pakistan', 'PIA Society Johar Town,Lahore', 'Lahore', '03017994081', 'sfshouse1@gmail.com', NULL, 'IT', NULL),
(3, 'Ahmed', '110165165@umt.edu.pk', '123', '123', 'Khan & Company', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `from` varchar(45) DEFAULT NULL,
  `to_date` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`from`, `to_date`, `description`, `company_name`, `id`, `resume_id`, `title`) VALUES
('2017', '2018', 'university of management and techn', 'netstol', 3, 21, 'information technologist '),
('2017', '2018', 'technologist', 'microsoft', 9, 21, 'BSCS');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `f_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`f_id`, `file`, `type`, `size`, `d_id`) VALUES
(27, '11111111.docx', 'File', 21, 0),
(28, 'CSE 4316 Classic Mistakes.ppt', 'File', 21, 0),
(29, 'sumbal.pptx', 'File', 21, 10),
(30, '10a-Time (1).docx', 'File', 21, 11),
(31, '11111111.docx', 'File', 23, 0),
(32, 'cv.pdf', 'File', 21, 12);

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `f_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `job_id` int(11) NOT NULL,
  `emp_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`f_id`, `f_name`, `job_id`, `emp_id`) VALUES
(10, 'BSCS', 21, ''),
(11, 'CSS', 21, 'BSCS'),
(12, 'it', 21, 'BSCS');

-- --------------------------------------------------------

--
-- Table structure for table `invite`
--

CREATE TABLE `invite` (
  `inviteid` int(11) NOT NULL,
  `request` int(11) NOT NULL,
  `accept` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  `reqid` int(11) NOT NULL,
  `sumname` varchar(255) NOT NULL,
  `reqname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invite`
--

INSERT INTO `invite` (`inviteid`, `request`, `accept`, `sum`, `reqid`, `sumname`, `reqname`) VALUES
(10, 1, 1, 44, 80, 'shabaz@gmail.com', 'imran@gmail.com'),
(11, 1, 1, 44, 81, 'shabaz@gmail.com', 'sheroz@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `confirm_password` varchar(45) DEFAULT NULL,
  `jobseeker_phone` varchar(45) DEFAULT NULL,
  `jobseeker_address` varchar(45) DEFAULT NULL,
  `jobseeker_gender` varchar(45) DEFAULT NULL,
  `jobseeker_dob` varchar(45) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `profile_description` varchar(500) DEFAULT NULL,
  `experience` varchar(25) DEFAULT NULL,
  `degree` varchar(25) DEFAULT NULL,
  `nationality` varchar(50) NOT NULL,
  `requestid` int(11) NOT NULL,
  `acceptid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`id`, `first_name`, `last_name`, `email_address`, `password`, `confirm_password`, `jobseeker_phone`, `jobseeker_address`, `jobseeker_gender`, `jobseeker_dob`, `website`, `profile_description`, `experience`, `degree`, `nationality`, `requestid`, `acceptid`) VALUES
(44, 'shabaz', 'khalid', 'shabaz@gmail.com', '123', '123', '03324626194', 'valencia', 'Male', '15-08-1995', '15-08-1995', 'hi im expert.', '15-08-1995', 'PHD', '15-08-1995', 0, 0),
(80, 'imran', 'makdom', 'imran@gmail.com', '123', '123', NULL, NULL, NULL, NULL, NULL, 'hi', NULL, NULL, '', 0, 0),
(81, 'sheroz', 'khalid', 'sheroz@gmail.com', '123', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(82, 'khalid', 'shafiq', 'khalid2gmail.com', '123', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pic`
--

CREATE TABLE `pic` (
  `pic_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `picname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pic`
--

INSERT INTO `pic` (`pic_id`, `person_id`, `size`, `type`, `picname`) VALUES
(8, 21, 0, 'File', 'shabaz.JPG'),
(9, 22, 0, 'File', '21938339.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `post_jobs`
--

CREATE TABLE `post_jobs` (
  `id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `company_type` varchar(45) DEFAULT NULL,
  `job_description` varchar(750) DEFAULT NULL,
  `minimum_experience` varchar(45) DEFAULT NULL,
  `minimum_education` varchar(45) DEFAULT NULL,
  `employement_type` varchar(45) DEFAULT NULL,
  `salary_range` varchar(45) DEFAULT NULL,
  `total_position` varchar(45) DEFAULT NULL,
  `post_date` varchar(45) DEFAULT NULL,
  `expiry_date` varchar(45) DEFAULT NULL,
  `required_skills` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_jobs`
--

INSERT INTO `post_jobs` (`id`, `employer_id`, `job_title`, `location`, `company_type`, `job_description`, `minimum_experience`, `minimum_education`, `employement_type`, `salary_range`, `total_position`, `post_date`, `expiry_date`, `required_skills`) VALUES
(1, 1, 'Software Engineer', 'Lahore', 'Engineering', '\n    Strong coder with a passion for hands-on implementation\n    Ability to come up with the best solution for given requirements\n    Must have strong Analytical and Problem solving skills\n    Must be ready for long term commitment\n    Ability to mange small/medium size team, and lead technically\n', '2 year', 'BS(H)', 'Full Time', '25000-30000', '6', '15-2-2016', '30-2-2016', 'window,php,yii framwork'),
(2, 1, 'web Developer', 'Lahore', 'INFORMATION TECHNOLOGY', 'We are looking for talented and passionate Senior PHP Developer.\nThe candidate must have experience in developing and maintaining E commerce websites. The candidate will be responsible for building out custom websites using any of Open Source CMS (Joomla, WordPress, Drupal) or using any frameworks as (Codeignitor, Zend etc) .Must be familiar with Magento \nCandidate should h\n\n', '3 year', 'BS(H)', 'Full Time', '40000-50000', '3', '15-2-2016', '30-2-2016', 'php,html,AJAX'),
(3, 2, 'ROR Developer', 'Lahore', 'IT', 'Our organisation is looking for a professional and dedicated ruby on rail developer who can work on different ruby applications. He should be able to work on different versions of Ruby and hands on gems.  Has an experience of MVC frameworks.', '1 Years', 'B.CS/B.IT', ' Fulltime', 'Not Specified', '1', '03 february 2016', ' 02 may 2016', '\r\n\r\nPHP,Wordpress, Ruby on Rails\r\nJavascript, JSON ,MVC\r\n'),
(4, 2, 'Drupal Developer', ' Islamabad', 'IT', 'Excellent organizational skills, including the ability to work under pressure in a fast paced environment across multiple small and large scale projects.', '3 years', 'B.CS/B.IT', 'Full Time', 'Not Specified', '2', ' 17 february 2016', '16 may 2016', 'PHP, HTML5 and CSS3, Extensive knowledge of Drupal 6 and 7 core APIs'),
(5, 2, 'Quality Assurance Engineer', 'Rawalpindi', 'IT', 'We are looking for a QA Engineer with 3+ years of experience. As a QA Engineer an applicant will estimate, plan, and coordinate testing activities. He will also ensure that quality issues and defects are appropriately identified, documented, tracked, and resolved in our defect tracking system. Applicant must possess excellent communication and interpersonal skills.', '3 years', 'B.CS/BS SE', 'Full Time', '30000-40000', '3', '10 february 2016', '09 may 2016', 'Strong knowledge of software QA methodologies, tools, and processes, Solid knowledge of SQL and scripting, xperience working in an Agile/Scrum development process'),
(6, 2, 'Graphic Designer / 3D Animator', 'Faisalabad', 'IT', 'Create unique and creative designs.\r\nAbility to effectively manage multiple projects/tasks of varying complexities.\r\nMeeting clients to discuss their needs;\r\nInterpreting the client\'s business needs into graphic designer;\r\nDeveloping design briefs by gathering information and data to clarify design issues;', '1 Years', 'BSC', 'Full Time', '20000-25000', '4', ' 04 february 2016', ' 03 may 2016', '\r\n    Adobe Photoshop (CS3 and above)\r\n    Adobe Illustrator (CS3 and above)\r\n    Adobe InDesign (CS3 and above)\r\n    Corel Draw\r\n    Flash\r\n    Dream Viewer\r\n    Adobe After effect\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `resume_type` varchar(45) DEFAULT NULL,
  `file_name` varchar(45) DEFAULT NULL,
  `jobseeker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `resume_type`, `file_name`, `jobseeker_id`) VALUES
(21, NULL, NULL, 44),
(23, NULL, NULL, 80),
(24, NULL, NULL, 81),
(25, NULL, NULL, 82);

-- --------------------------------------------------------

--
-- Table structure for table `sandl`
--

CREATE TABLE `sandl` (
  `slid` int(11) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `resumeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sandl`
--

INSERT INTO `sandl` (`slid`, `skill`, `lang`, `resumeid`) VALUES
(2, 'c++', 'urdu', 21),
(4, 'computer', 'urdu', 21),
(5, 'php', '', 21);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `career_objective` varchar(255) DEFAULT NULL,
  `languages` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `resume_id`, `description`, `career_objective`, `languages`) VALUES
(36, 21, NULL, 'To work in a dynamic professional environment with a growing organization and utilize my creativity and innovative thinking for benefit of the organization and myself.', NULL),
(37, 23, NULL, 'hi', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Applicants_post_jobs1_idx` (`post_job_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Contacts_jobseeker1_idx` (`jobseeker_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Documents_jobseeker1_idx` (`jobseeker_id`),
  ADD KEY `fk_Documents_employer1_idx` (`employer_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_education_resume1_idx` (`resume_id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_experience_resume1_idx` (`resume_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `invite`
--
ALTER TABLE `invite`
  ADD PRIMARY KEY (`inviteid`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pic`
--
ALTER TABLE `pic`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indexes for table `post_jobs`
--
ALTER TABLE `post_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_post_jobs_employer1_idx` (`employer_id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Resume_jobseeker1_idx` (`jobseeker_id`);

--
-- Indexes for table `sandl`
--
ALTER TABLE `sandl`
  ADD PRIMARY KEY (`slid`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Skills_Resume1_idx` (`resume_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `invite`
--
ALTER TABLE `invite`
  MODIFY `inviteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `jobseeker`
--
ALTER TABLE `jobseeker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `pic`
--
ALTER TABLE `pic`
  MODIFY `pic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `post_jobs`
--
ALTER TABLE `post_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `sandl`
--
ALTER TABLE `sandl`
  MODIFY `slid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `fk_Applicants_post_jobs_post_job_id` FOREIGN KEY (`post_job_id`) REFERENCES `post_jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `fk_Contacts_jobseeker1` FOREIGN KEY (`jobseeker_id`) REFERENCES `jobseeker` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `fk_documents_employer_employer_id` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_documents_jobseeker_jobseeker_id` FOREIGN KEY (`jobseeker_id`) REFERENCES `jobseeker` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `fk_education_resume_resume_id` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `fk_experience_resume_resume_id` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_jobs`
--
ALTER TABLE `post_jobs`
  ADD CONSTRAINT `fk_post_jobs_employer_employer_id` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `resume`
--
ALTER TABLE `resume`
  ADD CONSTRAINT `fk_Resume_jobseeker1` FOREIGN KEY (`jobseeker_id`) REFERENCES `jobseeker` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `fk_skills_resume_resume_id` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
