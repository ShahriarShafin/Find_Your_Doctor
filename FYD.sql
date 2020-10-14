CREATE DATABASE  IF NOT EXISTS `fydv2` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fydv2`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fydv2
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `d_id` char(6) NOT NULL,
  `doctor_name` varchar(125) NOT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `sp_id` char(6) NOT NULL,
  PRIMARY KEY (`d_id`),
  KEY `fk_doctors_Specialists1_idx` (`sp_id`),
  CONSTRAINT `fk_doctors_Specialists1` FOREIGN KEY (`sp_id`) REFERENCES `specialists` (`sp_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES ('d_001','Professor Dr. Abdullah-Al-Safi Majumder','MBBS, D. Card, MD(Card), FACC, FSGC, FRCP Research Fellow,','Professor of Cardiology','sp_001'),('d_002','Professor (Dr.) Mohammad Safiuddin','FACC(USA), FCCP(USA), FESC, FRCP(Glasgow,UK)','Professor of Interventional Cardiology,','sp_001'),('d_003','Professor (Dr.) Md. Fakhrul Islam','MBBS, MD (Cardiology), FESC (Europe), FACC (America)','Sinior Consultant, Heart Failure Dept. Labaid Cardiac Hospital, Dhaka.','sp_001'),('d_004','Dr. H. I. Lutfor Rahman Khan','MBBS, D-Card, MD (Card)','Professor & Head, Department of Cardiology','sp_001'),('d_005','Professor Dr. Md. Afjalur Rahman','MBBS, MD (Cardiology), PHD (Cardiology)','Professor & Head of Dept. Cardiology','sp_001'),('d_006','Professor Dr. Abduz Zaher','MBBS, FCPS ( Medicine ), FACC ( USA ) , FRCP','Consultant, Department of Interventional Cardiology','sp_001'),('d_007','Professor Dr. Abu Zafar','MBBS, MRCP ( UK ), FRCP ( Glasgow )','Professor, Ex-Head, Dept. of Cardiology, BSMMU','sp_001'),('d_008','Professor Hasina Banoo','MBBS, FCPS (Medicine)','Ex. Professor of Cardiology SSMCH (Mitford) & BSMMU','sp_001'),('d_009','Professor Dr. K.M.H.S. Sirajul Haque','MBBS, FCPS, FRCP, FACC','Cardiology /Heart Specialist','sp_001'),('d_010','Professor Dr. M. Jalaluddin','FCPS ( Medicine ), FRCP','Consultant Labaid Cardiac Hospital','sp_001'),('d_011','Professor Dr. M. Nazrul Islam','MBBS, FCPS, FRCP, FACC, FESC','Professor of Interventional Cardioloy','sp_001'),('d_012','Assoc. Prof. Dr. Aslam Almehdi','Ph.D. (Periodontal Plastic Surgery) Tokyo, Japan','Periodontal Plastic & Maxillofacial Surgeon','sp_002'),('d_013','Dr. Uttom Kumar Shet','BDS , MSD ( South Kore), PhD (South Korea),','Assistant Professor','sp_002'),('d_014','DR. SK. NAZRUL ISLAM','BDS(DU) PGT(BKK) FAES(USA) MCPS(BCPS)','Specialized Dental Surgeon','sp_002'),('d_015','Dr. Md. Abdullah Khan','BDS, PGT ( Japan )','Consultant','sp_002'),('d_016','Dr. M. A. Sikder','BDS, Ph.D ( Japan )','Consultant','sp_002'),('d_017','Professor Dr. Md. Shamsul Alam','BDS, DCD(USSR), FADI(USA)','Professor & Chairman','sp_002'),('d_018','Professor Dr. Khandaker Abdul Azim','BDS, Dip, OMS ( Australia )','Consultant','sp_002'),('d_019','Dr. Mohammed Shafi Ullah','MBBS, MS, BDS, MCPS, MDRA(USA)','Associate Professor & Head of Department','sp_002'),('d_020','Dr. Nurul Amin','BDS, PhD ( Japan )','Associate Professor & Head, Department of Oral & Maxillofacial Surgery','sp_002'),('d_021','Dr. Salahuddin ( Swapon )','B.D.S, FCPS','Assistant Professor & Head of Department ( CIDCH )','sp_002'),('d_022','PROF. COLONEL DR MD SHIRAJUL ISLAM KHAN','MBBS, DDV, MCPS, FCPS(Dermatology and Venereology), Grading Course in Dermatology (AFMI)','Professor and Head of the Department, Dermatology and Venereology, Combined Military Hospital (CMH), Dhaka','sp_003'),('d_023','Dr Lubna Khondker','MBBS, MPH, DDV (BSMMU), MCPS, FCPS (Dermatology and Venereology)','Associate Professor, Department of Dermatology and Venereology, Bangabandhu Sheikh Mujib Medical University (BSMMU), Dhaka','sp_003'),('d_024','Associate Prof. Dr. Hosne Ara Begum','MBBS, DDV, FCPS ( Skin & VD)','Associate Professor, and Head of the Department, Birdem','sp_003'),('d_025','Dr. A.S. Mofrehuddin Ahmed','MBBS (DHAKA), DDV','Consultant skin specialist','sp_003'),('d_026','Dr. A.S.M. Zakariya','MBBS, MPH, MD skin / dermatology','Assistant Professor','sp_003'),('d_027','Dr. A.T.M. Asaduzzaman','MBBS, MD','Assistant Professor.','sp_003'),('d_028','Dr. Abdul Quaium Chowdhury','M-Dermatology (India), Fellow (Vd & Aids) Lond Fellow (Skin Surgery) Germany','Consultant','sp_003'),('d_029','Dr. Abida Sultana','MBBS (Dhaka), DDV skin/dermatology','skin specialist','sp_003'),('d_030','Dr. Abul Farah','MBBS, DCM, DDV, MCPS (SKIN & VD) skin / dermatology','Registar-Sir Salimullah Medical College & Hospital, Dhaka','sp_003'),('d_031','Dr. Ahammad Ali','MBBS, DDV (DEU), DTM &H (THAI) skin / dermatology','Senior Consultant-Shahid Suhrawardi Hospital, Dhaka','sp_003'),('d_032','Dr. Abdul Ali','MBBS','Diabetes','sp_015'),('d_033','Professor Dr. Zafar A. Latif','MBBS, FCPS','Professor','sp_015'),('d_034','Dr. Indrajit Prasad','MBBS, FCPS, MD, MACE ( USA )','Assistant professor','sp_015'),('d_035','Dr. Ahsanul Haq Amin','MBBS, MD','Assistant Professor','sp_015'),('d_036','Dr. Md. Feroz Amin','MBBS, MD ( Endocrinology )','Assistant Professor','sp_015'),('d_037','Dr. Abdul Mannan Sarker','MBBS, DEM (DU), MD (Endocrinology)','Consultant','sp_015'),('d_038','Dr. ( Capt. Rtd. ) H.S Ferdous','MBBS, DEM (DU), FRMH (Australia), MACE (USA) Ph.D Fellow(DU),','Consultant','sp_015'),('d_039','Dr. A K M Shaeen Ahmed','MBBS, MCPS (Medicine), FCPS (Medicine)','Medicine & Diabetes','sp_015'),('d_040','Dr. Kazi Ali Hassan','MBBS, M.Phil (EM), MRCP (UK)','Consultant, Specialist of Endocrinologist','sp_015'),('d_041','Dr. Iqbal Ahmed','MBBS, CCD ( Birdem )','Specialist','sp_015'),('d_042','Dr. AKM Mamunur Rashid','MBBS, DCO(ICO,Ctg) , MPHO (UniSA)',NULL,'sp_004'),('d_043','Professor Dr. A.H.M. Enayet Hussain','MBBS, FRCS ( Glasg. Uk ), FCPS ( BD ), ICO ( UK )',NULL,'sp_004'),('d_044','Professor Dr. Deen Mohd. Noorul Huq','MBBS, FCPS',NULL,'sp_004'),('d_045','Professor Dr. Shah Alam','MBBS, FCPS ( Ophthalmology )',NULL,'sp_004'),('d_046','Professor Dr. Md. Saleh Uddin','MBBS, FCPS, MS, MPhD ( Australia ), FICS, FCPS',NULL,'sp_004'),('d_047','Professor Dr. Jalal Ahmed','MBBS, FCPS, FICS',NULL,'sp_004'),('d_048','Dr. A.K.M. Nazmus Saquib','MBBS, D.Ophth ( DU ), FEPS ( India ),',NULL,'sp_004'),('d_049','Dr. G M Mostafa','MBBS, DO, MS ( Eye )',NULL,'sp_004'),('d_050','Dr. Md. Fakhrul Islam','MBBS, MCPS ( Ophthalmology ), MS ( Ophthalmology )',NULL,'sp_004'),('d_051','Dr. Mohibul karim','MBBS, Ph.D ( Japan ), FICA ( USA )',NULL,'sp_004'),('d_052','Dr. Arun Dodhu Patole','MBBS, MS, DORL (Mumbai), Fellow A.I.N.OT (Italy)','Professor & Head of the Departnment of ENT','sp_005'),('d_053','Professor Dr. A.F. Mohiuddin Khan','MBBS, DLO, MS ( ENT )','Professor','sp_005'),('d_054','Professor Dr. Abdullah A. Harron','FRCS ( Gasgow ) , FCPS','Professor & Chairman','sp_005'),('d_055','Professor Dr. Abul Hasnat Joarder','MBBS, FCPS','Professor and Director','sp_005'),('d_056','Professor Dr. Mahmudul Hasan','MBBS, FCPS (ENT)','Associate Professor, Otolaryngology','sp_005'),('d_057','Dr. M A Rouf Sardar',NULL,'Assistant Professor','sp_005'),('d_058','Dr. A. F. Mohiuddin Khan','MBBS, DLO(DU), MS (ENT)','Assistant Professor','sp_005'),('d_059','Dr. A.B.M. Khorshed Alam','MBBS, FCPS','Assistant Professor','sp_005'),('d_060','Dr. A.K.M.A Sobhan','MBBS, FRSH(London), DLO, MS','Consultant','sp_005'),('d_061','Dr. Hossain Imam Al Hadi','MBBS, FCPS, FRCS (Glasgow), Fellowship Training (UK)','Assistant Professor','sp_005'),('d_062','Dr. Sharmin Akter Liza','MBBS, FCPS','Consultant','sp_006'),('d_063','Prof. Dr. Sangjukta Saha','MBBS, MS (Obs & Gynae).','Professor & Head, Dept. of Gynae, Obs & Laparoscopic Surgery, Shahid Monsur Ali Medical College and Hospital, Dhaka.','sp_006'),('d_064','Prof. Dr. Munira Ferdausi','MBBS, MPH(Dhaka), MS (Obs & Gynae)','Master Trainer On Cervical Cancer & Breast Cancer','sp_006'),('d_065','Dr. T A Chowdhury','MBBS, FRCS, FRCOG, FRCP, FCPS (Ban), FCPS (Pak)','Professor and Senior Consultant, Department of Obstetrics and Gynecology','sp_006'),('d_066','Dr. Laila Arjumand Banu','MBBS (Dhaka), DGO (DU), FCPS (Obs. & Gynae)','Professor of Gynaecology & Obstetrics and Chief Consultant','sp_006'),('d_067','Professor Dr. Amena Majid','MBBS, FCPS ( Gyne. ), MMED ( UK )','Ex. Professor of Gyne. & Obs.','sp_006'),('d_068','Dr. Ashrafun Nessa','MBBS, MRCOG (London)','Senior Consultant, Dept. of Obstetrics & Gynaecology','sp_006'),('d_069','Dr. Farhana Dewan','MBBS, FCPS (Gynae & Obs)','Senior Consultant, Dept. of Obstetrics & Gynaecology','sp_006'),('d_070','Dr. Hafizur Rahman','MBBS, FRCOG (London)','Senior Consultant, Obstetrics & Gynaecology','sp_006'),('d_071','Dr. Kohinoor Begum','MBBS, FCPS (Gynae & Obs)','Professor and Head of Gynaecology & Obstetrics','sp_006'),('d_072','Dr. Md. Abdur Rahim Miah','MBBS, MD ( Gastroenterology )','Associate Professor, Department of Gastroenterology','sp_007'),('d_073','Professor Dr. Anowar Kabir','MBBS, MRCP, FRCP, FCGE (UK)','Senior Consultant','sp_007'),('d_074','Professor Dr. A.S.M.A Raihan','MBBS, MD (Gastro), FRCP (edin)','Chairman, Department of Gastroenterology','sp_007'),('d_075','Professor Dr. Faruque Ahmed','MBBS, FCPS ( Med. ), MD ( Gastro. )','Professor & Head, Dept. of Gastroenterology','sp_007'),('d_076','Professor Dr. M A Masud','FCPS, MD ( Gastro ), MACG ( USA )','Professor, Department of Gastroenterology','sp_007'),('d_077','Professor Dr. Md. Samsul Arfin','MBBS, FCPS, (Medicine)','Consultant','sp_007'),('d_078','Professor Dr. Swapan Chandra Dhar','MBBS. FCPS. MD (Gas), MACG (USA)','Professor & Head, Department of Gastroenterology','sp_007'),('d_079','Dr. Hasan Masud','MBBS, MD','Associate Professor','sp_007'),('d_080','Dr. Md. Mohsin Kabir','MBBS, MD ( Gastro )','Assistant Professor, Department of GHPD','sp_007'),('d_081','Dr. Md. Anwarul Karim','FCPS ( Ped. ), MD ( Ped. )','Associate Professor','sp_009'),('d_082','Professor Dr. Alamgir Kabir','MBBS, FCPS ( Hematology )','Professor & Head, Department of Hematology','sp_009'),('d_083','Professor Dr. A. B. M. Yunus','MBBS (India), MPhil Path (Hons), FCPS (Hematology)','Professor','sp_009'),('d_084','Professor Dr. Md. Moniruzzaman','MBBS, GC (Pathology),','MCPS (Clinical Pathology), FCPS (Haematology)','sp_009'),('d_085','Professor Dr. M A Khan','MBBS, FCPS ( Hematology ), ASH Member','Professor and Head, Department of Hematology','sp_009'),('d_086','Professor Dr. Md. Jalilur Rahman','MBBS, M.Phil, FCPS, FRCP (Edin), FRCP (Glasgow)','Professor & Chairman','sp_009'),('d_087','Professor Dr. Manzur morshed','MBBS, FCPS, MRCP(UK)','Professor','sp_009'),('d_088','Professor Dr. Manjur Morshed','MBBS, FCPS, MRCP ( UK )','Professor','sp_009'),('d_089','Dr. Mohammed A. Hashem','MBBS, MD (Interna. Med. USA), Fellow in Nephrology (USA)','Consultant','sp_011'),('d_090','Professor Dr. Muhammad Rafiqul Alam','MBBS, MD ( Nephrology ), Fcps ( Medicine )','Professor & Chairman, department of Nephrology','sp_011'),('d_091','Professor Dr. Md. Abul Mansur','MBBS, MD, Dip. in Nephro','Professor, Department of Hemodialysis','sp_011'),('d_092','Professor Dr. Md. Jahangir Kobir','FCPS (Medicine) FCW (Kidney)UK','Director & Professor','sp_011'),('d_093','Professor Dr. M. Muhibur Rahman','MBBS (DMC), FCPS (Medicine), MRCP (UK), Ph.D Nephrology (London)','Professor, Department of Nephrology','sp_011'),('d_094','Prof. Dr. Harun-Ur-Rashid','MBBS, P.hD, FCPS, FRCP','Former Professor & Chairman','sp_011'),('d_095','Dr. A.K.M. Shamsul kabir','MBBS (DMCH), FCPS (Medicine), MD (Hepatology)','Assistant Professor','sp_008'),('d_096','Professor Dr. A H M Rowshon','MBBS, FCPS (Med.), MD(Gastro),','Commonwealth Fellow-gastro (UK)','sp_008'),('d_097','Professor Dr. A. K. M. Khorshed Alam','MBBS, FCPS; MHPE','Professor, Department of Hepatology','sp_008'),('d_098','Professor Dr. M. T. Rahman','MBBS, FCPS, Trained in France & Japan','Former Professor, Gastrointestinal Liver & Pancereatic Diseases','sp_008'),('d_099','Professor Dr. Anowar Kabir','MBBS, MRCP, FRCP, FCGE (UK)','Senior Consultant','sp_008'),('d_100','Dr. Dewan Saifuddin Ahmed','MBBS, FCPS ( Medicine ), MD ( Gastro )','Associate Professor','sp_008'),('d_101','Dr. Mamun-Al-Mahtab (Shwapnil)','MBBS, MSC ( Gastroenterology, London )','Assistant Professor, Department of Liver','sp_008'),('d_102','Dr. Lutful L. Chowdhury','MBBS, MRCP, FRCP, FCGE (UK)','Senior Consultant','sp_008'),('d_103','Dr. Hafeza Aftab','MBBS, MD (Gastroentrology)','Consultant','sp_008'),('d_104','Dr. Mohammad Jahangir Talukder','MBBS(Ctg), MRCP(UK), MRCP (Edin)','Consultant','sp_010'),('d_105','Dr. Abu Reza Mohammad Nooruzzaman',NULL,'Consultant','sp_010'),('d_106','Dr. Afsana Begum','MBBS, FCPS','Specialist','sp_010'),('d_107','Dr. Anup Kumar Saha','MBBS, FCPS ( Medicine ), MD ( Internal Medicine ), FACP ( America )','Associate Professor','sp_010'),('d_108','Dr. Abdullah Al Mamun','MBBS, FCPS (Medicine), MACP ( USA ), FACP','Consultant','sp_010'),('d_109','Dr. Md. Abul Kalam Azad','MBBS, FCPS','Associate Professor','sp_010'),('d_110','Professor Dr. A.B.M Abullah','MRCP(UK), FRCP','Professor','sp_010'),('d_111','Professor Dr. H A M Nazmul Ahsan','MBBS, FCPS, FRCP (Glasgow) FRCP (Edin), FACP (USA)','Professor of Medicine','sp_010'),('d_112','Professor Dr. Mansur Habib','MBBS, FCPS (Medicine) , MD (Neurology) MRCP, FRCP','Professor , Department of Neurology','sp_012'),('d_113','Professor Dr. Md. Abdul Hai','MBBS, FCPS (Medicine),MD (Neuro),PhD (India), FRCP (Edin),Fellow (Interventional Neurology)','Professor','sp_012'),('d_114','Professor Dr. M. A. Mannan','MBBS, FRCP','Professor, Rtd. & Head of the Department of Neurology','sp_012'),('d_115','Professor Dr. Md. Amirul Haque','MBBS, FCPS, FFRCP ( Glasgow ), FACP ( USA ), DCN ( London )','Professor & Head, Department of Neuromedicine','sp_012'),('d_116','Professor Dr. Md. Ashraf Ali','Senior Consultant, Department of Neurology','MBBS, FCPS ( Medicine ), MD ( Neurology ), FRCSP ( Edin )','sp_012'),('d_117','Professor Dr. (Major Retd.) Md. Mahbubur Rahman','MBBS, FCPS (Medicine), MD (Neurology)','Professor & Head, Department of Neuromedicine','sp_012'),('d_118','Professor Dr. Sirajul Haque','MBBS, FCPS (Medicine), FACP (USA), FRCP (Edin)','Chief Consultant','sp_012'),('d_119','Professor Dr. Syed Wahidur Rahman','MBBS, FCPS (Medicine)','Professor & Head, Neuromedicine Department','sp_012'),('d_120','Professor Dr. Anisul Haque','MBBS, Ph.D. FCPS, FRCP (Edin)','Professor, Head of the Deptartment of Neuro Medicine BSMMU','sp_012'),('d_121','Professor Dr. A.K.M. Anwar Ullah','MBBS, FCPS, FRCP(Adin)','Professor','sp_012'),('d_122','Prof. Dr. Md. Iqbal Qavi','MBBS, D.Ortho, MS (Ortho)','Professor of Orthopedics (Rtd)','sp_013'),('d_123','Dr. Amit Kapoor','MBBS, MS (Ortho.), DNB (Ortho.),','Consultant','sp_013'),('d_124','Dr. Abu Jafar Chowdhury','MBBS, MS ( Ortho )','Assistant Professor','sp_013'),('d_125','Professor Dr. Kh. Abdul Awal','MBBS, MS, FICS','Professor & Director','sp_013'),('d_126','Professor Dr. M. Hafizur Rahman','MBBS, MS','Professor & Head, Department Of Orthopaedic','sp_013'),('d_127','Professor M. K. I. Qayyum Chowdhury','MBBS, MS (Ortho), F.I.C.S, F.A.C.S (USA)','Head, Orthopedic Department','sp_013'),('d_128','Prof. Dr. Md. Siraj-Ul-Islam','MBBS, MS (Ortho)','Professor','sp_013'),('d_129','Professor Dr. Qazi Shahidul Alam','MBBS, D. Orth, MS ( Orth ), FICS ( USA )','Professor','sp_013'),('d_130','Brig Gen Professor Dr. A K M Masud','MBBS, MS','Professor & Head, Department of Orthopaedics','sp_013'),('d_131','Professor Dr. A.K.M. Akter Murshed','MBBS, MS, FICS','Professor','sp_013'),('d_132','Dr. Shyamal Debnath','MBBS,.MS(Ortho)','Associate Professor','sp_013'),('d_133','Prof. Dr Anwara Begum','MBBS, FCPS, MRCPsych (London)','Professor of Psychiatry and Chief Consultant,','sp_014'),('d_134','Professor Dr. M S I Mullick','MBBS, Phd, FCPS, MRC Psyc ( London ) , DCAP','Professor & Chairman, Department of Pshychiatric','sp_014'),('d_135','Professor Dr. Md. Enayet Karim','MBBS, FCPS (Psychiatry)',NULL,'sp_014'),('d_136','Professor Dr. Dewan Abdur Rahim','PhD, DPM, MCPS (Psych), MBBS Fellow WHO (India), Fellow JICA (Japan)','Ex. Head of Dept. Psychiatry','sp_014'),('d_137','Professor Dr. Md. Ahsanul Habib','MBBS, FCPS ( Psyhch )','Professor, Ex - Director, Mental Hospital, Pabna','sp_014'),('d_138','Prof. Brig. Gen. Dr. Md. Sajjadur Rahman','MBBS, FCPS ( Psychiatry )','Professor & Head, Department of Psychiatry','sp_014'),('d_139','Prof. Brig. Gen. Dr. Md. Sajjadur Rahman','MBBS, FCPS ( Psychiatry )','Professor & Head, Department of Psychiatry','sp_014'),('d_140','Professor Dr. Md. Golam Rabbani','MBBS, FCPS','Professor','sp_014'),('d_141','Dr. Md. Al - Amin Mridha','MBBS, MCPS, FCPS, MD(Child)','Consultant','sp_016'),('d_142','Dr. Md. Aminul Ehsan','MBBS, DCH','Consultant','sp_016'),('d_143','Professor Dr. Afiqul Islam','MBBS, FCPS, MD','Professor','sp_016'),('d_144','Professor Dr. Selim Shakur','MBBS, FRCPCH ( UK ) , FRCP ( London ) , FRCP ( Edin ) ,','Consultant & Head of Department of Pediatrics','sp_016'),('d_145','Professor Golam Maeen Uddin','MBBS, FCPS (Child Disease), FRCP (Edin) Fellow - Child Kidney Disease, Australia','Professor, Department of Child Health,','sp_016'),('d_146','Professor Dr. Karim Khan','MBBS, S.Paed ( Vienna), MCPS ( Child ),DCH ( Glasgow), DTM & H ( London ), MPH ( DU )','Professor of Paediatrics, Child Health','sp_016'),('d_147','Professor Dr. Golam Mainuddin','MBBS, FCPS (Child), FRCP (Edin)','Professor, Department of Pediatric','sp_016'),('d_148','Professor Dr. M. A. Jaigirdar','MBBS, DCH, MRCP (UK)','Professor','sp_016'),('d_149','Professor Dr. M.A. Kashem Sarkar','MBBS, DCH, MRCP, FRCP','Professor','sp_016'),('d_150','Professor Dr. Sarwar Ferdous','MBBS, MRCP, MRCP, DCH','Professor & Head, Department of Pediatric','sp_016'),('d_151','Dr. Md. Shafiqul Alam Chowdhury','MBBS, MS (Urology)','Assistant Professor','sp_017'),('d_152','Professor Dr. M.A. Salam','MBBS, FCPS, FICS','Professor & Chairman, Departmnet of Urology','sp_017'),('d_153','Dr. ATM Samdani','MBBS, MD ( Radiology and Imaging from BIRDEM )','Associate Consultant','sp_017'),('d_154','Professor Dr. AKM Anwarul Islam','MBBS, FCPS, FRCS, FICS Clinical Fellow in Urology (WHO)','Professor, Department of Urology','sp_017'),('d_155','Professor Dr. Mirza M H Faisal','MBBS, FCPS, FRCS (Ed), FICS','Senior Consultant & Head, Department of Urology','sp_017'),('d_156','Professor Dr. Ko Ninan Chac','MBBS, MS, MCh(Urology), FRCS (Urology)','Consultant','sp_017'),('d_157','Professor Dr. S M Mahbub Alam','MBBS, FCPS ( Surgery ), MS ( Urology )','Professor & Head, Department of Urology','sp_017'),('d_158','Professor Dr. Zamanul Islam Bhuiyan','FCPS, FICS, MS','Professor & Head of the department','sp_017'),('d_159','Dr. A.T.M. Aman Ullah','MBBS, MS ( Urology )','Associate Professor','sp_017');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_on_doctors` AFTER INSERT ON `doctors` FOR EACH ROW begin
	call fyd_audit_table('doctors',new.d_id,new.doctor_name,'Insert',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_on_doctors` AFTER UPDATE ON `doctors` FOR EACH ROW begin
	call fyd_audit_table('doctors',new.d_id,new.doctor_name,'Update',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_on_doctors` AFTER DELETE ON `doctors` FOR EACH ROW begin
	call fyd_audit_table('doctors',old.d_id,old.doctor_name,'Delete',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `doctors_full_information`
--

DROP TABLE IF EXISTS `doctors_full_information`;
/*!50001 DROP VIEW IF EXISTS `doctors_full_information`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `doctors_full_information` AS SELECT 
 1 AS `d_id`,
 1 AS `doctor_name`,
 1 AS `qualification`,
 1 AS `designation`,
 1 AS `specialist_name`,
 1 AS `hospital_name`,
 1 AS `address`,
 1 AS `contact`,
 1 AS `Consulting_hour_start`,
 1 AS `Consulting_hour_end`,
 1 AS `Consulting_fees`,
 1 AS `Consulting_days`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fyd_audit`
--

DROP TABLE IF EXISTS `fyd_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fyd_audit` (
  `audit_id` int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(45) NOT NULL,
  `id` char(6) NOT NULL,
  `name` varchar(125) NOT NULL,
  `action_on` varchar(45) NOT NULL,
  `change_date` datetime NOT NULL,
  `user` varchar(45) NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fyd_audit`
--

LOCK TABLES `fyd_audit` WRITE;
/*!40000 ALTER TABLE `fyd_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fyd_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `h_id` char(6) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `address` varchar(355) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES ('h_0001','Advanced Eye Center','House # (22/7) 29, Bir Uttam A.N.M Nuruzzaman Sorak, (Babor Road)','8802 9111911'),('h_0002','AFMC - Armed Forces Medical College','Plot # 81, Block # E, Basudhara R/A, Dhaka - 1229','10678'),('h_0003','Ahmed Medical Center ( Deen Eye Care & Research Institue )','House # 71, Road # 15/A, Sankar Bustand, Dhanmondi, R/A, Dhaka - 1209, Bangladesh','88029119738'),('h_0004','Al-Rajhi Hospital','House # 48, Road # 9/A, Satmasjid Road, Dhaka - 1209',NULL),('h_0005','Anwer Khan Modern Hospital Ltd.','House # 17, Road # 8, Dhaka - 1205','880 2 9670295'),('h_0006','Apollo Hospitals Dhaka','Plot # 81, Block # E, Basudhara R/A, Dhaka - 1229','10678'),('h_0007','Aysha Memorial Specialised Hospital','House # 13/A, Road # 35, Gulshan # 2, Dhaka-1212',NULL),('h_0008','Bangabandhu Sheikh Mujib Medical University (BSMMU) (PG Hospital)','Shahbag, Dhaka, Bangladesh','880 1711958143'),('h_0009','Bangladesh Medical College & hospital','House # 71/A, Road # 5/A, Dhanmondi R/A, Dhaka.','880 2 86203536'),('h_0010','Bangladesh Specialized Hospital','21 Shyamoli, Mirpur Road, Dhaka-1207, Bangladesh','8809666700100'),('h_0011','BIRDEM General Hospital','Specialist Chamber Complex (1st Floor),122, Kazi Nazrul Islam Avenue, Dhaka 1000, Bangladesh.','88029667339'),('h_0012','BSM Medical University(Old IPGMR)','BSM Medical University(Old IPGMR)','8802961234554'),('h_0013','Central Hospital Limited','House # 2, Road # 5, Green Road Dhanmondi, Dhaka, Bangladesh.','88029660015'),('h_0014','Central Physiotherapy Centre','18/F Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath, Dhaka - 1205, Bangladesh.',NULL),('h_0015','City Hospital Ltd.','1/8, Block-E, Lalmatia, Satmosjid Road, Mohammadpur, Dhaka - 1207,','88028143312'),('h_0016','Combined Military Hospital (CMH), Dhaka Cantonment','LabAid Ltd, (Diagnostic), Pallabi, Dhaka','12345'),('h_0017','Comfort Diagnostic Centre & Comfort Nursing Home','Comfort Tower, 167/B, Green Road, Dhanmondi, Dhaka - 1205, Bangladesh','88028124990'),('h_0018','Community Based Medical College','House # 60/A, Road # 4/A, Dhanmondi, Dhaka - 1205, Bangladesh','88028626899'),('h_0019','Delta Medical College & Hospital','26/2, Principal Abul Kashem Road, Mirpur-1, Dhaka- 1212, Bangladesh','8802801715152'),('h_0020','Delta Medical College & Hospital Dental Unit','Delta Medical College & Hospital Dental Unit','1778883265'),('h_0021','Dhaka Central Hospital','113/A, Monipuripara, Gate No. 1 Farmgate, Tejgaon, Dhaka-1215, Bangladesh.',NULL),('h_0022','Dhaka Medical College & Hospital, Dhaka','55, Satmasjid Road ( Zigatola Bus Stand ), Dhaka - 1209, Bangladesh','88029672277'),('h_0023','Dry Eye Lab & Research','P-27 (between Dutch-Bangla Bank booth and Studio Mayuree), Noorjahan Road,','8801913 925566'),('h_0024','Farida Clinic','Farida Clinic, 165/A, Shantinagar, Dhaka, Bangladesh','88028321960'),('h_0025','Fashion Eye Hospital Ltd.','98/6-A, Bara Moghbazar, Dhaka - 1217, Bangladesh','88029338986'),('h_0026','Green Life Hospital Ltd. Dhaka, Bangladesh','32, Green Road, Room No - 310, Dhanmondi, Dhaka - 1205, Bangladesh',NULL),('h_0027','Green View Clinic','25/3, Green Road, Dhaka - 1205',NULL),('h_0028','Health & Hope Hospital Ltd.','152/1 - H, Green Road, Panthopath, Dhaka - 1205',NULL),('h_0029','Hi Tech Modern Psychiatric Hospital (Pvt.) Ltd.','Hous# (22/7)29, Bir Uttam A.N.M Nuruzzaman Sorak, (Babor road) Block# b, Mohammadpur, DHaka-1207, Bangladesh',NULL),('h_0030','Holy Family Red Crescent Medical College Hospital','House# 13/A, Road # 35, Gulshan # 2, Dhaka-1212','880288359814'),('h_0031','Ibn Sina Medical Imaging Center','House # 58, Road #2/A, Dhanmondi, Dhaka - 1209','88028610420'),('h_0032','Ibrahim General Hospital & DCEC - Dhanmondi','House# 42, Road#10/A , Dhanmondi, Dhaka','8802 9146357'),('h_0033','Ibrahim Memorial Medical College & Hospital','Dhanmondi, Road no # 5, Green Road, Dhaka, Bangladesh','88029660015'),('h_0034','Institute of Child and Mother Health (ICMH)','Nirupam Hospital, H-69, Rd-11/A, Dhanmondi, Dhaka, Bangladesh','12345'),('h_0035','Institute of Child and Mother Health (ICMH), Matuail, Dhaka-1362','London Market, Sanarpar, Demra, Dhaka.','1715295950'),('h_0036','Islami Bank Central Hospital','Islami Bank Central Hospital','12345'),('h_0037','Japan Bangladesh Friendship Hospital','Japan Bangladesh Friendship Hospital','12345'),('h_0038','Kidney & Urology Hospital Pvt. Ltd. ( Khul )','70 Green Road, Fattah Plaza, Dhaka - 1205, Bangladesh',NULL),('h_0039','Kidney Foundation','Popular consultation -2, 4th Floor, Road No # 2, Dhanmondi R/A, Dhaka - 1205,','88029669480'),('h_0040','Lab Aid Diagnostic Center, Uttara','Lab Aid Diagnostic Center, Uttara','1766662606'),('h_0041','Lab Aid Specialized Hospital','1/8, Block-E, Lalmatia, Satmosjid Road, Mohammadpur, Dhaka - 1207, Bangladesh',NULL),('h_0042','Labaid Cardiac Hospital','House # 13/A, Road # 35, Gulshan-2, Dhaka-1212.','12345'),('h_0043','Labaid Hospital, Gulshan','House # 13/A, Road # 35, Gulshan-2, Dhaka-1212.','880288359814'),('h_0044','LabAid Ltd (Diagnostic), Mirpur','LabAid Ltd (Diagnostic), Mirpur','12345'),('h_0045','LabAid Ltd, (Diagnostic), Pallabi, Dhaka','LabAid Ltd, (Diagnostic), Pallabi, Dhaka','12345'),('h_0046','Labaid Specialized Hospital','House # 6, Road # 4, Dhanmondi, Dhaka-1205, Bangladesh.','9676356'),('h_0047','Labaid Specialized Hospital ? Gulshan Branch','House # 13/A, Road # 35, Gulshan-2, Dhaka-1212.','88028835981-4'),('h_0048','Liver & Gastroenterology','House # 16, Road # 2, Dhanmondi R/A, Dhaka -1205','88029669480'),('h_0049','Liver Foundation of Bangladesh','150, Green Road, Panthapath ( 3rd floor ), Dhak a- 1215, Bangladesh','88029146537'),('h_0050','Medical College and Hospital, Dhaka.','Uttara Crescent Diagnostic & Consultation Centre','1789622610'),('h_0051','Medinova Consultation Center-2,','Medinova Consultation Center-2,','12345'),('h_0052','Medinova Medical Services Ltd.','House # 16, Road # 2, Dhanmondi R/A, Dhaka - 1205',NULL),('h_0053','Metropolitan Dental','Metropolitan Dental','88028625317'),('h_0054','Modern Diagnostic Center Ltd','House 17, Road 8, Dhanmondi','88029670295'),('h_0055','Mojibunnessa Eye Hospital Ltd','House # 18, Road # 6, Dhanmondi R/A, Dhaka -1205, Bangladesh','88029119738'),('h_0056','Monowara Hospital (pvt) Ltd','54, Siddeshwari Road , Dhaka - 1217','880 8318135'),('h_0057','MUKTI','House #2, Road #49, Gulshan-2, Dhaka-1212','88029896165'),('h_0058','National Eye Science Institute & Hospital, Dhaka','House # 6, Road # 4, Dhanmondi, Dhaka - 1205','88029676356'),('h_0059','National Institute of ENT, Tejgaon Dhaka','New Airport Road, Mohakhali, Dhaka','09606 111 222'),('h_0060','National Institute of Kidney Diseases & Urology','32, Green Road, Room No - 310, Dhanmondi, Dhaka - 1205, Bangladesh','8802862882021,'),('h_0061','National Institute of Mental Health','House # 71/A, road # 5/A, Dhanmondi R/A, Dhaka.','880286203536'),('h_0062','National Institute of Ophthalmology & Hospital','House # 16, Raod # 2, Dhanmondi R/A, Dhaka - 1205','88029669480'),('h_0063','National Institute of Traumatology & Orthopaedic Rehabilitation(NITOR) Dhaka','25 A, Green Road, Dhanmondi Dhaka-1205','88028611213'),('h_0064','National Institute of Traumatology and Orthopedic Rehabilitation (NITOR)','7, K.M.Das Lane, Tikatuli, Dhaka-1203','247114367'),('h_0065','National Orthopedic Hospital & Rehabilitation Institution','Comfort Tower, 167/B, Green Road, Dhanmondi, Dhaka, Bangladesh','88028124990'),('h_0066','Neurology Foundation Hospital','3/1 Lake Circus, Kalabagan, Dhaka-1205','88028114846'),('h_0067','Northern International Medical College & Hospital','House # 84, Road # 8/A ( New ), Dhanmondi, Dhaka - 1209','88028156914'),('h_0068','Padma Diagnostic Center Ltd','House # 16, Road # 2, Dhanmondi R/A, Dhak a- 1205',NULL),('h_0069','Popular Diagnostic Centre Ltd ? Dhanmondi Branch','House # 16, Road # 2, Dhanmondi R/A, Dhaka ? 1205','88029669480'),('h_0070','Popular Diagnostic Centre Ltd. - Shyamoli Branch','Hous# (22/7)29, Bir Uttam A.N.M Nuruzzaman Sorak, (Babor road) Block# b,','8802 9111911'),('h_0071','Renaissance Hospital & Research Institute Ltd.','Hous# (22/7)29, Bir Uttam A.N.M Nuruzzaman Sorak, (Babor road) Block# b, Mohammadpur, DHaka-1207, Bangladesh',NULL),('h_0072','S. Rahman Hospital Ltd',NULL,'12345'),('h_0073','Saleha Diagnostic Centre','London Market, Sanarpar, Demra, Dhaka.','1715295950'),('h_0074','Samorita Hospital Ltd.','44/16, Panthapath, Dhaka - 1215, Bangladesh','88029131901'),('h_0075','Sandhani Diagnostic Complex','Block - B, 22/12 Khilji Road, Mohammadpur, Dhaka - 1207, Bangladesh',NULL),('h_0076','Sapora Dental College & Hospital , Uttara','Sapora Dental College & Hospital , Uttara','880293558012'),('h_0077','Shaheed Suhrawardy Medical College & Hospital','Sher-E-Bangla Nagor, Dhaka','1766662606'),('h_0078','Shahid Suhrawardi Hospital, Dhaka','Medinova Consultation Center-2,',NULL),('h_0079','Sigma Medical Services','12, Farmgate, Dhaka-1205, Bangladesh.',NULL),('h_0080','Sir Salimullah Medical College & Mitford Hospital','House # 48, Road # 9/A, Dhanmondi, Satmasjid Road, Dhaka - 1209, Bangladesh','880291288357'),('h_0081','SQUARE Hospital Ltd.','18/F Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath, Dhaka - 1205, Bangladesh.','88028159457'),('h_0082','Suhrawardy Medical College & Hospital, Dhaka','House-11/A, Road-2, Dhanmondi R/A, Dhaka-1205, Bangladesh','88029669480'),('h_0083','The Medical Centre','House# 84, Road# 7/A, Shat Masjid Road, Dhanmondi, Dhaka','88029118219'),('h_0084','United Hospital Limited','Plot # 15, Road # 71, Gulshan, Dhaka-1212, Bangladesh','880 2 8836000'),('h_0085','Universal Medical Collage Hospital','New Airport Road, Mohakhali, Dhaka','09606 111 222'),('h_0086','Women & Children Hospital','Plot # 15, Road # 71, Gulshan, Dhaka-1212, Bangladesh','8809666700100');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_on_hospitals` AFTER INSERT ON `hospitals` FOR EACH ROW begin
	call fyd_audit_table('hospitals',new.h_id,new.hospital_name,'Insert',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_on_hospitals` AFTER UPDATE ON `hospitals` FOR EACH ROW begin
	call fyd_audit_table('hospitals',new.h_id,new.hospital_name,'Update',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_on_hospitals` AFTER DELETE ON `hospitals` FOR EACH ROW begin
	call fyd_audit_table('hospitals',old.h_id,old.hospital_name,'Delete',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `specialists`
--

DROP TABLE IF EXISTS `specialists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialists` (
  `sp_id` char(6) NOT NULL,
  `specialist_name` varchar(75) NOT NULL,
  PRIMARY KEY (`sp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialists`
--

LOCK TABLES `specialists` WRITE;
/*!40000 ALTER TABLE `specialists` DISABLE KEYS */;
INSERT INTO `specialists` VALUES ('sp_001','Cardiology'),('sp_002','Dental'),('sp_003','Dermatology'),('sp_004','Eye'),('sp_005','ENT'),('sp_006','Gynaecology and Obstetrics'),('sp_007','Gastroenterology'),('sp_008','Hepatologists'),('sp_009','Haematology'),('sp_010','Medicine'),('sp_011','Nephrologists'),('sp_012','Neuromedicine'),('sp_013','Orthopaedics'),('sp_014','Psychologist'),('sp_015','Endocrinologists'),('sp_016','Pediatric'),('sp_017','Urology');
/*!40000 ALTER TABLE `specialists` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_on_specialists` AFTER INSERT ON `specialists` FOR EACH ROW begin
	call fyd_audit_table('specialists',new.sp_id,new.specialist_name,'Insert',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_on_specialists` AFTER UPDATE ON `specialists` FOR EACH ROW begin
	call fyd_audit_table('specialists',new.sp_id,new.specialist_name,'Update',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_on_specialists` AFTER DELETE ON `specialists` FOR EACH ROW begin
	call fyd_audit_table('specialists',old.sp_id,old.specialist_name,'Delete',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `symptoms`
--

DROP TABLE IF EXISTS `symptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symptoms` (
  `sm_id` char(6) NOT NULL,
  `symptom` varchar(45) NOT NULL,
  `sp_id` char(6) NOT NULL,
  PRIMARY KEY (`sm_id`),
  KEY `fk_symptoms_Specialists1_idx` (`sp_id`),
  CONSTRAINT `fk_symptoms_Specialists1` FOREIGN KEY (`sp_id`) REFERENCES `specialists` (`sp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptoms`
--

LOCK TABLES `symptoms` WRITE;
/*!40000 ALTER TABLE `symptoms` DISABLE KEYS */;
INSERT INTO `symptoms` VALUES ('sm_001','Chest pain','sp_001'),('sm_002','Presocere','sp_001'),('sm_003','Fullness or discomfort(Angina)','sp_001'),('sm_004','Nausea and cold sweats','sp_001'),('sm_005','Difficulty breathing and dizziness','sp_001'),('sm_006','Discomfort in other areas of body:','sp_001'),('sm_007','Pain the arms,neck,jaw,upper abdomen or back','sp_001'),('sm_010','Chronic bad breath','sp_002'),('sm_011','Sudden sensitivity to hot or cold temperature','sp_002'),('sm_012','Pain on toothache','sp_002'),('sm_013','Loose teeth','sp_002'),('sm_014','Receding gums','sp_002'),('sm_015','Pain with chewing and biting','sp_002'),('sm_016','Swelling of face and cheek','sp_002'),('sm_017','Clicking of jaw','sp_002'),('sm_018','Broken teeth','sp_002'),('sm_019','Frequent dry mouth','sp_002'),('sm_020','Raised bumps that are red or white','sp_003'),('sm_021','Rash','sp_003'),('sm_022','Itching','sp_003'),('sm_023','Scaly or rough skin','sp_003'),('sm_024','Peeling skin','sp_003'),('sm_025','Hair loss','sp_003'),('sm_026','Burning of eye disease','sp_004'),('sm_028','Eye redness','sp_004'),('sm_029','Sensitivity to light','sp_004'),('sm_030','Mucous production in our around the eyes','sp_004'),('sm_031','Blurred vision','sp_004'),('sm_032','Eye Fatigue','sp_004'),('sm_033','The issue in wearing contact lenses','sp_004'),('sm_034','Lump in the neck','sp_005'),('sm_035','Bose bleed','sp_005'),('sm_036','Sculling on ulcer in the mouth','sp_005'),('sm_037','Hoarse voice','sp_005'),('sm_038','Difficulty in Swallowing','sp_005'),('sm_039','Pain the ear','sp_005'),('sm_040','Sore throat','sp_005'),('sm_041','Coughing','sp_005'),('sm_042','Headaches','sp_005'),('sm_043','Nausea','sp_005'),('sm_044','Nasal obstruction','sp_005'),('sm_045','Bleeding between periods','sp_006'),('sm_046','Burning Sensation during Urination','sp_006'),('sm_047','Abnormal vaginal bleeding','sp_006'),('sm_048','Bleeding after menopause','sp_006'),('sm_051','Vaginal discharge','sp_006'),('sm_052','Irregular periods','sp_006'),('sm_053','Palpitations','sp_006'),('sm_054','Dyspnoea','sp_006'),('sm_055','Peripheral oedema','sp_006'),('sm_056','Nausea','sp_006'),('sm_057','Vomiting','sp_006'),('sm_058','Pritis','sp_006'),('sm_059','Bloating and excess (****)','sp_007'),('sm_060','Constipation','sp_007'),('sm_061','Diarrhea','sp_007'),('sm_062','Heartburn','sp_007'),('sm_063','Nausea and vomiting','sp_007'),('sm_064','Pain the belly','sp_007'),('sm_065','Swallowing Problems','sp_007'),('sm_066','Weight gain or loss','sp_007'),('sm_067','Skin and eyes that appear Yellowish(Jaundice)','sp_008'),('sm_068','Abdominal pain and swelling','sp_008'),('sm_069','Swelling in the legs and ankles','sp_008'),('sm_070','Itchy skin','sp_008'),('sm_071','Dark urine color','sp_008'),('sm_072','Pole stool color','sp_008'),('sm_073','Chronic Fatigue','sp_008'),('sm_074','Loss of Appetite','sp_008'),('sm_075','Tendency to Bruise','sp_008'),('sm_076','Fatigue','sp_009'),('sm_077','Shortness of breath','sp_009'),('sm_079','Muscle weakness','sp_009'),('sm_080','A fast heart beat','sp_009'),('sm_081','Dmoric injection','sp_009'),('sm_082','Unexplained weight loss','sp_009'),('sm_083','Malaise','sp_009'),('sm_086','Skin that bruises','sp_009'),('sm_088','Weight loss and poor appetite','sp_011'),('sm_091','Tiredness','sp_011'),('sm_092','Blood in urine','sp_011'),('sm_093','Difficulty sleeping(insomnia)','sp_011'),('sm_094','Itchy sick','sp_011'),('sm_095','Headache','sp_011'),('sm_096','Foamy urine','sp_011'),('sm_098','Partial or complete paralysis','sp_012'),('sm_099','Muscle weakness','sp_012'),('sm_100','Partial or complete loss of sensation','sp_012'),('sm_101','Seizures','sp_012'),('sm_102','Difficulty reading writing','sp_012'),('sm_103','Poor cognitive abilities','sp_012'),('sm_104','Unexplained pain','sp_012'),('sm_105','Decreased alertness','sp_012'),('sm_106','Headaches','sp_012'),('sm_107','Blurry vision','sp_012'),('sm_108','Fatigue','sp_012'),('sm_109','Change in behavior','sp_012'),('sm_110','Numbness in the legs or arms','sp_012'),('sm_111','Slurred speech','sp_012'),('sm_112','Memory loss','sp_012'),('sm_113','Apathy','sp_012'),('sm_114','Anxiety','sp_012'),('sm_115','Agitation','sp_012'),('sm_116','Vomition','sp_012'),('sm_117','Nausea','sp_012'),('sm_119','Fatigue combined with joint pain or swelling','sp_013'),('sm_120','Joint stiffness & limited range of motion','sp_013'),('sm_121','Muscle spasms','sp_013'),('sm_122','Numbness tingling or weakness','sp_013'),('sm_124','Swelling of injured or disease area','sp_013'),('sm_126','Feeling sad or down','sp_014'),('sm_128','Excessive mood change of highs & lows','sp_014'),('sm_131','Stress','sp_014'),('sm_132','Problems with alcohol or drug use','sp_014'),('sm_133','Major changes in eating habits','sp_014'),('sm_134','Excessive anger,hostility or violence','sp_014'),('sm_135','suicidal thinking','sp_014'),('sm_136','Anxiety','sp_014'),('sm_137','Excessive thirst or hunger','sp_015'),('sm_138','Fatigue','sp_015'),('sm_139','Frequent coronation','sp_015'),('sm_140','Unexplained weight loss or gain','sp_015'),('sm_141','Fever','sp_016'),('sm_142','Runny or stuffy nose','sp_016'),('sm_143','Coughing','sp_016'),('sm_144','Diaper nose','sp_016'),('sm_145','Dicalue','sp_016'),('sm_146','Difficult or noisy breathing','sp_016'),('sm_147','Ege irritation','sp_016'),('sm_148','Headache','sp_016'),('sm_149','Vornity','sp_016'),('sm_151','Mouth erres','sp_016'),('sm_152','Stomachache','sp_016'),('sm_153','Swollenen glands','sp_016'),('sm_154','Blood in your urine','sp_017'),('sm_155','poor bladder control','sp_017'),('sm_157','Fallen bladder protausion','sp_017'),('sm_158','Hernia','sp_017'),('sm_159','Male sexual promlem','sp_017'),('sm_160','Overactive bladder','sp_017'),('sm_161','Enlarged prostate','sp_017');
/*!40000 ALTER TABLE `symptoms` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_on_symptoms` AFTER INSERT ON `symptoms` FOR EACH ROW begin
	call fyd_audit_table('symptoms',new.sm_id,new.symptom,'Insert',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_on_symptoms` AFTER UPDATE ON `symptoms` FOR EACH ROW begin
	call fyd_audit_table('symptoms',new.sm_id,new.symptom,'Update',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_on_symptoms` AFTER DELETE ON `symptoms` FOR EACH ROW begin
	call fyd_audit_table('symptoms',old.sm_id,old.symptom,'Delete',now(),current_user());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works` (
  `d_id` char(6) NOT NULL,
  `h_id` char(6) NOT NULL,
  `Consulting_hour_start` varchar(10) DEFAULT NULL,
  `Consulting_hour_end` varchar(10) DEFAULT NULL,
  `Consulting_fees` int DEFAULT NULL,
  `Consulting_days` varchar(125) DEFAULT NULL,
  KEY `fk_works_doctors1_idx` (`d_id`),
  KEY `fk_works_hospitals1_idx` (`h_id`),
  CONSTRAINT `fk_works_doctors1` FOREIGN KEY (`d_id`) REFERENCES `doctors` (`d_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_works_hospitals1` FOREIGN KEY (`h_id`) REFERENCES `hospitals` (`h_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES ('d_035','h_0001','6:00 PM','10:00 PM',500,'Friday'),('d_061','h_0002','12:00 PM','4:00 PM',700,'Tuesday'),('d_074','h_0002','10:00 AM','2:00 PM',900,'Wednesday'),('d_130','h_0002','8:00 PM','12:00 AM',1200,'Tuesday'),('d_138','h_0002','2:00 PM','6:00 PM',700,'Sunday, Monday, Tuesday'),('d_139','h_0002','10:00 AM','2:00 PM',1300,'Tuesday'),('d_043','h_0003','8:00 AM','12:00 PM',600,'Tuesday'),('d_048','h_0003','8:00 AM','12:00 PM',1400,'Saturday'),('d_097','h_0004','4:00 PM','8:00 PM',800,'Friday'),('d_145','h_0004','8:00 PM','12:00 AM',1100,'Thursday,Sunday'),('d_147','h_0004','4:00 PM','8:00 PM',400,'Wednesday'),('d_055','h_0005','8:00 AM','12:00 PM',1200,'Tuesday'),('d_129','h_0005','4:00 PM','8:00 PM',1200,'Sunday, Monday, Tuesday'),('d_130','h_0005','6:00 PM','10:00 PM',1000,'Thursday,Sunday'),('d_157','h_0005','10:00 AM','2:00 PM',1000,'Tuesday'),('d_037','h_0006','8:00 PM','12:00 AM',1100,'Friday'),('d_052','h_0006','12:00 PM','4:00 PM',800,'Thursday,Sunday'),('d_061','h_0006','8:00 AM','12:00 PM',600,'Wednesday'),('d_073','h_0006','8:00 PM','12:00 AM',500,'Sunday, Monday, Tuesday'),('d_084','h_0006','6:00 PM','10:00 PM',400,'Sunday, Monday, Tuesday'),('d_099','h_0006','8:00 AM','12:00 PM',300,'Thursday,Sunday'),('d_102','h_0006','8:00 PM','12:00 AM',800,'Friday'),('d_103','h_0006','4:00 PM','8:00 PM',1000,'Sunday, Monday, Tuesday'),('d_108','h_0006','10:00 AM','2:00 PM',1200,'Friday'),('d_123','h_0006','4:00 PM','8:00 PM',1000,'Wednesday'),('d_138','h_0007','2:00 PM','6:00 PM',700,'Sunday, Monday, Tuesday'),('d_139','h_0007','4:00 PM','8:00 PM',900,'Sunday, Monday, Tuesday'),('d_060','h_0008','2:00 PM','6:00 PM',1400,'Wednesday'),('d_147','h_0008','8:00 PM','12:00 AM',1100,'Friday, Thursday'),('d_002','h_0008','8:00 PM','12:00 AM',1000,'Thursday,Sunday'),('d_026','h_0008','8:00 PM','12:00 AM',900,'Wednesday'),('d_027','h_0008','2:00 PM','6:00 PM',500,'Friday'),('d_029','h_0008','6:00 PM','10:00 PM',1100,'Saturday'),('d_079','h_0008','2:00 PM','6:00 PM',1200,'Wednesday'),('d_083','h_0008','6:00 PM','10:00 PM',1000,'Thursday,Sunday'),('d_087','h_0008','6:00 PM','10:00 PM',1000,'Thursday,Sunday'),('d_097','h_0008','10:00 AM','2:00 PM',1300,'Tuesday'),('d_109','h_0008','12:00 PM','4:00 PM',600,'consulting day'),('d_110','h_0008','8:00 AM','12:00 PM',400,'Friday'),('d_121','h_0008','12:00 PM','4:00 PM',600,'Friday, Thursday'),('d_021','h_0008','2:00 PM','6:00 PM',900,'Sunday, Monday, Tuesday'),('d_074','h_0008','12:00 PM','4:00 PM',500,'Friday'),('d_086','h_0008','2:00 PM','6:00 PM',900,'Thursday,Sunday'),('d_100','h_0008','8:00 AM','12:00 PM',800,'Sunday, Monday, Tuesday'),('d_143','h_0008','6:00 PM','10:00 PM',1000,'Thursday,Sunday'),('d_154','h_0008','6:00 PM','10:00 PM',1300,'Saturday'),('d_124','h_0008','4:00 PM','8:00 PM',400,'Wednesday'),('d_081','h_0008','6:00 PM','10:00 PM',300,'Thursday,Sunday'),('d_159','h_0008','4:00 PM','8:00 PM',1100,'Friday'),('d_145','h_0008','8:00 AM','12:00 PM',400,'Wednesday'),('d_023','h_0008','12:00 PM','4:00 PM',600,'Wednesday'),('d_120','h_0008','8:00 AM','12:00 PM',1200,'Friday'),('d_134','h_0008','2:00 PM','6:00 PM',1100,'Thursday,Sunday'),('d_068','h_0008','8:00 PM','12:00 AM',1400,'Saturday'),('d_072','h_0008','12:00 PM','4:00 PM',1300,'Sunday, Monday, Tuesday'),('d_152','h_0008','12:00 PM','4:00 PM',1000,'Thursday,Sunday'),('d_035','h_0009','2:00 PM','6:00 PM',1200,'Friday'),('d_057','h_0009','2:00 PM','6:00 PM',1300,'Saturday'),('d_131','h_0009','10:00 AM','2:00 PM',1400,'Saturday'),('d_150','h_0009','6:00 PM','10:00 PM',900,'Saturday'),('d_148','h_0009','8:00 AM','12:00 PM',500,'Friday'),('d_077','h_0010','6:00 PM','10:00 PM',500,'Thursday,Sunday'),('d_039','h_0011','8:00 PM','12:00 AM',800,'Thursday,Sunday'),('d_065','h_0011','6:00 PM','10:00 PM',1200,'Friday'),('d_091','h_0011','2:00 PM','6:00 PM',900,'Tuesday'),('d_115','h_0011','2:00 PM','6:00 PM',500,'Wednesday'),('d_038','h_0011','12:00 PM','4:00 PM',700,'Sunday, Monday, Tuesday'),('d_133','h_0011','8:00 PM','12:00 AM',500,'Friday'),('d_024','h_0011','10:00 AM','2:00 PM',1100,'Wednesday'),('d_133','h_0011','8:00 AM','12:00 PM',1100,'Wednesday'),('d_033','h_0011','8:00 PM','12:00 AM',1000,'Friday, Thursday'),('d_036','h_0011','8:00 AM','12:00 PM',700,'Friday'),('d_155','h_0011','8:00 PM','12:00 AM',700,'Friday, Thursday'),('d_080','h_0011','2:00 PM','6:00 PM',900,'Sunday, Monday, Tuesday'),('d_017','h_0012','8:00 AM','12:00 PM',1000,'Sunday, Monday, Tuesday'),('d_055','h_0008','10:00 AM','2:00 PM',700,'Wednesday'),('d_079','h_0013','12:00 PM','4:00 PM',900,'Sunday, Monday, Tuesday'),('d_026','h_0013','12:00 PM','4:00 PM',800,'Thursday,Sunday'),('d_110','h_0014','6:00 PM','10:00 PM',800,'Tuesday'),('d_058','h_0015','4:00 PM','8:00 PM',800,'Friday'),('d_092','h_0015','4:00 PM','8:00 PM',700,'Thursday,Sunday'),('d_151','h_0015','2:00 PM','6:00 PM',1000,'Friday'),('d_022','h_0016','12:00 PM','4:00 PM',1400,'Sunday, Monday, Tuesday'),('d_036','h_0017','10:00 AM','2:00 PM',400,'Friday'),('d_128','h_0017','12:00 PM','4:00 PM',1200,'Wednesday'),('d_152','h_0017','4:00 PM','8:00 PM',1100,'Saturday'),('d_146','h_0018','8:00 PM','12:00 AM',1100,'Tuesday'),('d_126','h_0019','10:00 AM','2:00 PM',1300,'Thursday,Sunday'),('d_012','h_0020','8:00 AM','12:00 PM',300,'Sunday, Monday, Tuesday'),('d_127','h_0021','12:00 PM','4:00 PM',500,'Friday, Thursday'),('d_004','h_0022','6:00 PM','10:00 PM',1100,'Wednesday'),('d_058','h_0022','2:00 PM','6:00 PM',700,'Thursday,Sunday'),('d_067','h_0022','12:00 PM','4:00 PM',1200,'Friday'),('d_069','h_0022','8:00 AM','12:00 PM',400,'Thursday,Sunday'),('d_075','h_0022','12:00 PM','4:00 PM',700,'Tuesday'),('d_076','h_0022','8:00 PM','12:00 AM',1000,'Friday, Thursday'),('d_085','h_0022','6:00 PM','10:00 PM',1200,'Friday'),('d_093','h_0022','6:00 PM','10:00 PM',1100,'Tuesday'),('d_111','h_0022','12:00 PM','4:00 PM',400,'Sunday, Monday, Tuesday'),('d_112','h_0022','6:00 PM','10:00 PM',900,'Friday'),('d_151','h_0022','6:00 PM','10:00 PM',500,'Saturday'),('d_157','h_0022','8:00 AM','12:00 PM',800,'Sunday, Monday, Tuesday'),('d_053','h_0022','8:00 PM','12:00 AM',1000,'Thursday,Sunday'),('d_059','h_0022','4:00 PM','8:00 PM',1000,'Sunday, Monday, Tuesday'),('d_042','h_0023','6:00 PM','10:00 PM',500,'Saturday'),('d_065','h_0024','4:00 PM','8:00 PM',900,'Thursday,Sunday'),('d_051','h_0025','6:00 PM','10:00 PM',1200,'Sunday, Monday, Tuesday'),('d_132','h_0026','4:00 PM','8:00 PM',300,'Saturday'),('d_158','h_0026','2:00 PM','6:00 PM',1100,'Friday'),('d_125','h_0026','8:00 PM','12:00 AM',900,'Saturday'),('d_083','h_0027','6:00 PM','10:00 PM',1000,'Tuesday'),('d_081','h_0028','8:00 PM','12:00 AM',1100,'Friday'),('d_107','h_0028','2:00 PM','6:00 PM',600,'Thursday,Sunday'),('d_135','h_0029','12:00 PM','4:00 PM',900,'Friday'),('d_095','h_0030','6:00 PM','10:00 PM',1100,'Sunday, Monday, Tuesday'),('d_117','h_0030','2:00 PM','6:00 PM',500,'Sunday, Monday, Tuesday'),('d_025','h_0031','12:00 PM','4:00 PM',1400,'Friday, Thursday'),('d_007','h_0031','6:00 PM','10:00 PM',900,'Saturday'),('d_082','h_0031','2:00 PM','6:00 PM',1000,'Friday'),('d_100','h_0031','8:00 AM','12:00 PM',1000,'Saturday'),('d_113','h_0031','10:00 AM','2:00 PM',600,'Sunday, Monday, Tuesday'),('d_115','h_0031','6:00 PM','10:00 PM',800,'Tuesday'),('d_117','h_0031','4:00 PM','8:00 PM',900,'Friday'),('d_150','h_0031','4:00 PM','8:00 PM',500,'Thursday,Sunday'),('d_149','h_0031','12:00 PM','4:00 PM',1100,'Sunday, Monday, Tuesday'),('d_033','h_0032','6:00 PM','10:00 PM',700,'Sunday, Monday, Tuesday'),('d_127','h_0033','6:00 PM','10:00 PM',1000,'Friday, Thursday'),('d_071','h_0034','10:00 AM','2:00 PM',900,'Friday, Thursday'),('d_062','h_0034','12:00 PM','4:00 PM',800,'Wednesday'),('d_030','h_0036','10:00 AM','2:00 PM',1100,'Friday'),('d_027','h_0037','4:00 PM','8:00 PM',600,'Friday'),('d_053','h_0037','8:00 AM','12:00 PM',1100,'Sunday, Monday, Tuesday'),('d_067','h_0037','8:00 AM','12:00 PM',1400,'Friday'),('d_072','h_0037','4:00 PM','8:00 PM',700,'Thursday,Sunday'),('d_159','h_0038','4:00 PM','8:00 PM',700,'Saturday'),('d_094','h_0039','4:00 PM','8:00 PM',800,'Friday'),('d_064','h_0040','4:00 PM','8:00 PM',1000,'Thursday,Sunday'),('d_101','h_0041','10:00 AM','2:00 PM',1300,'Friday'),('d_010','h_0042','8:00 PM','12:00 AM',800,'Wednesday'),('d_085','h_0042','2:00 PM','6:00 PM',1100,'Sunday, Monday, Tuesday'),('d_112','h_0042','10:00 AM','2:00 PM',1100,'Tuesday'),('d_006','h_0042','2:00 PM','6:00 PM',500,'Friday, Thursday'),('d_134','h_0043','10:00 AM','2:00 PM',1000,'Tuesday'),('d_008','h_0043','8:00 AM','12:00 PM',900,'Sunday, Monday, Tuesday'),('d_023','h_0044','2:00 PM','6:00 PM',1200,'Friday'),('d_022','h_0045','8:00 PM','12:00 AM',1200,'Friday'),('d_034','h_0041','8:00 AM','12:00 PM',1300,'Saturday'),('d_049','h_0041','6:00 PM','10:00 PM',1300,'Sunday, Monday, Tuesday'),('d_063','h_0041','10:00 AM','2:00 PM',900,'Saturday'),('d_066','h_0041','8:00 PM','12:00 AM',1100,'Wednesday'),('d_078','h_0041','10:00 AM','2:00 PM',1400,'Sunday, Monday, Tuesday'),('d_087','h_0041','4:00 PM','8:00 PM',700,'Saturday'),('d_088','h_0041','4:00 PM','8:00 PM',1300,'Friday'),('d_116','h_0041','12:00 PM','4:00 PM',1200,'Sunday, Monday, Tuesday'),('d_118','h_0041','8:00 AM','12:00 PM',900,'Saturday'),('d_124','h_0041','10:00 AM','2:00 PM',1200,'Saturday'),('d_039','h_0043','4:00 PM','8:00 PM',700,'Saturday'),('d_095','h_0043','12:00 PM','4:00 PM',1000,'Sunday, Monday, Tuesday'),('d_143','h_0043','8:00 PM','12:00 AM',300,'Sunday, Monday, Tuesday'),('d_090','h_0041','4:00 PM','8:00 PM',1200,'Friday'),('d_101','h_0046','8:00 PM','12:00 AM',1000,'Saturday'),('d_116','h_0046','6:00 PM','10:00 PM',500,'Friday'),('d_118','h_0046','8:00 PM','12:00 AM',1400,'Thursday,Sunday'),('d_096','h_0048','4:00 PM','8:00 PM',900,'Thursday,Sunday'),('d_076','h_0049','2:00 PM','6:00 PM',400,'Friday'),('d_080','h_0049','12:00 PM','4:00 PM',900,'Friday'),('d_063','h_0050','10:00 AM','2:00 PM',1300,'Sunday, Monday, Tuesday'),('d_131','h_0052','8:00 AM','12:00 PM',400,'Thursday,Sunday'),('d_031','h_0052','12:00 PM','4:00 PM',600,'Thursday,Sunday'),('d_121','h_0052','8:00 PM','12:00 AM',1400,'Friday'),('d_140','h_0052','8:00 PM','12:00 AM',1000,'Saturday'),('d_015','h_0053','4:00 PM','8:00 PM',900,'Thursday,Sunday'),('d_129','h_0054','2:00 PM','6:00 PM',700,'Sunday, Monday, Tuesday'),('d_044','h_0055','10:00 AM','2:00 PM',1400,'Sunday, Monday, Tuesday'),('d_059','h_0056','2:00 PM','6:00 PM',500,'Thursday,Sunday'),('d_032','h_0057','8:00 AM','12:00 PM',1100,'Thursday,Sunday'),('d_049','h_0058','6:00 PM','10:00 PM',600,'Thursday,Sunday'),('d_044','h_0062','4:00 PM','8:00 PM',900,'Thursday,Sunday'),('d_056','h_0059','8:00 AM','12:00 PM',800,'Saturday'),('d_092','h_0060','8:00 AM','12:00 PM',700,'Saturday'),('d_158','h_0061','12:00 PM','4:00 PM',1400,'Thursday,Sunday'),('d_140','h_0061','4:00 PM','8:00 PM',900,'Saturday'),('d_047','h_0062','8:00 AM','12:00 PM',1300,'Friday'),('d_132','h_0063','10:00 AM','2:00 PM',900,'Sunday, Monday, Tuesday'),('d_122','h_0064','8:00 PM','12:00 AM',900,'Friday, Thursday'),('d_128','h_0065','8:00 AM','12:00 PM',1000,'Sunday, Monday, Tuesday'),('d_114','h_0066','6:00 PM','10:00 PM',1100,'Friday, Thursday'),('d_046','h_0067','12:00 PM','4:00 PM',400,'Friday'),('d_050','h_0067','4:00 PM','8:00 PM',1100,'Thursday,Sunday'),('d_137','h_0067','6:00 PM','10:00 PM',400,'Wednesday'),('d_086','h_0068','10:00 AM','2:00 PM',600,'Sunday, Monday, Tuesday'),('d_109','h_0068','2:00 PM','6:00 PM',1200,'Saturday'),('d_028','h_0069','4:00 PM','8:00 PM',800,'Saturday'),('d_098','h_0069','2:00 PM','6:00 PM',1400,'Friday'),('d_141','h_0070','10:00 AM','2:00 PM',1100,'Sunday, Monday, Tuesday'),('d_120','h_0069','8:00 PM','12:00 AM',1000,'Thursday,Sunday'),('d_111','h_0069','8:00 AM','12:00 PM',300,'Friday'),('d_038','h_0069','2:00 PM','6:00 PM',1400,'Thursday,Sunday'),('d_041','h_0069','4:00 PM','8:00 PM',500,'Friday'),('d_047','h_0069','12:00 PM','4:00 PM',700,'Saturday'),('d_075','h_0069','6:00 PM','10:00 PM',500,'Saturday'),('d_093','h_0069','4:00 PM','8:00 PM',800,'Friday'),('d_094','h_0069','8:00 AM','12:00 PM',1400,'Sunday, Monday, Tuesday'),('d_096','h_0069','10:00 AM','2:00 PM',1300,'Friday'),('d_098','h_0069','10:00 AM','2:00 PM',500,'Tuesday'),('d_119','h_0069','6:00 PM','10:00 PM',600,'Tuesday'),('d_148','h_0069','10:00 AM','2:00 PM',700,'Tuesday'),('d_154','h_0069','2:00 PM','6:00 PM',900,'Wednesday'),('d_155','h_0069','2:00 PM','6:00 PM',1200,'Wednesday'),('d_001','h_0069','10:00 AM','2:00 PM',1200,'Sunday, Monday, Tuesday'),('d_011','h_0069','8:00 AM','12:00 PM',1200,'Friday'),('d_060','h_0070','8:00 AM','12:00 PM',1200,'Sunday, Monday, Tuesday'),('d_141','h_0070','8:00 PM','12:00 AM',1200,'Friday, Thursday'),('d_070','h_0069','6:00 PM','10:00 PM',1200,'Sunday, Monday, Tuesday'),('d_146','h_0071','4:00 PM','8:00 PM',600,'Sunday, Monday, Tuesday'),('d_046','h_0008','2:00 PM','6:00 PM',1200,'Friday'),('d_029','h_0072','8:00 AM','12:00 PM',600,'Tuesday'),('d_062','h_0073','12:00 PM','4:00 PM',1300,'Wednesday'),('d_057','h_0074','8:00 PM','12:00 AM',600,'Friday'),('d_136','h_0075','8:00 PM','12:00 AM',900,'Friday, Thursday'),('d_019','h_0076','8:00 AM','12:00 PM',700,'Friday'),('d_013','h_0076','12:00 PM','4:00 PM',700,'Sunday, Monday, Tuesday'),('d_020','h_0076','8:00 PM','12:00 AM',500,'Saturday'),('d_064','h_0077','12:00 PM','4:00 PM',800,'Friday'),('d_031','h_0077','8:00 PM','12:00 AM',600,'Thursday,Sunday'),('d_142','h_0079','10:00 AM','2:00 PM',900,'Sunday, Monday, Tuesday'),('d_003','h_0042','4:00 PM','8:00 PM',400,'Saturday'),('d_034','h_0080','2:00 PM','6:00 PM',500,'Sunday, Monday, Tuesday'),('d_088','h_0080','10:00 AM','2:00 PM',1100,'Saturday'),('d_030','h_0080','10:00 AM','2:00 PM',500,'Friday, Thursday'),('d_082','h_0080','10:00 AM','2:00 PM',700,'Thursday,Sunday'),('d_107','h_0080','10:00 AM','2:00 PM',1300,'Sunday, Monday, Tuesday'),('d_113','h_0080','12:00 PM','4:00 PM',300,'Saturday'),('d_005','h_0080','12:00 PM','4:00 PM',1100,'Sunday, Monday, Tuesday'),('d_040','h_0081','2:00 PM','6:00 PM',400,'Tuesday'),('d_153','h_0081','12:00 PM','4:00 PM',700,'Wednesday'),('d_105','h_0081','8:00 PM','12:00 AM',800,'Friday'),('d_040','h_0081','2:00 PM','6:00 PM',700,'Tuesday'),('d_045','h_0081','8:00 PM','12:00 AM',900,'Saturday'),('d_077','h_0081','8:00 AM','12:00 PM',300,'Saturday'),('d_089','h_0081','10:00 AM','2:00 PM',700,'Saturday'),('d_105','h_0081','2:00 PM','6:00 PM',400,'Friday, Thursday'),('d_153','h_0081','10:00 AM','2:00 PM',600,'Friday, Thursday'),('d_156','h_0081','12:00 PM','4:00 PM',1200,'Saturday'),('d_078','h_0080','8:00 PM','12:00 AM',800,'Friday'),('d_136','h_0080','2:00 PM','6:00 PM',400,'Friday'),('d_119','h_0077','12:00 PM','4:00 PM',1300,'Saturday'),('d_009','h_0083','6:00 PM','10:00 PM',400,'Friday'),('d_054','h_0084','10:00 AM','2:00 PM',400,'Sunday, Monday, Tuesday'),('d_106','h_0084','4:00 PM','8:00 PM',1000,'Saturday'),('d_144','h_0084','8:00 AM','12:00 PM',1300,'Sunday, Monday, Tuesday'),('d_144','h_0084','12:00 PM','4:00 PM',300,'Sunday, Monday, Tuesday'),('d_104','h_0084','6:00 PM','10:00 PM',400,'Thursday,Sunday'),('d_104','h_0084','8:00 AM','12:00 PM',1100,'Friday, Thursday'),('d_056','h_0085','10:00 AM','2:00 PM',1000,'Friday'),('d_024','h_0086','4:00 PM','8:00 PM',1000,'Tuesday');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fydv2'
--

--
-- Dumping routines for database 'fydv2'
--
/*!50003 DROP PROCEDURE IF EXISTS `fyd_audit_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fyd_audit_table`(
table_name varchar(45),
id char(6),
name varchar(125),
action_on varchar(45),
change_date date,
user varchar(45)
)
BEGIN
insert into fyd_audit
    set
		audit_id = default,
        fyd_audit.table_name = table_name,
        fyd_audit.id = id,
        fyd_audit.name = name,
        fyd_audit.action_on = action_on,
        fyd_audit.change_date = change_date,
        fyd_audit.user = user;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `doctors_full_information`
--

/*!50001 DROP VIEW IF EXISTS `doctors_full_information`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `doctors_full_information` AS select `d`.`d_id` AS `d_id`,`d`.`doctor_name` AS `doctor_name`,`d`.`qualification` AS `qualification`,`d`.`designation` AS `designation`,`s`.`specialist_name` AS `specialist_name`,`h`.`hospital_name` AS `hospital_name`,`h`.`address` AS `address`,`h`.`contact` AS `contact`,`w`.`Consulting_hour_start` AS `Consulting_hour_start`,`w`.`Consulting_hour_end` AS `Consulting_hour_end`,`w`.`Consulting_fees` AS `Consulting_fees`,`w`.`Consulting_days` AS `Consulting_days` from (((`doctors` `d` join `works` `w` on((`d`.`d_id` = `w`.`d_id`))) join `hospitals` `h` on((`w`.`h_id` = `h`.`h_id`))) join `specialists` `s` on((`d`.`sp_id` = `s`.`sp_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-12 18:13:50
