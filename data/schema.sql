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
CREATE TABLE config (
	id INTEGER NOT NULL, 
	"key" TEXT, 
	value TEXT, 
	PRIMARY KEY (id)
);
CREATE TABLE pages (
	id INTEGER NOT NULL, 
	route VARCHAR(80), 
	html TEXT, 
	PRIMARY KEY (id), 
	UNIQUE (route)
);
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
CREATE TABLE tracking (
	id INTEGER NOT NULL, 
	ip BIGINT, 
	team INTEGER, 
	date DATETIME, 
	PRIMARY KEY (id), 
	FOREIGN KEY(team) REFERENCES teams (id)
);
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
