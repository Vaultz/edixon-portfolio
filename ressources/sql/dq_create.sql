

create table account (
	idaccount		int,
	username		varchar(16),
	password		varchar(256),
	score			int default 0,
	rank			int,
	PRIMARY KEY (idaccount, username)
);

create table friendlist (
	idaccount		int,
	idfriend		int,
	PRIMARY KEY (idaccount, idfriend),
	FOREIGN KEY (idaccount)
		REFERENCES account(idaccount),
	FOREIGN KEY (idfriend)
		REFERENCES account(idaccount)
);

create table theme (
	idtheme			int,
	theme			varchar(64),
	PRIMARY KEY (idtheme)
);

create table question (
	idquestion		int,
	idtheme			int,
	question		varchar(128),
	answerOne		varchar(64),
	answerTwo		varchar(64),
	answerThree		varchar(64),
	answerFour		varchar(64),
	rightAnswer		int,
	difficulte		int,
	PRIMARY KEY (idquestion),
	FOREIGN KEY (idtheme)
		REFERENCES theme(idtheme)
);

create table user_feedback_question (
	idaccount		int,
	idquestion		int,
	feedback		int,
	PRIMARY KEY (idaccount, idquestion),
	FOREIGN KEY (idaccount)
		REFERENCES account(idaccount),
	FOREIGN KEY (idquestion)
		REFERENCES question(idquestion)
);

create table matchquiz (
	idmatch			int PRIMARY KEY,
	idwinner		int,
	FOREIGN KEY (idwinner)
		REFERENCES account(idaccount)
);

create table roundquiz (
	idround			int,
	idmatch			int,
	idtheme			int,
	PRIMARY KEY (idround),
	FOREIGN KEY (idmatch)
		REFERENCES matchquiz(idmatch),
	FOREIGN KEY (idtheme)
		REFERENCES theme(idtheme)
);

create table round_in_match (
	idround			int,
	idmatch			int,
	PRIMARY KEY (idround, idmatch),
	FOREIGN KEY (idround)
		REFERENCES roundquiz(idround),
	FOREIGN KEY (idmatch)
		REFERENCES matchquiz(idmatch)
);

create table question_in_round (
	idquestion		int,
	idround			int,
	PRIMARY KEY(idquestion, idround),
	FOREIGN KEY (idquestion)
		REFERENCES question(idquestion),
	FOREIGN KEY (idround)
		REFERENCES roundquiz(idround)
);

create table participates (
	idplayer		int,
	idmatch			int,
	PRIMARY KEY (idplayer, idmatch),
	FOREIGN KEY (idplayer)
		REFERENCES account(idaccount),
	FOREIGN KEY (idmatch)
		REFERENCES matchquiz(idmatch)
);

create table answers (
	idplayer		int,
	idmatch			int,
	idround			int,
	idquestion		int,
	answer			int,
	PRIMARY KEY(idplayer, idmatch, idround, idquestion),
	FOREIGN KEY(idplayer)
		REFERENCES account(idaccount),
	FOREIGN KEY(idmatch)
		REFERENCES matchquiz(idmatch),
	FOREIGN KEY(idround)
		REFERENCES roundquiz(idround),
	FOREIGN KEY(idquestion)
		REFERENCES question(idquestion)
);

insert into account values(default, 'admin', 'admin', 0, 0);
