CREATE TABLE bdi.boardInfo(
	bi_num NUMBER PRIMARY KEY,
	bi_title VARCHAR2(300) NOT NULL,
	bi_content VARCHAR2(4000) NOT NULL,
	ui_num NUMBER NOT NULL,
	credat CHAR(8) NOT NULL,
	cretim CHAR(6) NOT NULL,
	moddat CHAR(8) NOT NULL,
	modtim CHAR(6) NOT NULL,
	active CHAR(1) DEFAULT '1',
	CONSTRAINTS fk_ui_num FOREIGN KEY(ui_num) 
	REFERENCES userInfo(ui_num)
);

SELECT * FROM boardInfo;