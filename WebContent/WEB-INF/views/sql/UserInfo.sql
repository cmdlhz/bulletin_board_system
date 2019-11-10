CREATE TABLE bdi.userInfo(
	ui_num NUMBER PRIMARY KEY,
	ui_name VARCHAR2(30) NOT NULL,
	ui_id VARCHAR2(30) NOT NULL,
	ui_pwd VARCHAR2(30) NOT NULL,
	credat CHAR(8) NOT NULL,
	cretim CHAR(6) NOT NULL,
	moddat CHAR(8) NOT NULL,
	modtim CHAR(6) NOT NULL,
	active CHAR(1) DEFAULT '1'
);

SELECT * FROM userInfo;