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
INSERT INTO "teams" VALUES(1,'Darpana','4','Hamirpur','M','Darpana','Darpana@gmail.com','$bcrypt-sha256$2b,12$BMEbWKxZe.uh6itReg8KY.$V2B2ECm9Jwito3h1343jcYBLuuaLwUC',NULL,'National Institute Of Technology, Hamirpur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.418891');
INSERT INTO "teams" VALUES(2,'Bodhi','4','Salem','M','Bodhi','Bodhi@gmail.com','$bcrypt-sha256$2b,12$mMRUP9rMpqudDAIxfubwEe$FNcKs6dDg90Grj/EQHNdmY0Rih0Yhdm',NULL,'Sona College Of Technology-Salem',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.420005');
INSERT INTO "teams" VALUES(3,'Gini','4','Gwalior','M','Gini','Gini@gmail.com','$bcrypt-sha256$2b,12$bLthWI2dEV4MUPqKRooxze$qiS8R8LfToNYQDtzB1Qu9MxO6OFLTcO',NULL,'Itm University - Gwalior (School Of Engineering & Technology)-Gwalior',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.420187');
INSERT INTO "teams" VALUES(4,'Inu','1','Nanded','M','Inu','Inu@gmail.com','$bcrypt-sha256$2b,12$7Cq8RUND8TKJwDCIiF8beO$IUUp8PywtDO/Dc9BOzpxcdaHxbwxkDa',NULL,'Shri Guru Gobind Singhji Institute Of Engineering And Technology-Nanded',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.420337');
INSERT INTO "teams" VALUES(5,'Gitanjali','1','Varanasi','M','Gitanjali','Gitanjali@gmail.com','$bcrypt-sha256$2b,12$64.lln68hS94PxACv9L1Se$UaYzzHKKkG5deUhbDGM6FSGWKOq7qqK',NULL,'Indian Institute Of Technology (Banaras Hindu University), Varanasi',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.420479');
INSERT INTO "teams" VALUES(6,'Bhrithi','1','Mangalore','M','Bhrithi','Bhrithi@gmail.com','$bcrypt-sha256$2b,12$cPR2WsVQQKZixzXZCxgfAe$HMArjloMyZaKAgJd.jdvUDDzabqiUVi',NULL,'National Institute Of Technology, Karnataka-Mangalore',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.420638');
INSERT INTO "teams" VALUES(7,'Kaira','4','Howrah','M','Kaira','Kaira@gmail.com','$bcrypt-sha256$2b,12$f2CKwnDmIc29tqGbPGVmzO$mQrQojzSvzBG0d1dFrs6VsVTVcHATWW',NULL,'Indian Institute Of Engineering Science And Technology, Shibpur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.420771');
INSERT INTO "teams" VALUES(8,'Divya','1','Chennai','M','Divya','Divya@gmail.com','$bcrypt-sha256$2b,12$ms6OBR3myd7CZLUhqE6E3.$3dPPQuNj6aSb05YzLGeC3.E2xGheegG',NULL,'Anand Institute Of Higher Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.420920');
INSERT INTO "teams" VALUES(9,'Omisha','4','Howrah','M','Omisha','Omisha@gmail.com','$bcrypt-sha256$2b,12$XoxK9P0Qmd/RXtMge9S4k.$p4kexLQuZVxqjApMsz3D1JNWgZHfi7u',NULL,'Indian Institute Of Engineering Science And Technology, Shibpur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.421050');
INSERT INTO "teams" VALUES(10,'Paakhi','4','Hyderabad','M','Paakhi','Paakhi@gmail.com','$bcrypt-sha256$2b,12$PxSv0yM9sKOQH23sdYZq7e$TD4/gD/6ZWIdMiSg9h8gai3dpaYTbP6',NULL,'Indian Institute Of Technology, Hyderabad',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.421178');
INSERT INTO "teams" VALUES(11,'Gayatri','1','Mysore','M','Gayatri','Gayatri@gmail.com','$bcrypt-sha256$2b,12$Jax7z0KozljQ/f4GWY9vMu$5yKXmVYreJUUQkMYoZ.8uB0RjXcWoU6',NULL,'The National Institute Of Engineering',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.421304');
INSERT INTO "teams" VALUES(12,'Parul','1','Jabalpur','M','Parul','Parul@gmail.com','$bcrypt-sha256$2b,12$76dOzvrwM2j0k/2ZCvc9du$SJ6/mrUSMOvwXxQ58fdTgZQRA22rW8C',NULL,'Pandit Dwarka Prasad Mishra Indian Institute Of Information Technology, Design And Manufacturing (Iiitdm), Jabalpur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.421430');
INSERT INTO "teams" VALUES(13,'Rathi','1','Bhimavaram','M','Rathi','Rathi@gmail.com','$bcrypt-sha256$2b,12$mTO5fbgqQtND4/Ii6wXb2u$5ay0ZJdaF9GZhHIRURejR3ceW/hYNcm',NULL,'Sagi Ramakrishnam Raju Engineering College-Bhimavaram',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.421555');
INSERT INTO "teams" VALUES(14,'Aayushi','1','Nashik','M','Aayushi','Aayushi@gmail.com','$bcrypt-sha256$2b,12$2mgjnzvjjIQkdVaCwT5oU.$YxGAO44lfZSCSvan7bU7wbGMvgasEZa',NULL,'K. K. Wagh Institute Of Engineering Education & Research-Nashik',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.421680');
INSERT INTO "teams" VALUES(15,'Gaurika','1','Howrah','M','Gaurika','Gaurika@gmail.com','$bcrypt-sha256$2b,12$R.HvgUb/iluucbQQ9lgxX.$hqVL58rZr9a/vUsSZeg58A12DfyYhoe',NULL,'Indian Institute Of Engineering Science And Technology, Shibpur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.421805');
INSERT INTO "teams" VALUES(16,'Deeksha','4','Ranchi','M','Deeksha','Deeksha@gmail.com','$bcrypt-sha256$2b,12$fLKFwFnoWmXrPN5Cn0MAq.$lWaeeCvL3SjWDB60oFxUYEsstC6jH9i',NULL,'Birla Institute Of Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.421928');
INSERT INTO "teams" VALUES(17,'Damini','4','Madurai','M','Damini','Damini@gmail.com','$bcrypt-sha256$2b,12$8jPc7Rx0QMlLw/Gn.9kyU.$EK.ApBHS5406YIukjw.hJ2hX0HBF0LC',NULL,'Thiagarajar College Of Engineering-Madurai',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.422051');
INSERT INTO "teams" VALUES(18,'Eeshta','1','Roorkee','M','Eeshta','Eeshta@gmail.com','$bcrypt-sha256$2b,12$FOyjyfjQEXb0Y61QEp872e$EUk2zubAIhmwS/sttFjcDIg1aPARQyS',NULL,'Indian Institute Of Technology, Roorkee',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.422175');
INSERT INTO "teams" VALUES(19,'Bindhiya','4','Cochin','M','Bindhiya','Bindhiya@gmail.com','$bcrypt-sha256$2b,12$fPzbCrjyZJblwYr6jkMatO$zzEU4lQ63Ez5nPtiaXV8t8Prj/AHXU2',NULL,'Cochin University Of Science And Technology-Cochin',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.422303');
INSERT INTO "teams" VALUES(20,'Jaanvi','4','Bhubaneswar','M','Jaanvi','Jaanvi@gmail.com','$bcrypt-sha256$2b,12$8XA0tSGjODzZHVhzRs4.oe$2lSARdmxgDrcyZnhEW.poAACqSD0qkK',NULL,'C.V.Raman College Of Engineering-Bhubaneswar',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.422424');
INSERT INTO "teams" VALUES(21,'Nainika','1','Noida','M','Nainika','Nainika@gmail.com','$bcrypt-sha256$2b,12$/DHsUH1VWIQY600Gvf0.R.$1ghbN0DA/4n7s0uNYWO4rOSTT4dDIWa',NULL,'Jaypee Institute Of Information Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.422546');
INSERT INTO "teams" VALUES(22,'Laboni','1','Kanpur','M','Laboni','Laboni@gmail.com','$bcrypt-sha256$2b,12$sBZ6n3mP5LAekOyOjfN8we$HXRGitWM1VbEs0efhhkSze9AuBcEvpq',NULL,'Indian Institute Of Technology, Kanpur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.422669');
INSERT INTO "teams" VALUES(23,'Gina','1','Patna','M','Gina','Gina@gmail.com','$bcrypt-sha256$2b,12$ROXr/gKpD636V5t3pl/DHe$AGEPx65YXj3s5FVee1h47MjPGh0/AqC',NULL,'National Institute Of Technology, Patna',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.422790');
INSERT INTO "teams" VALUES(24,'Chhaya','1','Bombay','M','Chhaya','Chhaya@gmail.com','$bcrypt-sha256$2b,12$4C0y9m/li9rlRvwRg8s4Ee$qFh/k6kl6KO5imCIDvzFgTnVKCxXk2O',NULL,'Indian Institute Of Technology, Bombay',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.422911');
INSERT INTO "teams" VALUES(25,'Bhanu','4','Coimbatore','M','Bhanu','Bhanu@gmail.com','$bcrypt-sha256$2b,12$MR97yctH8kCqzXGIXs88t.$.MvnVFQzLuDmDfCW67yQi4hwNMFEIIe',NULL,'Psg College Of Technology-Coimbatore',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.423031');
INSERT INTO "teams" VALUES(26,'Darsha','1','Bangalore','M','Darsha','Darsha@gmail.com','$bcrypt-sha256$2b,12$cvJYug7BdPv.X6p6jIikJe$Q0fkKLXe6zfmOn.54N36zbFhN8GEKHO',NULL,'M. S. Ramaiah Institute Of Technology-Bangalore',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.423152');
INSERT INTO "teams" VALUES(27,'Saachi','4','Chennai','M','Saachi','Saachi@gmail.com','$bcrypt-sha256$2b,12$32O0119VpbUeFR15tsFH/e$LqQTQ3Uz0AqnQ76/4p/bu9cMGTPGnbm',NULL,'Indian Institute Of Technology, Madras',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.423273');
INSERT INTO "teams" VALUES(28,'Amulya','1','Durgapur','M','Amulya','Amulya@gmail.com','$bcrypt-sha256$2b,12$eykerxntZI2KMmwitnrVCe$AfLIOGkAsL5mHRDmuy29i9pNz1SniAS',NULL,'National Institute Of Technology, Durgapur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.423393');
INSERT INTO "teams" VALUES(29,'Adya','1','Manipal','M','Adya','Adya@gmail.com','$bcrypt-sha256$2b,12$BoC6s2mYlBt6eqqT7nGHIu$9XW6I2tC4QqfjvX9mFm8Eg.fTdinPzm',NULL,'Manipal Institute Of Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.423512');
INSERT INTO "teams" VALUES(30,'Deeba','1','Gautam Budh Nagar','M','Deeba','Deeba@gmail.com','$bcrypt-sha256$2b,12$a.XjwCZ8DJJT2a0AHvleT.$4Kt6LNenwa9EgPRdrKYaHZvuPQuKc72',NULL,'Noida Institute Of Engineering & Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.423631');
INSERT INTO "teams" VALUES(31,'Harini','1','Bhubaneswar','M','Harini','Harini@gmail.com','$bcrypt-sha256$2b,12$ef4wWbPv9GAnQlNYJumSG.$bWmVlAz3xTLY.v/k5Y.Ee0NLdukv.VO',NULL,'Kalinga Institue Of Industrial Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.423749');
INSERT INTO "teams" VALUES(32,'Ragini','4','Noida','M','Ragini','Ragini@gmail.com','$bcrypt-sha256$2b,12$FcGzG3k.jdFPj/7KzKsS9u$ad7Rl5gBgU1ZMPMomsC5xOUJQkEhNoa',NULL,'Jaypee Institute Of Information Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.423871');
INSERT INTO "teams" VALUES(33,'Aditi','1','Silchar','M','Aditi','Aditi@gmail.com','$bcrypt-sha256$2b,12$cK0NDnJ1VfTBsbIZstHBwu$y8O01oDbh3nmPspmtwtBzNu1shhiwce',NULL,'National Institute Of Technology, Silchar',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.423990');
INSERT INTO "teams" VALUES(34,'Kajal','4','Karunagapally','M','Kajal','Kajal@gmail.com','$bcrypt-sha256$2b,12$a8ijYfzpAO8YBkXUhg3tg.$xYCLXFikTpxWJ7jlVRTmhNsBpeg21ZO',NULL,'Amrita School Of Engineering',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.424109');
INSERT INTO "teams" VALUES(35,'Chandni','1','Chandigarh','M','Chandni','Chandni@gmail.com','$bcrypt-sha256$2b,12$Zv3sjoiREMalB8rnBIdE1.$bo2pcqfTDpurGVQDONN8nTQL/L9j7eK',NULL,'University Institute Of Chemical Engineering And Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.424227');
INSERT INTO "teams" VALUES(36,'Eesha','4','Nagpur','M','Eesha','Eesha@gmail.com','$bcrypt-sha256$2b,12$1qc8cpssCA12fZU3kN786.$MHr3GwD/LP8nrYXwk4j6BELyiNgo.FC',NULL,'Shri Ramdeobaba College Of Engineering And Management, Ramdeo Tekdi, Gittikhadan, Katol Road, Nagpur-Nagpur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.424348');
INSERT INTO "teams" VALUES(37,'Eswari','1','Nagpur','M','Eswari','Eswari@gmail.com','$bcrypt-sha256$2b,12$zbCqFO3cl5P1kYT77jQR8.$8oVqM7sZBUGQnlzwcANmx8u1V9aL0G6',NULL,'Yeshwantrao Chavan College Of Engineering-Nagpur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.424468');
INSERT INTO "teams" VALUES(38,'Maahi','4','Puducherry','M','Maahi','Maahi@gmail.com','$bcrypt-sha256$2b,12$8JwQeT5lXlZgpKpyzjTiZu$a2NA6GXuODxD1BoUy3J3uVAX1R/uH9G',NULL,'Pondicherry Engineering College',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.424586');
INSERT INTO "teams" VALUES(39,'Alekhya','4','Sathyamangalam','M','Alekhya','Alekhya@gmail.com','$bcrypt-sha256$2b,12$zkidWSXhjoaEhz0RY76vgu$anSzIuzxwveMmnpGugeFQqERBZeU2XK',NULL,'Bannari Amman Institute Of Technology-Sathyamangalam',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.424703');
INSERT INTO "teams" VALUES(40,'Dayanita','4','Ranchi','M','Dayanita','Dayanita@gmail.com','$bcrypt-sha256$2b,12$OF2hBAg9CX8bM2lEe1iqe.$WUanxyscwZPb4mf.CZmW8MOPRueRFh2',NULL,'Birla Institute Of Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.424823');
INSERT INTO "teams" VALUES(41,'Bhakti','1','Kanpur','M','Bhakti','Bhakti@gmail.com','$bcrypt-sha256$2b,12$0V3P7FssN7BOhrIGgXGve.$YNFsBk2.Dtoeut3GsAEiUGqLgpieJL6',NULL,'Indian Institute Of Technology, Kanpur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.424966');
INSERT INTO "teams" VALUES(42,'Aahna','1','New Delhi','M','Aahna','Aahna@gmail.com','$bcrypt-sha256$2b,12$rXIXTN4J9WrKGGnJ8aO1ZO$sWbMoeZ4pWavNyP1nkU1rkJ6C6seMHO',NULL,'Jamia Millia Islamia (A Central University)',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.425086');
INSERT INTO "teams" VALUES(43,'Chaitali','1','Chennai','M','Chaitali','Chaitali@gmail.com','$bcrypt-sha256$2b,12$E8jhrq69ikGXbK8m1maAue$xCc5/oF1FzTmV7wuDSVmQGvQlXZ15Xy',NULL,'Indian Institute Of Information Technology, Design & Manufacturing (Iiitd&M) Kancheepuram-Chennai',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.425205');
INSERT INTO "teams" VALUES(44,'Bavishni','1','Nanded','M','Bavishni','Bavishni@gmail.com','$bcrypt-sha256$2b,12$FvrfwdDgSeNNaZsrNEqxhO$n3is5h/BprXczt65pQdrp.nLGqP0mzG',NULL,'Shri Guru Gobind Singhji Institute Of Engineering And Technology-Nanded',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.425327');
INSERT INTO "teams" VALUES(45,'Akshita','4','Manipal','M','Akshita','Akshita@gmail.com','$bcrypt-sha256$2b,12$WWOAbDYR/ecSN/p5gI0C0.$meyF.5o9kGCbe8By6DX2BRBLLH8fqK.',NULL,'Manipal Institute Of Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.425445');
INSERT INTO "teams" VALUES(46,'Dayita','4','Warangal','M','Dayita','Dayita@gmail.com','$bcrypt-sha256$2b,12$piM.wOvehe6bFdFOigvGH.$nuIkczAckhmSFmy2taOtQ9zQwxi8zru',NULL,'National Institute Of Technology, Warangal',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.425574');
INSERT INTO "teams" VALUES(47,'Lasya','1','Patiala','M','Lasya','Lasya@gmail.com','$bcrypt-sha256$2b,12$Yss/5lDwdkXH8YjRmSP9NO$B/AdhZta7.lTwWnW9k97/TbUr1LRqcW',NULL,'Thapar University-Patiala',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.425693');
INSERT INTO "teams" VALUES(48,'Vaani','4','Nashik','M','Vaani','Vaani@gmail.com','$bcrypt-sha256$2b,12$lQDBifgq4MNiifSbDXunsu$opIzTU6d3CyRSP8KDSNU2LuK8Ka7T.a',NULL,'K. K. Wagh Institute Of Engineering Education & Research-Nashik',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.425813');
INSERT INTO "teams" VALUES(49,'Daksha','1','Chennai','M','Daksha','Daksha@gmail.com','$bcrypt-sha256$2b,12$NtYCRt3Oh1Wy22vHE8CUBu$nKIScGtyQWMGJBNwj6w2TE14QAqRXly',NULL,'Indian Institute Of Information Technology, Design & Manufacturing (Iiitd&M) Kancheepuram-Chennai',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.425931');
INSERT INTO "teams" VALUES(50,'Geetika','4','Guntur','M','Geetika','Geetika@gmail.com','$bcrypt-sha256$2b,12$.41Z5PseMH3VUbEk24gfyO$PgUcqMuK.C0p7f7H2NulwolROueLCLO',NULL,'Vignan''S Foundation For Science, Technology And Research',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.426054');
INSERT INTO "teams" VALUES(51,'Rajesh','1','Pune','F','Rajesh','Rajesh@gmail.com','$bcrypt-sha256$2b,12$UNiqpZcccgRXkbIZlrR5Se$5aut1/2/ruszekYZbww9zbkkMcEKMCG',NULL,'Bharati Vidyapeeth Deemed University College Of Engineering-Pune',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.426174');
INSERT INTO "teams" VALUES(52,'Arjun','1','Udaipur','F','Arjun','Arjun@gmail.com','$bcrypt-sha256$2b,12$kwRa3.r8qooAYlUC/4MzVO$1NRhZZNG.mWpdNrjtNLS3CADkKQzG.O',NULL,'College Of Technology And Engineering-Udaipur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.426295');
INSERT INTO "teams" VALUES(53,'Mohan','4','Chennai','F','Mohan','Mohan@gmail.com','$bcrypt-sha256$2b,12$9AR5NAU5lea11jXdfmDv/O$52M3yJ32PcQE1RzGIrOzAVFd7OZ79oK',NULL,'Indian Institute Of Information Technology, Design & Manufacturing (Iiitd&M) Kancheepuram-Chennai',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.426415');
INSERT INTO "teams" VALUES(54,'Shaurya','4','Patiala','F','Shaurya','Shaurya@gmail.com','$bcrypt-sha256$2b,12$m26CCnelYQ5nAJ1T9c8ta.$7xw3DVN6zgo2.NNIHBqm/AGgLYuT1YW',NULL,'Thapar University-Patiala',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.426533');
INSERT INTO "teams" VALUES(55,'Rishabh','1','Karunagapally','F','Rishabh','Rishabh@gmail.com','$bcrypt-sha256$2b,12$5jsJzYXo/eVIRqiGTsMjnu$Gah3cUgKUmVvOf99PFqyHkWxjGI2.sC',NULL,'Amrita School Of Engineering',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.426652');
INSERT INTO "teams" VALUES(56,'Dinesh','4','Nagpur','F','Dinesh','Dinesh@gmail.com','$bcrypt-sha256$2b,12$RqYIS5yumDIsAfCQjiP4cu$o7ugg8wMLCroFoPgU7cRW.QpAAfNi7u',NULL,'Visvesvaraya National Institute Of Technology, Nagpur (Deemed University)-Nagpur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.426773');
INSERT INTO "teams" VALUES(57,'Mehul','4','Chandigarh','F','Mehul','Mehul@gmail.com','$bcrypt-sha256$2b,12$vc6zXRO9eRE/Enthn7YVFu$IeXtsbAffcz1KxdYRjtW/SfIMATkSxG',NULL,'University Institute Of Chemical Engineering And Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.426892');
INSERT INTO "teams" VALUES(58,'Indra','4','Durgapur','F','Indra','Indra@gmail.com','$bcrypt-sha256$2b,12$dSPpqUnofTVywI6zJ5jNF.$p7ekTbxgJOMuulM9BpB/Rpu5sHeOapK',NULL,'National Institute Of Technology, Durgapur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.427009');
INSERT INTO "teams" VALUES(59,'Dalip','4','Guntur','F','Dalip','Dalip@gmail.com','$bcrypt-sha256$2b,12$XI44tbiG8rMonkojcIqIE.$EiWIgwpvhFZAnIeGWRQV6NFaAuPV5pm',NULL,'Koneru Lakshmaiah Education Foundation',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.427127');
INSERT INTO "teams" VALUES(60,'Rohit','1','Patna','F','Rohit','Rohit@gmail.com','$bcrypt-sha256$2b,12$93oMVRP6z4V7zIxkL/1V7u$bCZ0.U0SbUk3czRHAM8magZklB./mmG',NULL,'National Institute Of Technology, Patna',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.427252');
INSERT INTO "teams" VALUES(61,'Vijay','1','Pune','F','Vijay','Vijay@gmail.com','$bcrypt-sha256$2b,12$cuQccjcRoftNvpYE38edZ.$eQXuMwPmB5eIILN44oAJXG1tTRlnp22',NULL,'Bharati Vidyapeeth Deemed University College Of Engineering-Pune',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.427371');
INSERT INTO "teams" VALUES(62,'Arush','1','Bombay','F','Arush','Arush@gmail.com','$bcrypt-sha256$2b,12$Xj3x2YlUrD5DkinRg9.5qu$8el/WHQuXrJg2HwKe2yM5169EedRMAO',NULL,'Indian Institute Of Technology, Bombay',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.427490');
INSERT INTO "teams" VALUES(63,'Adnan','4','Calicut','F','Adnan','Adnan@gmail.com','$bcrypt-sha256$2b,12$WvQdG2kSF6GD/uxyRs5.Ve$pZrFTqWg8u3pCsHlPRIYg2zlfuCSLqG',NULL,'National Institute Of Technology, Calicut',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.427608');
INSERT INTO "teams" VALUES(64,'Sai','4','Coimbatore','F','Sai','Sai@gmail.com','$bcrypt-sha256$2b,12$8Bd5gbhwri2NltiO3RHkYe$jWEsYOZuiZ6.yz7zS3YVEXCI.1I5NXK',NULL,'Coimbatore Institute Of Technology-Coimbatore',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.427727');
INSERT INTO "teams" VALUES(65,'Madhavaditya','4','Jalandhar','F','Madhavaditya','Madhavaditya@gmail.com','$bcrypt-sha256$2b,12$wHxy9.H5F6UL7Ksor6pa4e$WAvEhaW8oU5PGQd8I9wqVwufQ4YokeK',NULL,'Dr. B R Ambedkar National Institute Of Technology, Jalandhar',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.427851');
INSERT INTO "teams" VALUES(66,'Jai','4','Coimbatore','F','Jai','Jai@gmail.com','$bcrypt-sha256$2b,12$EpKX2bdawIm/JKdlL71bLO$NyUWs9SLVsxhs68BV38wW5cBAj8VAO.',NULL,'Coimbatore Institute Of Technology-Coimbatore',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.427971');
INSERT INTO "teams" VALUES(67,'Gurdeep','1','Silchar','F','Gurdeep','Gurdeep@gmail.com','$bcrypt-sha256$2b,12$rAL0SiWvaZDlSGttL9ED5.$egtudSez6wCO0m3pWjD7Bzw6a5Uimjm',NULL,'National Institute Of Technology, Silchar',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.428093');
INSERT INTO "teams" VALUES(68,'Pratyush','4','Chennai','F','Pratyush','Pratyush@gmail.com','$bcrypt-sha256$2b,12$tE6h0gAvbL39yHTaakS1nO$cLtP8Aq3R2KJcdz53xqheMTOstnmTTS',NULL,'B.S. Abdur Rahman Institute Of Science And Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.428210');
INSERT INTO "teams" VALUES(69,'Abdul','1','Guntur','F','Abdul','Abdul@gmail.com','$bcrypt-sha256$2b,12$I8Ev/JKK6VtvfUAvOSDEdu$fxU3cEAy/e4C97uFgJ0Cv8YV/IaBVpG',NULL,'Koneru Lakshmaiah Education Foundation',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.428330');
INSERT INTO "teams" VALUES(70,'Adit','4','Delhi','F','Adit','Adit@gmail.com','$bcrypt-sha256$2b,12$QyeroYvQJTaeJ1TybwoYN.$G6bkzz6pZ48r2tFhN2z9o5mswyuFDva',NULL,'National Institute Of Technology, Delhi',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.428447');
INSERT INTO "teams" VALUES(71,'Vivaan','1','Jatni','F','Vivaan','Vivaan@gmail.com','$bcrypt-sha256$2b,12$OlpOoICQSYPOrUdwbTaePe$q3dO3wNiebHu2HhK9dXB4TsK0oij/Hu',NULL,'Centurion Institute Of Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.428566');
INSERT INTO "teams" VALUES(72,'Abhimanyu','4','Hyderabad','F','Abhimanyu','Abhimanyu@gmail.com','$bcrypt-sha256$2b,12$YHYu1D.RfzuqjsEJuVNfn.$sx60Y15k.HCChlf72r1M6ASSNIc4bxq',NULL,'Indian Institute Of Technology, Hyderabad',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.428684');
INSERT INTO "teams" VALUES(73,'Zayn','4','Salem','F','Zayn','Zayn@gmail.com','$bcrypt-sha256$2b,12$Jb1s7t/agtuXqAMRTQ1v8u$XUVZp/tg2.BjrhK1io0ToIW1zX6DpWe',NULL,'Sona College Of Technology-Salem',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.428804');
INSERT INTO "teams" VALUES(74,'Kabir','4','Durgapur','F','Kabir','Kabir@gmail.com','$bcrypt-sha256$2b,12$1CeaAmitlxLozOox8pfOGu$HDW49xf50zwASKixQx5DlBAAZVFP6/u',NULL,'National Institute Of Technology, Durgapur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.428940');
INSERT INTO "teams" VALUES(75,'Ayush','1','Warangal','F','Ayush','Ayush@gmail.com','$bcrypt-sha256$2b,12$LcQlzJRssn0UcnQBEg/wCu$svBKOIGTVTMog9NVcgHuYdCskub124O',NULL,'National Institute Of Technology, Warangal',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.429061');
INSERT INTO "teams" VALUES(76,'Neil','1','Karunagapally','F','Neil','Neil@gmail.com','$bcrypt-sha256$2b,12$0fgIFi7FpeD888QfYl/ICe$sNd.E1y1S7jJDQao13hMvxrfPplZP7S',NULL,'Amrita School Of Engineering',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.429180');
INSERT INTO "teams" VALUES(77,'Reyansh','1','Madurai','F','Reyansh','Reyansh@gmail.com','$bcrypt-sha256$2b,12$zCpSI8vxECF/DWmfNAJVU.$vFmqmOTsz0NBQUADNw9dE0IGuAVvBKC',NULL,'Thiagarajar College Of Engineering-Madurai',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.429299');
INSERT INTO "teams" VALUES(78,'Rohan','1','Gautam Budh Nagar','F','Rohan','Rohan@gmail.com','$bcrypt-sha256$2b,12$uahxLzYujqdk0OWZTMRese$aViRszJv0H0GeGftHNfEcPJZYcANXdS',NULL,'Noida Institute Of Engineering & Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.429505');
INSERT INTO "teams" VALUES(79,'Hrithik','4','Rupnagar','F','Hrithik','Hrithik@gmail.com','$bcrypt-sha256$2b,12$b2KT0/flPF5di.iU2Bq9m.$YuLCsXqluhAnuatPLP8HVntuUTsl7IC',NULL,'Indian Institute Of Technology, Ropar-Rupnagar',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.429638');
INSERT INTO "teams" VALUES(80,'Kushal','4','Nagpur','F','Kushal','Kushal@gmail.com','$bcrypt-sha256$2b,12$nLff4av3BAevWVDgKrhDpu$CbdEcs7SYF1sOxb8SrFDxv3ZcmRiydC',NULL,'Visvesvaraya National Institute Of Technology, Nagpur (Deemed University)-Nagpur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.429770');
INSERT INTO "teams" VALUES(81,'Om','1','Mangalore','F','Om','Om@gmail.com','$bcrypt-sha256$2b,12$1J47SQymldvNnpSNgOyt9e$M.lAo3R7smEPaQzPzCDHsvskQmAls.q',NULL,'National Institute Of Technology, Karnataka-Mangalore',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.429905');
INSERT INTO "teams" VALUES(82,'Muhammad','1','Aurangabad','F','Muhammad','Muhammad@gmail.com','$bcrypt-sha256$2b,12$ySJyVZ/SzRSYq9npHbpEBO$o59n9zdm7KuhwOFteVsEFPWkjTpReBu',NULL,'Government College Of Engineering, Aurangabad (Academic Autonomous)',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.430032');
INSERT INTO "teams" VALUES(83,'Karan','1','Guntur','F','Karan','Karan@gmail.com','$bcrypt-sha256$2b,12$I5.tPCBK1vdOjdfTC110G.$Bqd/m4hJKSb9szN4.lohuQYSqNV8SHK',NULL,'Koneru Lakshmaiah Education Foundation',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.430167');
INSERT INTO "teams" VALUES(84,'Raahithya','4','Berhampur','F','Raahithya','Raahithya@gmail.com','$bcrypt-sha256$2b,12$bo9tno683aewrQIgqOFi9O$KIacLBrcQgVknvM3p7mFhyCyRMCMwkq',NULL,'National Institute Of Science & Technology-Berhampur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.430305');
INSERT INTO "teams" VALUES(85,'Amandeep','4','Ponda','F','Amandeep','Amandeep@gmail.com','$bcrypt-sha256$2b,12$dAuVzhi1jI4XjSkEaDhGne$e6PiZowTpBsSXDz03aCWJEiMF4OaXwS',NULL,'National Institute Of Technology, Goa',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.430442');
INSERT INTO "teams" VALUES(86,'Shakti','4','Perundurai','F','Shakti','Shakti@gmail.com','$bcrypt-sha256$2b,12$7KttMNI7xy8FhJ33oXEahe$U6PhRHf4wS43bMUoy/X294UfazPpztu',NULL,'Kongu Engineering College',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.430579');
INSERT INTO "teams" VALUES(87,'Akshay','4','Patna','F','Akshay','Akshay@gmail.com','$bcrypt-sha256$2b,12$V1BLqcwGsKmSrpvE7VLfy.$yMd9qDbTbdpklGdBVKLTdOXP12C5gsi',NULL,'National Institute Of Technology, Patna',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.430720');
INSERT INTO "teams" VALUES(88,'Vinod','4','Patna','F','Vinod','Vinod@gmail.com','$bcrypt-sha256$2b,12$e5TzN25vnDNHsq7IQgapEe$vvihD7l.W6.U.nU0eJsMGF.iw7lQseW',NULL,'Indian Institute Of Technology, Patna',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.430859');
INSERT INTO "teams" VALUES(89,'Anik','1','Rupnagar','F','Anik','Anik@gmail.com','$bcrypt-sha256$2b,12$GU9QFfcdXs1Z2urOTq1qVO$KtvQUfPLXhPLwQiTDmQAHIEXp2vuHSq',NULL,'Indian Institute Of Technology, Ropar-Rupnagar',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.430980');
INSERT INTO "teams" VALUES(90,'Sanjay','1','Karunagapally','F','Sanjay','Sanjay@gmail.com','$bcrypt-sha256$2b,12$ScBxVbK6eWTzszNZ2UK56.$h.DgmpuQx9.eZreTnS.WEu2JYnXI2mq',NULL,'Amrita School Of Engineering',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.431105');
INSERT INTO "teams" VALUES(91,'Aryan','4','Chennai','F','Aryan','Aryan@gmail.com','$bcrypt-sha256$2b,12$06/c6JdtGBZOrP1APW8mI.$l7x1INh5H0.G8SmoM4gdTNLGY3w8DvS',NULL,'Anand Institute Of Higher Technology',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.431234');
INSERT INTO "teams" VALUES(92,'Daksh','1','Bangalore','F','Daksh','Daksh@gmail.com','$bcrypt-sha256$2b,12$2gbjKe8FpiIY4fvlI2PYku$iPQMZgucLNkIsA1BOPqY48rthwpMRKy',NULL,'M. S. Ramaiah Institute Of Technology-Bangalore',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.431355');
INSERT INTO "teams" VALUES(93,'Krishna','1','Srinagar','F','Krishna','Krishna@gmail.com','$bcrypt-sha256$2b,12$PgiKdVJ/YXkpksVYbAAFw.$TIksBnSQxiBt3D6rMZ0RxiFmN.Jbbqy',NULL,'National Institute Of Technology, Srinagar',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.431475');
INSERT INTO "teams" VALUES(94,'Gautam','4','New Delhi','F','Gautam','Gautam@gmail.com','$bcrypt-sha256$2b,12$6aqsxyxvUeeUjBN91sxCU.$pK2uMyIXDqpkgDSZ.xXB43HsbWIc7fm',NULL,'Jamia Millia Islamia (A Central University)',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.431595');
INSERT INTO "teams" VALUES(95,'Bharat','1','Perundurai','F','Bharat','Bharat@gmail.com','$bcrypt-sha256$2b,12$ou1RJ8P0UfWCk7Ea0jv0..$CaAPIxznr0i0sgDU4jsbE9H9OpBGmqm',NULL,'Kongu Engineering College',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.431715');
INSERT INTO "teams" VALUES(96,'Devansh','1','Coimbatore','F','Devansh','Devansh@gmail.com','$bcrypt-sha256$2b,12$k0EkV73mmm11JlltcJgz2O$tarAt8DLjuAqG0xWdsjyWlczetMS9WS',NULL,'Karunya Institute Of Technology And Sciences',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.431834');
INSERT INTO "teams" VALUES(97,'Dhruv','1','Berhampur','F','Dhruv','Dhruv@gmail.com','$bcrypt-sha256$2b,12$5x78TUpqCMi5SGOMUNrTsO$EGWAVbi/Awr3Xu2h9C4o1yV3ph7Nm8q',NULL,'National Institute Of Science & Technology-Berhampur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.431953');
INSERT INTO "teams" VALUES(98,'Aadesh','4','Mandi','F','Aadesh','Aadesh@gmail.com','$bcrypt-sha256$2b,12$PIlQNiICGbLw67xxnyUwdu$uv9lH2cRymP1yyVyeWcIep7BzUd/bgK',NULL,'Indian Institute Of Technology, Mandi',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.432071');
INSERT INTO "teams" VALUES(99,'Manoj','4','Bengaluru','F','Manoj','Manoj@gmail.com','$bcrypt-sha256$2b,12$8Cy62OmmsErXCUIsdoiShe$tYevb/PGcg8R7P0N4v8q.pQqLCMfU52',NULL,'R.V. College Of Engineering-Bengaluru',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.432190');
INSERT INTO "teams" VALUES(100,'Gaurav','1','Tumkur','F','Gaurav','Gaurav@gmail.com','$bcrypt-sha256$2b,12$sqd/WN39bvfKT4rdRtjEEu$jL5GVDGaIbOtONcWIMuU/SFA8PHiAC6',NULL,'Siddaganga Institute Of Technology-Tumkur',NULL,NULL,0,0,0,0,'2017-04-02 05:38:49.432308');
INSERT INTO "teams" VALUES(101,'Vihaan','2017','Patiala','M','Vihaan','Vihaan@gmail.com','$bcrypt-sha256$2b,12$t8qewJZg4YtRENrdXqCwjO$Y.kcXUZQ6HYH3Y9pYq7rYCOFd3BjSFi',NULL,'Thapar University-Patiala',NULL,NULL,0,0,0,1,'2017-04-02 05:38:49.432714');
INSERT INTO "teams" VALUES(102,'Karthik','2017','Puducherry','M','Karthik','Karthik@gmail.com','$bcrypt-sha256$2b,12$nR60zNbcLaf6p1te19iVJ.$PHberzfBTuFY4ZPfk.ELIux3nZ4.O6C',NULL,'Pondicherry Engineering College',NULL,NULL,0,0,0,1,'2017-04-02 05:38:49.432907');
INSERT INTO "teams" VALUES(103,'Darsh','2017','Coimbatore','M','Darsh','Darsh@gmail.com','$bcrypt-sha256$2b,12$9nyyFLc2VVlbOnq6L5Q3fe$ESqradh1sJWSw6ZcAkEXUCWN1AuI7OS',NULL,'Sri Ramakrishna Engineering College-Coimbatore',NULL,NULL,0,0,0,1,'2017-04-02 05:38:49.433047');
INSERT INTO "teams" VALUES(104,'Tejas','2017','Bhubaneswar','M','Tejas','Tejas@gmail.com','$bcrypt-sha256$2b,12$VPFdVO8K7nmpldRD4uvej.$fLmp7AripGN94NhuKl5Ch9KCjdWJrz6',NULL,'C.V.Raman College Of Engineering-Bhubaneswar',NULL,NULL,0,0,0,1,'2017-04-02 05:38:49.433178');
INSERT INTO "teams" VALUES(105,'Aarav','2017','Islampur','M','Aarav','Aarav@gmail.com','$bcrypt-sha256$2b,12$B4pBuCZ31VHF7rjwqDH0Eu$s4sgiM2QiGEhtgC5Gb1AMMat0CT882S',NULL,'Kasegaon Education Societys Rajarambapu Institute Of Technology-Islampur',NULL,NULL,0,0,0,1,'2017-04-02 05:38:49.433307');
INSERT INTO "teams" VALUES(106,'Gautami','2017','Jatni','F','Gautami','Gautami@gmail.com','$bcrypt-sha256$2b,12$Uz8Qz7hu7AFcKAJbE3fkYe$6rg38LDZIwgPXquljQ0HzORTIDeZ1Ae',NULL,'Centurion Institute Of Technology',NULL,NULL,0,0,0,1,'2017-04-02 05:38:49.433436');
INSERT INTO "teams" VALUES(107,'Shivanshika','2017','Manipal','F','Shivanshika','Shivanshika@gmail.com','$bcrypt-sha256$2b,12$8NxIYMDypVA76dawUjNOce$zBBTtiu2YWnZco8HX4kCYboEbHopIK.',NULL,'Manipal Institute Of Technology',NULL,NULL,0,0,0,1,'2017-04-02 05:38:49.433561');
INSERT INTO "teams" VALUES(108,'Nalini','2017','Pune','F','Nalini','Nalini@gmail.com','$bcrypt-sha256$2b,12$UXRzwn5uW4nROpM86cuvru$QvQ83od1OAdSDKSdz8XW9ybn5s0WVV.',NULL,'College Of Engineering, Pune',NULL,NULL,0,0,0,1,'2017-04-02 05:38:49.433685');
INSERT INTO "teams" VALUES(109,'Harshita','2017','Jaipur','F','Harshita','Harshita@gmail.com','$bcrypt-sha256$2b,12$dKPHp7pF1bcSzmczyj6uQ.$W18hW5/nQswofmexzUnkNJD.ou2bbk6',NULL,'Malaviya National Institute Of Technology, Jaipur',NULL,NULL,0,0,0,1,'2017-04-02 05:38:49.433808');
INSERT INTO "teams" VALUES(110,'Harisha','2017','Guntur','F','Harisha','Harisha@gmail.com','$bcrypt-sha256$2b,12$i5Ij03q866OLg9cIul0CFO$kYByYRQGJe9nbkg/5thXLhIrl4vV/Aq',NULL,'Koneru Lakshmaiah Education Foundation',NULL,NULL,0,0,0,1,'2017-04-02 05:38:49.433933');
INSERT INTO "teams" VALUES(111,'admin1','2017','Delhi','F','admin1','admin1@gmail.com','$bcrypt-sha256$2b,12$rf2WKQbI1HtAh2tShNj/YO$ftOaOFfCsYvGRBla2faXJQFZY0tYbVG',NULL,'MeitY',NULL,NULL,0,0,1,0,'2017-04-02 05:38:49.434382');
INSERT INTO "teams" VALUES(112,'admin2','2017','Delhi','M','admin2','admin2@gmail.com','$bcrypt-sha256$2b,12$g4ZPzfKEAHKMz5dKwcf7JO$MlrCQVy9YvKPnhvhVmIW8L6yfTR9DpO',NULL,'MeitY',NULL,NULL,0,0,1,0,'2017-04-02 05:38:49.434558');
INSERT INTO "teams" VALUES(113,'admin3','2017','Delhi','F','admin3','admin3@gmail.com','$bcrypt-sha256$2b,12$I9Ikq80TXr1eaBESUzrIiu$Ol1n9DLV4.HGe/ZGpOkWYbx2dXYpTLq',NULL,'MeitY',NULL,NULL,0,0,1,0,'2017-04-02 05:38:49.434695');
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
INSERT INTO "config" VALUES(20,'mg_api_key',NULL);
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
INSERT INTO "tracking" VALUES(1,2130706433,1,'2017-04-02 07:58:23.221008');
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
INSERT INTO "solves" VALUES(1,3,1,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:37:33.316804');
INSERT INTO "solves" VALUES(2,7,1,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:37:39.271146');
INSERT INTO "solves" VALUES(3,1,1,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:37:45.326356');
INSERT INTO "solves" VALUES(4,4,1,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:37:50.267765');
INSERT INTO "solves" VALUES(5,19,1,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:38:01.193002');
INSERT INTO "solves" VALUES(6,14,1,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:38:06.148447');
INSERT INTO "solves" VALUES(7,22,1,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:38:16.155169');
INSERT INTO "solves" VALUES(8,13,1,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:38:24.570290');
INSERT INTO "solves" VALUES(9,20,1,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:38:31.417966');
INSERT INTO "solves" VALUES(10,18,1,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:38:47.975342');
INSERT INTO "solves" VALUES(11,3,3,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:39:20.673925');
INSERT INTO "solves" VALUES(12,1,3,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:39:26.112813');
INSERT INTO "solves" VALUES(13,4,3,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:39:33.084651');
INSERT INTO "solves" VALUES(14,2,3,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:39:37.762184');
INSERT INTO "solves" VALUES(15,11,3,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:39:43.208450');
INSERT INTO "solves" VALUES(16,17,3,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:39:49.974979');
INSERT INTO "solves" VALUES(17,8,3,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:39:56.982189');
INSERT INTO "solves" VALUES(18,15,3,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:40:08.356163');
INSERT INTO "solves" VALUES(19,12,3,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:40:19.874678');
INSERT INTO "solves" VALUES(20,16,3,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:40:25.838115');
INSERT INTO "solves" VALUES(21,5,8,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:40:48.963370');
INSERT INTO "solves" VALUES(22,1,8,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:40:55.919686');
INSERT INTO "solves" VALUES(23,3,8,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:41:02.939251');
INSERT INTO "solves" VALUES(24,16,8,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:41:09.353917');
INSERT INTO "solves" VALUES(25,13,8,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:41:14.816676');
INSERT INTO "solves" VALUES(26,11,8,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:41:21.087561');
INSERT INTO "solves" VALUES(27,18,8,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:41:27.192407');
INSERT INTO "solves" VALUES(28,1,9,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:41:46.380880');
INSERT INTO "solves" VALUES(29,3,9,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:41:52.213404');
INSERT INTO "solves" VALUES(30,21,9,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:42:00.198686');
INSERT INTO "solves" VALUES(31,23,9,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:42:05.048546');
INSERT INTO "solves" VALUES(32,5,9,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:42:15.237256');
INSERT INTO "solves" VALUES(33,3,11,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:42:33.773959');
INSERT INTO "solves" VALUES(34,18,11,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:42:40.598985');
INSERT INTO "solves" VALUES(35,19,11,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:42:51.941179');
INSERT INTO "solves" VALUES(36,20,11,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:42:58.302377');
INSERT INTO "solves" VALUES(37,9,14,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:43:15.203752');
INSERT INTO "solves" VALUES(38,2,14,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:43:19.315013');
INSERT INTO "solves" VALUES(39,4,14,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:43:23.561987');
INSERT INTO "solves" VALUES(40,3,14,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:43:27.697428');
INSERT INTO "solves" VALUES(41,17,14,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:43:32.530586');
INSERT INTO "solves" VALUES(42,18,14,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:43:37.610903');
INSERT INTO "solves" VALUES(43,1,14,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:43:47.274728');
INSERT INTO "solves" VALUES(44,14,31,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:44:26.385097');
INSERT INTO "solves" VALUES(45,7,31,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:44:31.711956');
INSERT INTO "solves" VALUES(46,10,31,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:44:38.544589');
INSERT INTO "solves" VALUES(47,12,31,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:44:43.970264');
INSERT INTO "solves" VALUES(48,7,37,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:44:59.428191');
INSERT INTO "solves" VALUES(49,3,37,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:45:06.631370');
INSERT INTO "solves" VALUES(50,13,37,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:45:12.212577');
INSERT INTO "solves" VALUES(51,17,37,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:45:17.187316');
INSERT INTO "solves" VALUES(52,4,37,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:46:31.765707');
INSERT INTO "solves" VALUES(53,15,37,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:46:39.361428');
INSERT INTO "solves" VALUES(54,19,37,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:46:54.875021');
INSERT INTO "solves" VALUES(55,1,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:47:10.072429');
INSERT INTO "solves" VALUES(56,2,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:47:14.716940');
INSERT INTO "solves" VALUES(57,3,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:47:20.122295');
INSERT INTO "solves" VALUES(58,4,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:47:25.808120');
INSERT INTO "solves" VALUES(59,5,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:47:31.260125');
INSERT INTO "solves" VALUES(60,6,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:47:36.710159');
INSERT INTO "solves" VALUES(61,7,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:47:43.748275');
INSERT INTO "solves" VALUES(62,8,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:47:48.086548');
INSERT INTO "solves" VALUES(63,9,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:47:53.342136');
INSERT INTO "solves" VALUES(64,10,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:47:59.618812');
INSERT INTO "solves" VALUES(65,11,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:48:04.222842');
INSERT INTO "solves" VALUES(66,12,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:48:09.868609');
INSERT INTO "solves" VALUES(67,13,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:48:14.413048');
INSERT INTO "solves" VALUES(68,14,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:48:18.656731');
INSERT INTO "solves" VALUES(69,15,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:48:24.015482');
INSERT INTO "solves" VALUES(70,16,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:48:28.944577');
INSERT INTO "solves" VALUES(71,21,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:48:37.390315');
INSERT INTO "solves" VALUES(72,19,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:48:50.246706');
INSERT INTO "solves" VALUES(73,17,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:48:57.871024');
INSERT INTO "solves" VALUES(74,18,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:49:30.836210');
INSERT INTO "solves" VALUES(75,20,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:49:35.898053');
INSERT INTO "solves" VALUES(76,22,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:49:40.864175');
INSERT INTO "solves" VALUES(77,23,2,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:49:44.989254');
INSERT INTO "solves" VALUES(78,2,16,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:50:02.234985');
INSERT INTO "solves" VALUES(79,3,16,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:50:07.177026');
INSERT INTO "solves" VALUES(80,7,16,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:50:14.049173');
INSERT INTO "solves" VALUES(81,18,16,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:50:45.811296');
INSERT INTO "solves" VALUES(82,3,7,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:50:59.536972');
INSERT INTO "solves" VALUES(83,8,7,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:51:05.340328');
INSERT INTO "solves" VALUES(84,2,38,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:51:30.844374');
INSERT INTO "solves" VALUES(85,5,38,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:51:34.787149');
INSERT INTO "solves" VALUES(86,8,38,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:52:20.074145');
INSERT INTO "solves" VALUES(87,3,50,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:52:58.197956');
INSERT INTO "solves" VALUES(88,5,24,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:53:12.952062');
INSERT INTO "solves" VALUES(89,1,24,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:53:17.889013');
INSERT INTO "solves" VALUES(90,3,24,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:53:22.288528');
INSERT INTO "solves" VALUES(91,10,21,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:53:44.140381');
INSERT INTO "solves" VALUES(92,16,21,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:53:53.853304');
INSERT INTO "solves" VALUES(93,2,18,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:55:54.670248');
INSERT INTO "solves" VALUES(94,3,18,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:55:59.029460');
INSERT INTO "solves" VALUES(95,1,25,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 06:56:12.497964');
INSERT INTO "solves" VALUES(96,3,15,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:54:24.377028');
INSERT INTO "solves" VALUES(97,5,15,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:54:30.275074');
INSERT INTO "solves" VALUES(98,17,17,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:54:48.914245');
INSERT INTO "solves" VALUES(99,3,17,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:54:54.937090');
INSERT INTO "solves" VALUES(100,5,23,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:55:28.696755');
INSERT INTO "solves" VALUES(101,1,55,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:56:18.750052');
INSERT INTO "solves" VALUES(102,3,55,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:56:23.857396');
INSERT INTO "solves" VALUES(103,6,105,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:56:40.357906');
INSERT INTO "solves" VALUES(104,7,19,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:57:40.536685');
INSERT INTO "solves" VALUES(105,10,19,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:57:44.286630');
INSERT INTO "solves" VALUES(106,3,30,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:57:57.751860');
INSERT INTO "solves" VALUES(107,19,47,2130706433,'MARKED_AS_SOLVED_BY_ADMIN','2017-04-02 07:58:12.942608');
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
