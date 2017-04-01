PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE teams (
	id INTEGER NOT NULL, 
	fname VARCHAR(128), 
	year VARCHAR(128), 
	city VARCHAR(128), 
	gender VARCHAR(1), 
	name VARCHAR(128), 
	email VARCHAR(128), 
	password VARCHAR(128), 
	website VARCHAR(128), 
	affiliation VARCHAR(128), 
	country VARCHAR(32), 
	bracket VARCHAR(32), 
	banned BOOLEAN, 
	verified BOOLEAN, 
	admin BOOLEAN, 
	mentor BOOLEAN, 
	joined DATETIME, 
	PRIMARY KEY (id), 
	UNIQUE (name), 
	UNIQUE (email), 
	CHECK (banned IN (0, 1)), 
	CHECK (verified IN (0, 1)), 
	CHECK (admin IN (0, 1)), 
	CHECK (mentor IN (0, 1))
);
INSERT INTO "teams" VALUES(1,'player1','2017','Delhi','F','player1','player1@gmail.com','$bcrypt-sha256$2b,12$hBbt56DnmEZ/e5A2ntSE4u$Z6UHqmb4EIKSQ9fehc.dXD5mYoW23Sa',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.689139');
INSERT INTO "teams" VALUES(2,'player10','2017','Delhi','M','player10','player10@gmail.com','$bcrypt-sha256$2b,12$j95bQLjO9hn6Fih3w6eU9O$xtZ76rZKHRwul9UESys2g0HVHP0LWhm',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.689936');
INSERT INTO "teams" VALUES(3,'player100','2017','Delhi','M','player100','player100@gmail.com','$bcrypt-sha256$2b,12$5xCUwQIGs/6SsuoQ9saQqO$zTKADrFrpPP8tKvANpcXhIBzyVkMz7O',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.690060');
INSERT INTO "teams" VALUES(4,'player11','2017','Delhi','F','player11','player11@gmail.com','$bcrypt-sha256$2b,12$wvCWO.fxVT4c6rIIMJtvau$ZNoSHfy4qn8xDHCSb5MIPU1K4/mUaGa',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.690171');
INSERT INTO "teams" VALUES(5,'player12','2017','Delhi','F','player12','player12@gmail.com','$bcrypt-sha256$2b,12$qOnLSlMEeoaa0SLfl4Cmo.$A/Pd0H6iM0pvJYdmr9d7UsRgD5ZvQCi',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.690276');
INSERT INTO "teams" VALUES(6,'player13','2017','Delhi','F','player13','player13@gmail.com','$bcrypt-sha256$2b,12$RllQ6t9pZXyUIpQqmCL6Se$h/9LPJmuLfKfAOhOQQgdKgfjor1d5bO',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.690378');
INSERT INTO "teams" VALUES(7,'player14','2017','Delhi','F','player14','player14@gmail.com','$bcrypt-sha256$2b,12$W/rya0ZPZgYrO7o1MSsY3e$5eivrm6UbOzzkRq7y02DpeAbzVG7WoG',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.690497');
INSERT INTO "teams" VALUES(8,'player15','2017','Delhi','F','player15','player15@gmail.com','$bcrypt-sha256$2b,12$Wa43f60UfM9E/msc/sJxJu$Ss6oivDMU.m.dEkRWflEzWtNx8kDtEq',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.690598');
INSERT INTO "teams" VALUES(9,'player16','2017','Delhi','F','player16','player16@gmail.com','$bcrypt-sha256$2b,12$Gs454PeqrLGRJVHXoNHAt.$4L1lygc2NPfafJ5BaGf.iT2M2boT/qu',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.690697');
INSERT INTO "teams" VALUES(10,'player17','2017','Delhi','F','player17','player17@gmail.com','$bcrypt-sha256$2b,12$HoVsj4RT6Bjp3U/x43Lthu$EZP0rqlYRm10piLPlhxnBGQT91KFgsi',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.690794');
INSERT INTO "teams" VALUES(11,'player18','2017','Delhi','M','player18','player18@gmail.com','$bcrypt-sha256$2b,12$B72stl.6pQImkgiZVvCY6u$ERffFHwGez7Y08A0.bqNBMYEuTAfZMi',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.690891');
INSERT INTO "teams" VALUES(12,'player19','2017','Delhi','F','player19','player19@gmail.com','$bcrypt-sha256$2b,12$75tTgEPacdUbyMP8ppisxO$j9SwtMcHMgNWTXbAKVRb58tajactTNq',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.690989');
INSERT INTO "teams" VALUES(13,'player2','2017','Delhi','F','player2','player2@gmail.com','$bcrypt-sha256$2b,12$TTYLfqCzbKN.i4pTU8L8.O$Viyq5Fnunetjkkkvr4AgFLLMGVC9oPO',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.691083');
INSERT INTO "teams" VALUES(14,'player20','2017','Delhi','F','player20','player20@gmail.com','$bcrypt-sha256$2b,12$GLGSLUvfpZETcMQWmU5jk.$aYaRaX7hyVuc7B26h8XA2RKx.7C6Zz.',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.691199');
INSERT INTO "teams" VALUES(15,'player21','2017','Delhi','F','player21','player21@gmail.com','$bcrypt-sha256$2b,12$Ia2qWmjMbForH4q4b1KpP.$Uy3sOX5sWfwRBAOINluGBA5LHqLbIdG',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.691294');
INSERT INTO "teams" VALUES(16,'player22','2017','Delhi','M','player22','player22@gmail.com','$bcrypt-sha256$2b,12$eUPlsjZe23dVANP8q5Keje$E4bm5MHhJRSXN0yhkUYUUilYA4V82QS',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.691388');
INSERT INTO "teams" VALUES(17,'player23','2017','Delhi','M','player23','player23@gmail.com','$bcrypt-sha256$2b,12$5dS86nis02ylvEYTphrg9u$l4hbNOuQubmvYUHeyVTk2sK6LQ0TU9u',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.691483');
INSERT INTO "teams" VALUES(18,'player24','2017','Delhi','M','player24','player24@gmail.com','$bcrypt-sha256$2b,12$c9g7tUJNEbW.1WOdm1aBsO$u.cTZpoHcfkM3Mo0SnuRbqsTwTweu2i',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.691576');
INSERT INTO "teams" VALUES(19,'player25','2017','Delhi','M','player25','player25@gmail.com','$bcrypt-sha256$2b,12$fjF4g1p0sLr77CkM6GLiuu$kjDqDTTLs2UopezCEKNfFjUJNxCKlCm',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.691670');
INSERT INTO "teams" VALUES(20,'player26','2017','Delhi','M','player26','player26@gmail.com','$bcrypt-sha256$2b,12$dp/9q.7OHWqw3EBygpwU6O$IgMeUPOa/99WcwdK54kEoKZVtbbP7ca',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.691762');
INSERT INTO "teams" VALUES(21,'player27','2017','Delhi','F','player27','player27@gmail.com','$bcrypt-sha256$2b,12$ka2tzHnXOXZrTPT0o.LhSO$acbBatMlXc/ulcyy/igw.dKdRl3j3xa',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.691853');
INSERT INTO "teams" VALUES(22,'player28','2017','Delhi','M','player28','player28@gmail.com','$bcrypt-sha256$2b,12$n7gGsezmz7gSnRYIJ8p33e$z41st9MNKQtxa/PagyE6W1Lf5S5PnOu',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.691946');
INSERT INTO "teams" VALUES(23,'player29','2017','Delhi','F','player29','player29@gmail.com','$bcrypt-sha256$2b,12$.St7DkbdnhW00DfYRI0PI.$iN8SslYq2P42Muu2xr2liQxMljOgjja',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.692038');
INSERT INTO "teams" VALUES(24,'player3','2017','Delhi','M','player3','player3@gmail.com','$bcrypt-sha256$2b,12$RPx1SR56r2JmfWS6xIu62O$9pM/VSK2YhiFwDOBk/gBuxTUMO9WfOS',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.692130');
INSERT INTO "teams" VALUES(25,'player30','2017','Delhi','F','player30','player30@gmail.com','$bcrypt-sha256$2b,12$UA7fXaIeZjwDrrk4uT64te$2L6.jJG69LRWhvKEM0uPBQindK8zMZG',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.692222');
INSERT INTO "teams" VALUES(26,'player31','2017','Delhi','F','player31','player31@gmail.com','$bcrypt-sha256$2b,12$zCml9C/oSKBb0/6klmRmoO$boOHe226ElZ7w1E1EaT8a2fHeZNvUSq',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.692332');
INSERT INTO "teams" VALUES(27,'player32','2017','Delhi','F','player32','player32@gmail.com','$bcrypt-sha256$2b,12$zWqFsG9Po5a09XaPi96.yO$HVmzaYdscQpeNAAvSZeBkWj.zsk4gdO',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.692437');
INSERT INTO "teams" VALUES(28,'player33','2017','Delhi','M','player33','player33@gmail.com','$bcrypt-sha256$2b,12$yLPszydNoeoq8mEf90A9gO$yjrkThCeH8h7jHi3dWvUgj1NQqKkt1y',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.692530');
INSERT INTO "teams" VALUES(29,'player34','2017','Delhi','M','player34','player34@gmail.com','$bcrypt-sha256$2b,12$ZaW3v1ZiFCK1Bj.kqCPp3.$gfdp1X6cVUQD79YsOnYZvKWqu1IOuoy',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.692622');
INSERT INTO "teams" VALUES(30,'player35','2017','Delhi','F','player35','player35@gmail.com','$bcrypt-sha256$2b,12$5p4W.RjNF7fr9eKjqYFD8O$kpDdso6qVIAuXcTKfjFk8gJP.Ezxsbm',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.692714');
INSERT INTO "teams" VALUES(31,'player36','2017','Delhi','F','player36','player36@gmail.com','$bcrypt-sha256$2b,12$MlfKPfZvBdmMf8mmBTgVHe$mQ.RVPOXBfzFTL8PLdyQbhcOZ2p79ky',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.692805');
INSERT INTO "teams" VALUES(32,'player37','2017','Delhi','M','player37','player37@gmail.com','$bcrypt-sha256$2b,12$9/8mVVzH9omYMuL87fsLK.$ExYkc1MrCOrDW2Q4XxEnXp0FrmA7PmO',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.692897');
INSERT INTO "teams" VALUES(33,'player38','2017','Delhi','M','player38','player38@gmail.com','$bcrypt-sha256$2b,12$e8Aevfb8Ig6EQ5hWnRmrs.$EkHQ6KDfARcmU4JL6d99yTc9ZluC8yy',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.692989');
INSERT INTO "teams" VALUES(34,'player39','2017','Delhi','F','player39','player39@gmail.com','$bcrypt-sha256$2b,12$Sz5ASUHBnDVtyBfp214X4.$OXzyIwT8TUEqnLVnU7fxMwMQrwyT5eC',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.693091');
INSERT INTO "teams" VALUES(35,'player4','2017','Delhi','F','player4','player4@gmail.com','$bcrypt-sha256$2b,12$bI.BtpWujxyK3TSoSR3mSu$gLowjOvdFn6lnK3REymOAxSoNO.wwEe',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.693194');
INSERT INTO "teams" VALUES(36,'player40','2017','Delhi','M','player40','player40@gmail.com','$bcrypt-sha256$2b,12$GxG/sZRn3eJqNuqvg39FiO$wtbVcbLzzwtMGbzGT6NDRDWRSTYGmQq',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.693310');
INSERT INTO "teams" VALUES(37,'player41','2017','Delhi','F','player41','player41@gmail.com','$bcrypt-sha256$2b,12$uOwnsWcEwDlzbEul8nKd2u$WdE3yq6q4QhGK/kxKNl017RiwMVAxUG',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.693413');
INSERT INTO "teams" VALUES(38,'player42','2017','Delhi','F','player42','player42@gmail.com','$bcrypt-sha256$2b,12$HTCT20yXJ2iGv4XhqeK3ZO$lgH3t5LfKaL/VvqA4P91d8CbSOseBUi',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.693507');
INSERT INTO "teams" VALUES(39,'player43','2017','Delhi','F','player43','player43@gmail.com','$bcrypt-sha256$2b,12$xH2PjJa9FKNgz.HpCEMXpe$plEt.VUFAPS2ideEI6LfzkVpZAGzAWC',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.693602');
INSERT INTO "teams" VALUES(40,'player44','2017','Delhi','F','player44','player44@gmail.com','$bcrypt-sha256$2b,12$qmmnDRdLvZCTQ1NfO.AK5O$P686mpp/LAh74oUHlHphGAs0J7bLGL2',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.693694');
INSERT INTO "teams" VALUES(41,'player45','2017','Delhi','F','player45','player45@gmail.com','$bcrypt-sha256$2b,12$FuRgFb1l01nTZ0Zsnlu9Lu$2O4ZpLETkzMTM74ZI52iQ8XTR0Bk8tO',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.693786');
INSERT INTO "teams" VALUES(42,'player46','2017','Delhi','M','player46','player46@gmail.com','$bcrypt-sha256$2b,12$twN/ZJ3imvTaAdVcGmZaDu$c577gAFmEJ5LpyFBppMnpfRaNm353ai',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.693885');
INSERT INTO "teams" VALUES(43,'player47','2017','Delhi','F','player47','player47@gmail.com','$bcrypt-sha256$2b,12$05qP8SbThLOPN1b2VdXjP.$Hgspnp.jrduthcXU6itXdneGdfHS02y',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.693978');
INSERT INTO "teams" VALUES(44,'player48','2017','Delhi','M','player48','player48@gmail.com','$bcrypt-sha256$2b,12$UAg4lgvvQRkG0e6I.YtLou$3eXBgqJD/cF5kK1xzHWJ5QDymGG4dQ2',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.694069');
INSERT INTO "teams" VALUES(45,'player49','2017','Delhi','F','player49','player49@gmail.com','$bcrypt-sha256$2b,12$QD3qteZUUWu4wTFJ4l.ive$v7ekTRy1fbwubAEoRQziYY13FtpUzVe',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.694159');
INSERT INTO "teams" VALUES(46,'player5','2017','Delhi','M','player5','player5@gmail.com','$bcrypt-sha256$2b,12$XBJfdrq/ckcAjbY2gfkpNu$VJg8gGx/YSVsNICYOFFIUW0pYHhjhRu',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.694250');
INSERT INTO "teams" VALUES(47,'player50','2017','Delhi','M','player50','player50@gmail.com','$bcrypt-sha256$2b,12$W6wpP0Xq8Vjg59pBHWSyOO$OeormAJmBDAvqpAazx8RASyZl3W9I1i',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.694346');
INSERT INTO "teams" VALUES(48,'player51','2017','Delhi','F','player51','player51@gmail.com','$bcrypt-sha256$2b,12$eGYDvjM.fvMkNTT7onu3LO$U4zAamILVTVLV2cozuNUG0F61WKjZaK',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.694438');
INSERT INTO "teams" VALUES(49,'player52','2017','Delhi','M','player52','player52@gmail.com','$bcrypt-sha256$2b,12$kydEL2ekzP5WXImAgQ7gxO$19dX1hBFq5QkypmeM9URip8.QzNBMfe',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.694529');
INSERT INTO "teams" VALUES(50,'player53','2017','Delhi','M','player53','player53@gmail.com','$bcrypt-sha256$2b,12$JQjHJykbx4059BGq5UrL8u$b7V/aWgfDKDGQ9O0GAupyO/pPxQwe3.',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.694620');
INSERT INTO "teams" VALUES(51,'player54','2017','Delhi','F','player54','player54@gmail.com','$bcrypt-sha256$2b,12$XnaDI6iZdtWLNkctIpg3qO$eRR6tCtl98.0gr2WfC3RFVLgR8j69DK',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.694710');
INSERT INTO "teams" VALUES(52,'player55','2017','Delhi','F','player55','player55@gmail.com','$bcrypt-sha256$2b,12$XH0HRuop4OjKcKNUKarNI.$2gqV8wzPSoY4p2jilWQFQPNeQK6R4S.',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.694802');
INSERT INTO "teams" VALUES(53,'player56','2017','Delhi','F','player56','player56@gmail.com','$bcrypt-sha256$2b,12$hGcH3lJ5kTnnn7WhJAM5iO$TvQXtPuctxkNRkiRQo3Vn2Xc.rpv2na',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.694891');
INSERT INTO "teams" VALUES(54,'player57','2017','Delhi','F','player57','player57@gmail.com','$bcrypt-sha256$2b,12$3PgYX5oW7WqCxRLrBf4rgO$OtYwtdcLBgOimf0suHXSKBQ3SeQirDO',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.694981');
INSERT INTO "teams" VALUES(55,'player58','2017','Delhi','M','player58','player58@gmail.com','$bcrypt-sha256$2b,12$nhn6CQjRQkXR2cyM57bOQ.$s1gWbiKU/tf1IUOpCeLLZq5GnWXUFie',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.695070');
INSERT INTO "teams" VALUES(56,'player59','2017','Delhi','F','player59','player59@gmail.com','$bcrypt-sha256$2b,12$Ne45ljxPfbsBWzP1D.VdqO$WTSbqvzbZzIrl.ibL.y0A3nh6AswKii',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.695161');
INSERT INTO "teams" VALUES(57,'player6','2017','Delhi','F','player6','player6@gmail.com','$bcrypt-sha256$2b,12$MqhVaFuLuXXf3fNXXeAsZO$5dL0CeZgzgcbXw110HLU4DL/SJSPp6W',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.695252');
INSERT INTO "teams" VALUES(58,'player60','2017','Delhi','F','player60','player60@gmail.com','$bcrypt-sha256$2b,12$litFw3p1.Y.9xa7dtV3Oae$lJLIveXvZBTcBZSdMJLmi/unn6VS0vK',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.695344');
INSERT INTO "teams" VALUES(59,'player61','2017','Delhi','F','player61','player61@gmail.com','$bcrypt-sha256$2b,12$cJFOTWmQcf0Dt9xRzm2fK.$5./mFPzN3wigmJn.YU0N/P8Stpcfyj6',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.695436');
INSERT INTO "teams" VALUES(60,'player62','2017','Delhi','F','player62','player62@gmail.com','$bcrypt-sha256$2b,12$.bW4odLrAdcKepvbnx7Kge$WM593CPDEQCbx/RJjtHmP5z6hvD0Zf.',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.695527');
INSERT INTO "teams" VALUES(61,'player63','2017','Delhi','M','player63','player63@gmail.com','$bcrypt-sha256$2b,12$WCB1WjwI52IF8co6v8KBme$qNMbGxOCNZhiNjpO0WKjtHXPXP4d10m',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.695617');
INSERT INTO "teams" VALUES(62,'player64','2017','Delhi','M','player64','player64@gmail.com','$bcrypt-sha256$2b,12$/2XlnTUqenCPrFk8VjBVrO$RxVfHit96unoNj4.Z3d2L4Gah6EYpxO',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.695708');
INSERT INTO "teams" VALUES(63,'player65','2017','Delhi','M','player65','player65@gmail.com','$bcrypt-sha256$2b,12$9xurvyxLUsi.O3w5Ypcrf.$UZ/Odpzri40oOSx1QPDWr758/AhMnOW',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.695803');
INSERT INTO "teams" VALUES(64,'player66','2017','Delhi','M','player66','player66@gmail.com','$bcrypt-sha256$2b,12$nBY/uOivS2xdd2yyBLCvY.$n/33avhD9p05AckzYKBxuvd7OSSZBb2',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.695894');
INSERT INTO "teams" VALUES(65,'player67','2017','Delhi','M','player67','player67@gmail.com','$bcrypt-sha256$2b,12$2VzltKEPLyubu1OWewopVu$11VcH1G9zuGb5wiUkzE3LQ4JHV0fpvy',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.695986');
INSERT INTO "teams" VALUES(66,'player68','2017','Delhi','F','player68','player68@gmail.com','$bcrypt-sha256$2b,12$mqH6KoZn0wOIb6Ix0dNuYe$FaKKX41eTnD8pMwmiaknO2v0G5Hq82G',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.696078');
INSERT INTO "teams" VALUES(67,'player69','2017','Delhi','F','player69','player69@gmail.com','$bcrypt-sha256$2b,12$w9LhRnPC7xWqGCJxoFIZZu$QtiHBxHHEFCQ9jkYnoILYg2sgGp1PZ.',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.696170');
INSERT INTO "teams" VALUES(68,'player7','2017','Delhi','M','player7','player7@gmail.com','$bcrypt-sha256$2b,12$dwtF1pOSZzrZ71KSQ6Php.$i3RSDJUUWjMAXhY/8oG3WkW3TwQgIOW',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.696261');
INSERT INTO "teams" VALUES(69,'player70','2017','Delhi','M','player70','player70@gmail.com','$bcrypt-sha256$2b,12$PDZ8WSiO3PCMIrTAiFO.zO$BeqvoYMLpDf1Do3/OwJgf84.9k8w.UW',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.696381');
INSERT INTO "teams" VALUES(70,'player71','2017','Delhi','F','player71','player71@gmail.com','$bcrypt-sha256$2b,12$k9MSD9QR/7gYS6QeLijFsO$EaQnkMN1R5Tsy2MLMIHf28Dq/kIvN0i',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.696479');
INSERT INTO "teams" VALUES(71,'player72','2017','Delhi','F','player72','player72@gmail.com','$bcrypt-sha256$2b,12$w.PdPiZFdu2Mgf4Zuhtzsu$6IogHsKJap/zm1/OmPfppHUV6i5LOoC',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.696571');
INSERT INTO "teams" VALUES(72,'player73','2017','Delhi','F','player73','player73@gmail.com','$bcrypt-sha256$2b,12$.xn6DWn.VRjSJdHDoZM7uO$zCZ2/a0Fvgmq7H/8Fi1S706DA7hiWMa',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.696663');
INSERT INTO "teams" VALUES(73,'player74','2017','Delhi','M','player74','player74@gmail.com','$bcrypt-sha256$2b,12$DBI9i6fAf/3SfY2qbRXoB.$SVWlYFz.N8WNMvXCtVKbtG6aUqHyjuq',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.696756');
INSERT INTO "teams" VALUES(74,'player75','2017','Delhi','M','player75','player75@gmail.com','$bcrypt-sha256$2b,12$8jZr318kIhZygIxHc6jOt.$NNvgagopK3GOx.g.mFByDvRHtPUaj8u',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.696851');
INSERT INTO "teams" VALUES(75,'player76','2017','Delhi','F','player76','player76@gmail.com','$bcrypt-sha256$2b,12$S4KlovXhFoRtr.zSML8i..$87fPVVPJOTr2fV0p./b8P4.cA6qzXey',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.696943');
INSERT INTO "teams" VALUES(76,'player77','2017','Delhi','F','player77','player77@gmail.com','$bcrypt-sha256$2b,12$wUzOLnShftVgkrispDI8.u$ssr0g0sn3t.MtudnCM38wnoXf/zQGZe',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.697035');
INSERT INTO "teams" VALUES(77,'player78','2017','Delhi','M','player78','player78@gmail.com','$bcrypt-sha256$2b,12$/5iOqlbCKrglA0X5zxgh9.$FNH3J8n.DWW.WksioRvkkVC3kSAKUWa',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.697128');
INSERT INTO "teams" VALUES(78,'player79','2017','Delhi','F','player79','player79@gmail.com','$bcrypt-sha256$2b,12$rLGN/BignhRwtoo.J36hC.$7tT4KuitC1HdIVJ1rJtnh0Duukee6zi',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.697220');
INSERT INTO "teams" VALUES(79,'player8','2017','Delhi','F','player8','player8@gmail.com','$bcrypt-sha256$2b,12$7tiFeb2XRW59Vv.ZrZsD3u$hyavuixfEXiz8xXyr1vncebdI0JbpOe',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.697316');
INSERT INTO "teams" VALUES(80,'player80','2017','Delhi','M','player80','player80@gmail.com','$bcrypt-sha256$2b,12$TykLUTnVCDz6YPvQ/RWoOe$CFWoX2yJIk39z6nrWCAeIZaMrYfySxS',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.697416');
INSERT INTO "teams" VALUES(81,'player81','2017','Delhi','F','player81','player81@gmail.com','$bcrypt-sha256$2b,12$QulFYXZuiq6enqCKvPEOaO$kxxic1M2rcTqxBDZGNgMHFOLNFIGDIS',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.697510');
INSERT INTO "teams" VALUES(82,'player82','2017','Delhi','M','player82','player82@gmail.com','$bcrypt-sha256$2b,12$s.n5pLMm3UDefk5MIl9dLe$D7RqJBonnQfx1hI2MlqcvAeH8OuegQu',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.697609');
INSERT INTO "teams" VALUES(83,'player83','2017','Delhi','M','player83','player83@gmail.com','$bcrypt-sha256$2b,12$sDOFrDsGRx6fypgRt4CzKO$FbQVzEAvVHBafvbIBvlTm7g2VTlywUe',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.697709');
INSERT INTO "teams" VALUES(84,'player84','2017','Delhi','F','player84','player84@gmail.com','$bcrypt-sha256$2b,12$HnnLjASoaad2.pciGLflA.$Kr4GyeWBATckJhguQ8D9iBUguhaPRUW',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.697804');
INSERT INTO "teams" VALUES(85,'player85','2017','Delhi','M','player85','player85@gmail.com','$bcrypt-sha256$2b,12$Slw/JQPlfZpw7iRsl0Ma8u$ne9XGwLhVwcvFw/BhoUxPsF56ztaDpe',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.697898');
INSERT INTO "teams" VALUES(86,'player86','2017','Delhi','F','player86','player86@gmail.com','$bcrypt-sha256$2b,12$ZUZK8WQX4ZVFGXShHXs8VO$3cZnNbxDgTPNAx5NC.rDLYkzKBQm8Q.',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.697992');
INSERT INTO "teams" VALUES(87,'player87','2017','Delhi','F','player87','player87@gmail.com','$bcrypt-sha256$2b,12$e90REzIt9UqJfKkFTsPnQO$.F3s8OErG1DRmFeyjxxLJ5.n52roqL.',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.698087');
INSERT INTO "teams" VALUES(88,'player88','2017','Delhi','F','player88','player88@gmail.com','$bcrypt-sha256$2b,12$uxhdYq0U18mbBteVfsJOle$M6FEo6Iq0PGPPXtQRKH3.5QHGlONye2',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.698181');
INSERT INTO "teams" VALUES(89,'player89','2017','Delhi','F','player89','player89@gmail.com','$bcrypt-sha256$2b,12$Dh9ZQM/a6SIhJgSwgP2Y7e$IHnxSh1YUkX/m1xLYWLVUQRzHadwHne',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.698275');
INSERT INTO "teams" VALUES(90,'player9','2017','Delhi','F','player9','player9@gmail.com','$bcrypt-sha256$2b,12$4OUKVkVHllUlfFjup9enVu$SBbYQaXtND7887z8PZOk827G5/QR2Iy',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.698369');
INSERT INTO "teams" VALUES(91,'player90','2017','Delhi','F','player90','player90@gmail.com','$bcrypt-sha256$2b,12$Qg2LeNf0R.VTscr27DJJIu$X.1x04jHB55CfXw0PtM8PvOxQcieMZa',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.698600');
INSERT INTO "teams" VALUES(92,'player91','2017','Delhi','M','player91','player91@gmail.com','$bcrypt-sha256$2b,12$kmxT/KL7FnWReNYsK9hHDe$j.E4GTuo9bFG4Kel3XeE0DwzaOU01uq',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.698712');
INSERT INTO "teams" VALUES(93,'player92','2017','Delhi','F','player92','player92@gmail.com','$bcrypt-sha256$2b,12$89bsaRyfqNJGNJQ3fX7Ove$Ex4t65db02K3d3F933sl4pf33qnU5sq',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.698819');
INSERT INTO "teams" VALUES(94,'player93','2017','Delhi','M','player93','player93@gmail.com','$bcrypt-sha256$2b,12$GKVN0sRfFD0ZYTl9T3KOge$dVu.lHXodVjHcCFkiBAcXQEIJfEqxJG',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.698919');
INSERT INTO "teams" VALUES(95,'player94','2017','Delhi','F','player94','player94@gmail.com','$bcrypt-sha256$2b,12$HEtarjraTtqiCsJgIltvIu$YYi50R8m2RJctIz4ae4iVz3n6IKMecK',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.699017');
INSERT INTO "teams" VALUES(96,'player95','2017','Delhi','F','player95','player95@gmail.com','$bcrypt-sha256$2b,12$i7/FS7FYBG.E0HkozvKCn.$sU.Fv1.683i2xJWVcP.l90JlnJy2.SC',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.699113');
INSERT INTO "teams" VALUES(97,'player96','2017','Delhi','F','player96','player96@gmail.com','$bcrypt-sha256$2b,12$hfA5cpsIypRQ8I7DL7fJm.$PvPiOaiDGCMKVOOeHBSX0naZbCtzF..',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.699208');
INSERT INTO "teams" VALUES(98,'player97','2017','Delhi','F','player97','player97@gmail.com','$bcrypt-sha256$2b,12$aq29Zu0jrE3L4TrQPLP6Nu$sqeUAAxSqija77ebzoR8HC63ecLRqym',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.699302');
INSERT INTO "teams" VALUES(99,'player98','2017','Delhi','F','player98','player98@gmail.com','$bcrypt-sha256$2b,12$XG2IpREeR2zvvD3b6nbure$frCHW29FwlHH2kKliKXSl36RjVl5fzi',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.699396');
INSERT INTO "teams" VALUES(100,'player99','2017','Delhi','F','player99','player99@gmail.com','$bcrypt-sha256$2b,12$xRbxX4ye8hIWZvISjJ3M9e$pwwJMufkAcHzpu7WevhJxGba7D.q95q',NULL,'MeitY',NULL,NULL,0,0,0,0,'2017-04-01 12:06:54.699489');
INSERT INTO "teams" VALUES(101,'mentor1','2017','Delhi','F','mentor1','mentor1@gmail.com','$bcrypt-sha256$2b,12$bj1XwFTNKd9V4LQ10ISo4e$ID7aBoQZqUonVq06gw0IqXUT.Xb8cxK',NULL,'MeitY',NULL,NULL,0,0,0,1,'2017-04-01 12:06:54.699834');
INSERT INTO "teams" VALUES(102,'mentor10','2017','Delhi','F','mentor10','mentor10@gmail.com','$bcrypt-sha256$2b,12$OB25e22oRIvJwWQy9zzyAe$hiHSMXw2x5yCdd0A7Ygyz85MhmEL.aC',NULL,'MeitY',NULL,NULL,0,0,0,1,'2017-04-01 12:06:54.699978');
INSERT INTO "teams" VALUES(103,'mentor2','2017','Delhi','M','mentor2','mentor2@gmail.com','$bcrypt-sha256$2b,12$DJVbdupTORPJr0nWhPn5pu$q1hR6cOkkiwvhOVuUwbUtIXdAHQv/Nu',NULL,'MeitY',NULL,NULL,0,0,0,1,'2017-04-01 12:06:54.700084');
INSERT INTO "teams" VALUES(104,'mentor3','2017','Delhi','M','mentor3','mentor3@gmail.com','$bcrypt-sha256$2b,12$wQTBcbK80wVYtmZAQZu8eu$ZNH/bITCmvEZxWSJmC1hkyLZf5GAt96',NULL,'MeitY',NULL,NULL,0,0,0,1,'2017-04-01 12:06:54.700185');
INSERT INTO "teams" VALUES(105,'mentor4','2017','Delhi','M','mentor4','mentor4@gmail.com','$bcrypt-sha256$2b,12$H6dbYvm4XWjYYmvUalFMRO$Z24U7kVGna7kci/ycRCvRf6rmesMfkO',NULL,'MeitY',NULL,NULL,0,0,0,1,'2017-04-01 12:06:54.700286');
INSERT INTO "teams" VALUES(106,'mentor5','2017','Delhi','F','mentor5','mentor5@gmail.com','$bcrypt-sha256$2b,12$vlU59oxBHJw4FcUZFPZjme$Ub.mod5Ti6K8GrXPU2o3Sm9WE42faZW',NULL,'MeitY',NULL,NULL,0,0,0,1,'2017-04-01 12:06:54.700419');
INSERT INTO "teams" VALUES(107,'mentor6','2017','Delhi','F','mentor6','mentor6@gmail.com','$bcrypt-sha256$2b,12$0R/XXvjEeWRamKyoC3wW5u$sze8siUKtQUU2DX2WxUqE4eAV7yeplq',NULL,'MeitY',NULL,NULL,0,0,0,1,'2017-04-01 12:06:54.700518');
INSERT INTO "teams" VALUES(108,'mentor7','2017','Delhi','M','mentor7','mentor7@gmail.com','$bcrypt-sha256$2b,12$0TLvyP9z.S1W7nWOYOiqle$8GUt2EHU3pX6FWU2jwbjmIesMMlfSEm',NULL,'MeitY',NULL,NULL,0,0,0,1,'2017-04-01 12:06:54.700614');
INSERT INTO "teams" VALUES(109,'mentor8','2017','Delhi','M','mentor8','mentor8@gmail.com','$bcrypt-sha256$2b,12$e.58/oACAf64RpVlT0y6ku$/vxUsj7ifvLvwCyZlUDFi3Mf7wNcdKS',NULL,'MeitY',NULL,NULL,0,0,0,1,'2017-04-01 12:06:54.700728');
INSERT INTO "teams" VALUES(110,'mentor9','2017','Delhi','F','mentor9','mentor9@gmail.com','$bcrypt-sha256$2b,12$5DGzNeEPV4wUDC0kZrOU/e$wkbBXDri9OpikwKaPXcpmmFgWQ8tJHy',NULL,'MeitY',NULL,NULL,0,0,0,1,'2017-04-01 12:06:54.700835');
INSERT INTO "teams" VALUES(111,'admin1','2017','Delhi','F','admin1','admin1@gmail.com','$bcrypt-sha256$2b,12$yXI4WafCyGe8Z4/FMBDws.$YXtbHh6ilUUvPFRjYIvEAX02iTx1z2.',NULL,'MeitY',NULL,NULL,0,0,1,0,'2017-04-01 12:06:54.701152');
INSERT INTO "teams" VALUES(112,'admin2','2017','Delhi','F','admin2','admin2@gmail.com','$bcrypt-sha256$2b,12$U1/tevTjhydKdPXjp731r.$L/hFWMOIdjlbOpmWpI6Qq3JuRyOSR4i',NULL,'MeitY',NULL,NULL,0,0,1,0,'2017-04-01 12:06:54.701301');
INSERT INTO "teams" VALUES(113,'admin3','2017','Delhi','F','admin3','admin3@gmail.com','$bcrypt-sha256$2b,12$dEEX/T7FO8TMb6UVdAxfMu$X9SxucJ2CwlQT1so.GMbTeB9kUOoxKO',NULL,'MeitY',NULL,NULL,0,0,1,0,'2017-04-01 12:06:54.701417');
INSERT INTO "teams" VALUES(114,NULL,NULL,NULL,NULL,'admin','abc@abc.com','$bcrypt-sha256$2b,12$aJOsNZx.cOqgqmbZhM2ipe$Enw5Cb73xvVzY4e1XhPcEfNuf0.dXZe',NULL,NULL,NULL,NULL,1,0,1,0,'2017-04-01 12:07:44.057355');
CREATE TABLE challenges (
	id INTEGER NOT NULL, 
	name VARCHAR(80), 
	description TEXT, 
	max_attempts INTEGER, 
	value INTEGER, 
	category VARCHAR(80), 
	type INTEGER, 
	hidden BOOLEAN, 
	hint VARCHAR(500), 
	level INTEGER, 
	PRIMARY KEY (id), 
	CHECK (hidden IN (0, 1))
);
INSERT INTO "challenges" VALUES(1,'Challenge 1','Decrypt the contents of the letter.',0,10,'Cryptography',0,1,'You need this number "10".',NULL);
INSERT INTO "challenges" VALUES(2,'Challenge 2','Name the series.',0,10,'Trivia',0,1,'Reverse search is the new search.',NULL);
INSERT INTO "challenges" VALUES(3,'Challenge 3','Can you find the flag here.
http://localhost/3/index.php',0,10,'Web',0,1,'Some catch in the source',NULL);
INSERT INTO "challenges" VALUES(4,'Challenge 4','What you think about the file is wrong!!',0,30,'Forensics',0,1,'EXTend your thinking.',NULL);
INSERT INTO "challenges" VALUES(5,'Challenge 5','A message sent from a very old multi-tap mobile phone.',0,30,'Cryptography',0,1,'',NULL);
INSERT INTO "challenges" VALUES(6,'Challenge 6','Can you trick my arrays? I don''t think so ... Try to leak out the flag.
[ssh]',0,30,'Exploitation',0,1,'Is the limit, the limit?',NULL);
INSERT INTO "challenges" VALUES(7,'Challenge 7','It is known that the enemy is conducting a secret meeting next week. I found a file that will give me a secret password that I can use to find the location of meeting. Unfortunately, I don’t know what to do with it. Can you help me find secret password from the file?
',0,50,'Reversing',0,1,'',NULL);
INSERT INTO "challenges" VALUES(8,'Challenge 8','The file format is correct but there is something fishy about the file.',0,50,'Forensics',0,1,'Magic Number , Header',NULL);
INSERT INTO "challenges" VALUES(9,'Challenge 9','This is updated version of previous web-Challenge

http://localhost/9/index.php
',0,80,'Web',0,1,'Extract the source',NULL);
INSERT INTO "challenges" VALUES(10,'Challenge 10','The enemy (who is a big fan of coffee and an island in Indonesia) changed the password for next meeting for some reason and distributed this file to exchange password. Can you help me find the password for next meeting?
',0,80,'Reversing',0,1,'Some catch in the source',NULL);
INSERT INTO "challenges" VALUES(11,'Challenge 11','Know more about the file.',0,80,'Forensics',0,1,'Mayhem Ends Threat At Delhi At Ten Am.',NULL);
INSERT INTO "challenges" VALUES(12,'Challenge 12','Those guys are getting better and better. They changed the password again for some reason! I don’t know why he keeps doing this. Anyway, this file has password for next level. Unfortunately, my brother did something called MD5 hashing of password and stored the result. Can you get the actual password?',0,80,'Reversing',0,1,'You need this number "10".',NULL);
INSERT INTO "challenges" VALUES(13,'Challenge 13','Two people, Blaise de Vigenère and Giovan Battista Bellaso, are meeting at a secret location to discuss something top secret. I found the location of meeting but need a password to enter the building. I think Bellaso sent the password to Vigenère in this message. Unfortunately, I don’t have anything else but this message. Can you help me find the password by breaking this message?
',0,100,'Cryptography',0,1,'Reverse search is the new search.',NULL);
INSERT INTO "challenges" VALUES(14,'Challenge 14','There is no flag.

http://localhost/14/index.html',0,100,'Web',0,1,'Robots are good, Always ',NULL);
INSERT INTO "challenges" VALUES(15,'Challenge 15','It is simple. Just link it. And get me a shell.
[ssh]',0,100,'Exploitation',0,1,'Symlinks are a powerful way to execute remote commands I have heard.',NULL);
INSERT INTO "challenges" VALUES(16,'Challenge 16','be a CookieMonster

http://localhost/16/index.php',0,150,'Web',0,1,'You know cookies ',NULL);
INSERT INTO "challenges" VALUES(17,'Challenge 17','The enemy (who loves XOR cipher) sent a message via an email and we intercepted it. Can you help me break the encrypted message and get the original message so that I can get to them
',0,150,'Cryptography',0,1,'Some catch in the source',NULL);
INSERT INTO "challenges" VALUES(18,'Challenge 18','The enemy recently learnt a new algorithm for encrypting text called RSA. He sent me this message encrypted using RSA to his boss. But, we somehow got the encrypted message. Can you help me decrypt the message? We also were able to get some details thorugh a phone interrupt and it was to use openssl’s rsa utilities to extract details of the key but I don’t know what details are needed. Maybe this might help you',0,200,'Cryptography',0,1,'Magic Number , Header',NULL);
INSERT INTO "challenges" VALUES(19,'Challenge 19','EditThisCookie

http://localhost/16/index.php',0,200,'Web',0,1,'Can you change the cookie? because only admin are permitted',NULL);
INSERT INTO "challenges" VALUES(20,'Challenge 20','You have a text file. Or its not. Umm.. I''m not sure.',0,200,'Forensics',0,1,'Some catch in the source',NULL);
INSERT INTO "challenges" VALUES(21,'Challenge 21','Its their last bet. They(who also likes some snakes I think) learnt that we found the secret password and changed the password for next meeting again. Can you help me find the password for next meeting from this strange file? I could not find the type of this file. Maybe you should find that out first
',0,80,'Reversing',0,1,'Mayhem Ends Threat At Delhi At Ten Am.',NULL);
INSERT INTO "challenges" VALUES(22,'Challenge 22','Everything you think you know is wrong. Flow! And break the buffers ... Oh, and gain shell and read the flag.
[ssh]',0,200,'Exploitation',0,1,'Does the buffer take in only as many bytes as you intend it to? Sure?',NULL);
INSERT INTO "challenges" VALUES(23,'Challenge 23','Know more about the file.',0,350,'Boss',0,1,'Mayhem Ends Threat At Delhi At Ten Am.',NULL);
CREATE TABLE config (
	id INTEGER NOT NULL, 
	"key" TEXT, 
	value TEXT, 
	PRIMARY KEY (id)
);
INSERT INTO "config" VALUES(1,'ctf_version','1.0.1');
INSERT INTO "config" VALUES(2,'ctf_theme','original');
INSERT INTO "config" VALUES(3,'css',NULL);
INSERT INTO "config" VALUES(4,'ctf_name','Yukti CTF');
INSERT INTO "config" VALUES(5,'start',NULL);
INSERT INTO "config" VALUES(6,'max_tries','0');
INSERT INTO "config" VALUES(7,'end',NULL);
INSERT INTO "config" VALUES(8,'freeze',NULL);
INSERT INTO "config" VALUES(9,'view_challenges_unregistered',NULL);
INSERT INTO "config" VALUES(10,'prevent_registration',NULL);
INSERT INTO "config" VALUES(11,'verify_emails',NULL);
INSERT INTO "config" VALUES(12,'mail_server',NULL);
INSERT INTO "config" VALUES(13,'mail_port',NULL);
INSERT INTO "config" VALUES(14,'mail_tls',NULL);
INSERT INTO "config" VALUES(15,'mail_ssl',NULL);
INSERT INTO "config" VALUES(16,'mail_username',NULL);
INSERT INTO "config" VALUES(17,'mail_password',NULL);
INSERT INTO "config" VALUES(18,'setup','1');
INSERT INTO "config" VALUES(19,'hide_scores',NULL);
CREATE TABLE pages (
	id INTEGER NOT NULL, 
	route VARCHAR(80), 
	html TEXT, 
	PRIMARY KEY (id), 
	UNIQUE (route)
);
INSERT INTO "pages" VALUES(1,'index','<div class="container main-container">
    <img class="logo" src="/static/original/img/logo.png" />
    <h3 class="text-center">
        Welcome to a cool CTF framework written by <a href="https://github.com/ColdHeat">Kevin Chung</a> of <a href="https://github.com/isislab">@isislab</a>
    </h3>

    <h4 class="text-center">
        <a href="/admin">Click here</a> to login and setup your CTF
    </h4>
</div>');
CREATE TABLE containers (
	id INTEGER NOT NULL, 
	name VARCHAR(80), 
	buildfile TEXT, 
	PRIMARY KEY (id)
);
CREATE TABLE files (
	id INTEGER NOT NULL, 
	chal INTEGER, 
	location TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(chal) REFERENCES challenges (id)
);
INSERT INTO "files" VALUES(1,1,'78cd88b62ed6f564e9ea2ef2c2a6a8d5/Challenge.pdf');
INSERT INTO "files" VALUES(2,2,'b948df0a75efe67a47701a05cd496af2/Challenge.png');
INSERT INTO "files" VALUES(3,4,'0e6c94a04cdd5ea965a90f6755bbe391/Challenge.bin');
INSERT INTO "files" VALUES(4,8,'5207592c4ed92439b598bfdcaf793c92/challenge.jpg');
INSERT INTO "files" VALUES(5,11,'3888b75c30939f360b685314c4f171db/Challenge.jpg');
INSERT INTO "files" VALUES(6,20,'5c1fb6cff1202ac746204f1ab0973bdc/Chalelenge.txt');
INSERT INTO "files" VALUES(7,5,'602ce9d2fbaf0bdfbec2958ebff7e926/crypto_2.txt');
INSERT INTO "files" VALUES(8,13,'f2de814eeef181fc190dc17e988991b6/crypto_3.txt');
INSERT INTO "files" VALUES(9,17,'38d7fb84835ad1b77462397f0e212454/crypto_4.txt');
INSERT INTO "files" VALUES(10,18,'a80d50a61e6c2a5a920a7c82d086b41c/crypto_5.txt');
INSERT INTO "files" VALUES(11,18,'848d0632fd4737c300239c932268e189/key_5.pub.pem');
INSERT INTO "files" VALUES(12,7,'d40d25ed8a7143d159d32d01ba656324/re1.c');
INSERT INTO "files" VALUES(13,10,'88c65132ccab6310fe95184e0936ca2f/re2.java');
INSERT INTO "files" VALUES(14,12,'58920d581233f388110726d5542ffd9a/re3.py');
INSERT INTO "files" VALUES(15,21,'ea354daf9d2815b1998542e0251ce3e1/re4.pyc');
CREATE TABLE tracking (
	id INTEGER NOT NULL, 
	ip BIGINT, 
	team INTEGER, 
	date DATETIME, 
	PRIMARY KEY (id), 
	FOREIGN KEY(team) REFERENCES teams (id)
);
INSERT INTO "tracking" VALUES(1,2130706433,1,'2017-04-01 12:07:42.310694');
INSERT INTO "tracking" VALUES(2,2130706433,114,'2017-04-01 13:25:51.755700');
CREATE TABLE solves (
	id INTEGER NOT NULL, 
	chalid INTEGER, 
	teamid INTEGER, 
	ip INTEGER, 
	flag TEXT, 
	date DATETIME, 
	PRIMARY KEY (id), 
	UNIQUE (chalid, teamid), 
	FOREIGN KEY(chalid) REFERENCES challenges (id), 
	FOREIGN KEY(teamid) REFERENCES teams (id)
);
CREATE TABLE tags (
	id INTEGER NOT NULL, 
	chal INTEGER, 
	tag VARCHAR(80), 
	PRIMARY KEY (id), 
	FOREIGN KEY(chal) REFERENCES challenges (id)
);
CREATE TABLE keys (
	id INTEGER NOT NULL, 
	chal INTEGER, 
	key_type INTEGER, 
	flag TEXT, 
	data TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(chal) REFERENCES challenges (id)
);
INSERT INTO "keys" VALUES(1,1,0,'flag{pr0v3_y0ur_5kill5_t0_c0mp3t3}',NULL);
INSERT INTO "keys" VALUES(2,2,0,'flag{westworld}',NULL);
INSERT INTO "keys" VALUES(3,3,0,'flag{A1w4ys_S3e_S0urc3_C0d3}',NULL);
INSERT INTO "keys" VALUES(4,4,0,'flag{y0u_g0t_7h3_3xt3ns10n_c0rr3ct3d}',NULL);
INSERT INTO "keys" VALUES(6,6,0,'flag{B4by_57ep5_t0_1337}',NULL);
INSERT INTO "keys" VALUES(8,8,0,'flag{y0u_n33d_t0_ed1t_7h3_h34d3r}',NULL);
INSERT INTO "keys" VALUES(9,9,0,'flag{Extr4ct_S0urc3_C0d3}',NULL);
INSERT INTO "keys" VALUES(11,11,0,'flag{m3tadat4_15_v3ry_1mp0rt4nt}',NULL);
INSERT INTO "keys" VALUES(14,14,0,'flag{Y0u_4r3_G00d_1n_r0b0ts}',NULL);
INSERT INTO "keys" VALUES(15,15,0,'flag{s1m_l1nk5_r0k!}',NULL);
INSERT INTO "keys" VALUES(16,16,0,'flag{Sh0uld_S3e_C00k1es}',NULL);
INSERT INTO "keys" VALUES(19,19,0,'flag{Y0u_ar3_C00k1e_monSt3r}',NULL);
INSERT INTO "keys" VALUES(20,20,0,'flag{pr0v3_y0ur_5kill5_t0_c0mp3t3}',NULL);
INSERT INTO "keys" VALUES(22,22,0,'flag{h4Ck3r_h4ppy_0v3rf10w}',NULL);
INSERT INTO "keys" VALUES(23,23,0,'flag{m3tadat4_15_v3ry_1mp0rt4nt}',NULL);
INSERT INTO "keys" VALUES(24,5,0,'flag{old_tech}',NULL);
INSERT INTO "keys" VALUES(25,13,0,'flag{blaise_pascal}',NULL);
INSERT INTO "keys" VALUES(26,17,0,'flag{xor_cipher_is_best}',NULL);
INSERT INTO "keys" VALUES(27,18,0,'flag{rsa_is_awesome}',NULL);
INSERT INTO "keys" VALUES(28,7,0,'flag{source_code}',NULL);
INSERT INTO "keys" VALUES(29,10,0,'flag{java_is_not_just_coffee}',NULL);
INSERT INTO "keys" VALUES(30,12,0,'flag{secretcode}',NULL);
INSERT INTO "keys" VALUES(31,21,0,'flag{python_rocks}',NULL);
CREATE TABLE wrong_keys (
	id INTEGER NOT NULL, 
	chalid INTEGER, 
	teamid INTEGER, 
	date DATETIME, 
	flag TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(chalid) REFERENCES challenges (id), 
	FOREIGN KEY(teamid) REFERENCES teams (id)
);
CREATE TABLE awards (
	id INTEGER NOT NULL, 
	teamid INTEGER, 
	name VARCHAR(80), 
	description TEXT, 
	date DATETIME, 
	value INTEGER, 
	category VARCHAR(80), 
	icon TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(teamid) REFERENCES teams (id)
);
CREATE TABLE mentor_student (
	id INTEGER NOT NULL, 
	"mentorId" INTEGER, 
	"studentId" INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY("mentorId") REFERENCES teams (id), 
	FOREIGN KEY("studentId") REFERENCES teams (id)
);
INSERT INTO "mentor_student" VALUES(1,1,100);
INSERT INTO "mentor_student" VALUES(2,2,100);
INSERT INTO "mentor_student" VALUES(3,3,100);
INSERT INTO "mentor_student" VALUES(4,4,100);
INSERT INTO "mentor_student" VALUES(5,5,100);
INSERT INTO "mentor_student" VALUES(6,6,100);
INSERT INTO "mentor_student" VALUES(7,7,100);
INSERT INTO "mentor_student" VALUES(8,8,100);
INSERT INTO "mentor_student" VALUES(9,9,100);
INSERT INTO "mentor_student" VALUES(10,10,100);
INSERT INTO "mentor_student" VALUES(11,11,101);
INSERT INTO "mentor_student" VALUES(12,12,101);
INSERT INTO "mentor_student" VALUES(13,13,101);
INSERT INTO "mentor_student" VALUES(14,14,101);
INSERT INTO "mentor_student" VALUES(15,15,101);
INSERT INTO "mentor_student" VALUES(16,16,101);
INSERT INTO "mentor_student" VALUES(17,17,101);
INSERT INTO "mentor_student" VALUES(18,18,101);
INSERT INTO "mentor_student" VALUES(19,19,101);
INSERT INTO "mentor_student" VALUES(20,20,101);
INSERT INTO "mentor_student" VALUES(21,21,102);
INSERT INTO "mentor_student" VALUES(22,22,102);
INSERT INTO "mentor_student" VALUES(23,23,102);
INSERT INTO "mentor_student" VALUES(24,24,102);
INSERT INTO "mentor_student" VALUES(25,25,102);
INSERT INTO "mentor_student" VALUES(26,26,102);
INSERT INTO "mentor_student" VALUES(27,27,102);
INSERT INTO "mentor_student" VALUES(28,28,102);
INSERT INTO "mentor_student" VALUES(29,29,102);
INSERT INTO "mentor_student" VALUES(30,30,102);
INSERT INTO "mentor_student" VALUES(31,31,103);
INSERT INTO "mentor_student" VALUES(32,32,103);
INSERT INTO "mentor_student" VALUES(33,33,103);
INSERT INTO "mentor_student" VALUES(34,34,103);
INSERT INTO "mentor_student" VALUES(35,35,103);
INSERT INTO "mentor_student" VALUES(36,36,103);
INSERT INTO "mentor_student" VALUES(37,37,103);
INSERT INTO "mentor_student" VALUES(38,38,103);
INSERT INTO "mentor_student" VALUES(39,39,103);
INSERT INTO "mentor_student" VALUES(40,40,103);
INSERT INTO "mentor_student" VALUES(41,41,104);
INSERT INTO "mentor_student" VALUES(42,42,104);
INSERT INTO "mentor_student" VALUES(43,43,104);
INSERT INTO "mentor_student" VALUES(44,44,104);
INSERT INTO "mentor_student" VALUES(45,45,104);
INSERT INTO "mentor_student" VALUES(46,46,104);
INSERT INTO "mentor_student" VALUES(47,47,104);
INSERT INTO "mentor_student" VALUES(48,48,104);
INSERT INTO "mentor_student" VALUES(49,49,104);
INSERT INTO "mentor_student" VALUES(50,50,104);
INSERT INTO "mentor_student" VALUES(51,51,105);
INSERT INTO "mentor_student" VALUES(52,52,105);
INSERT INTO "mentor_student" VALUES(53,53,105);
INSERT INTO "mentor_student" VALUES(54,54,105);
INSERT INTO "mentor_student" VALUES(55,55,105);
INSERT INTO "mentor_student" VALUES(56,56,105);
INSERT INTO "mentor_student" VALUES(57,57,105);
INSERT INTO "mentor_student" VALUES(58,58,105);
INSERT INTO "mentor_student" VALUES(59,59,105);
INSERT INTO "mentor_student" VALUES(60,60,105);
INSERT INTO "mentor_student" VALUES(61,61,106);
INSERT INTO "mentor_student" VALUES(62,62,106);
INSERT INTO "mentor_student" VALUES(63,63,106);
INSERT INTO "mentor_student" VALUES(64,64,106);
INSERT INTO "mentor_student" VALUES(65,65,106);
INSERT INTO "mentor_student" VALUES(66,66,106);
INSERT INTO "mentor_student" VALUES(67,67,106);
INSERT INTO "mentor_student" VALUES(68,68,106);
INSERT INTO "mentor_student" VALUES(69,69,106);
INSERT INTO "mentor_student" VALUES(70,70,106);
INSERT INTO "mentor_student" VALUES(71,71,107);
INSERT INTO "mentor_student" VALUES(72,72,107);
INSERT INTO "mentor_student" VALUES(73,73,107);
INSERT INTO "mentor_student" VALUES(74,74,107);
INSERT INTO "mentor_student" VALUES(75,75,107);
INSERT INTO "mentor_student" VALUES(76,76,107);
INSERT INTO "mentor_student" VALUES(77,77,107);
INSERT INTO "mentor_student" VALUES(78,78,107);
INSERT INTO "mentor_student" VALUES(79,79,107);
INSERT INTO "mentor_student" VALUES(80,80,107);
INSERT INTO "mentor_student" VALUES(81,81,108);
INSERT INTO "mentor_student" VALUES(82,82,108);
INSERT INTO "mentor_student" VALUES(83,83,108);
INSERT INTO "mentor_student" VALUES(84,84,108);
INSERT INTO "mentor_student" VALUES(85,85,108);
INSERT INTO "mentor_student" VALUES(86,86,108);
INSERT INTO "mentor_student" VALUES(87,87,108);
INSERT INTO "mentor_student" VALUES(88,88,108);
INSERT INTO "mentor_student" VALUES(89,89,108);
INSERT INTO "mentor_student" VALUES(90,90,108);
INSERT INTO "mentor_student" VALUES(91,91,109);
INSERT INTO "mentor_student" VALUES(92,92,109);
INSERT INTO "mentor_student" VALUES(93,93,109);
INSERT INTO "mentor_student" VALUES(94,94,109);
INSERT INTO "mentor_student" VALUES(95,95,109);
INSERT INTO "mentor_student" VALUES(96,96,109);
INSERT INTO "mentor_student" VALUES(97,97,109);
INSERT INTO "mentor_student" VALUES(98,98,109);
INSERT INTO "mentor_student" VALUES(99,99,109);
INSERT INTO "mentor_student" VALUES(100,100,109);
COMMIT;
