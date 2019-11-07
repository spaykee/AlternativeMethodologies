CREATE TABLE [user] (
    id INT PRIMARY KEY IDENTITY (1, 1),
	username VARCHAR(50) NOT NULL,
	password VARCHAR NOT NULL,
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
	code VARCHAR (50) NOT NULL,
	employer_code VARCHAR (50) NOT NULL,
    company VARCHAR(100) NOT NULL,
    phone VARCHAR(10),
	email VARCHAR(30),
	birth_date DATETIME NOT NULL,
	data_set INT,
	[enabled] BIT NOT NULL,
	[role] VARCHAR(30),
	team VARCHAR(100)
);


CREATE TABLE belbin_question (
    id INT PRIMARY KEY IDENTITY (1, 1),
	question VARCHAR(200) NOT NULL
);

CREATE TABLE belbin_answer  (
    id INT PRIMARY KEY IDENTITY (1, 1),
	question_id INT NOT NULL,
	answer VARCHAR(200) NOT NULL,
	belbin_id INT NOT NULL
);

CREATE TABLE belbin  (
    id INT PRIMARY KEY IDENTITY (1, 1),
	[code] VARCHAR(10) NOT NULL,
	[name] VARCHAR(50) NOT NULL,
	[group] VARCHAR(50) NOT NULL,
	strengths VARCHAR(200),
	weaknesses VARCHAR(200),
	[description] VARCHAR(1000)
);

CREATE TABLE user_belbin (
	id INT PRIMARY KEY IDENTITY (1, 1),
	[user_id] INT NOT NULL,
	question_id INT NOT NULL,
	answer_id INT NOT NULL,
	team_role VARCHAR(30),
	score INT NOT NULL
);

CREATE TABLE user_data_set (
	id INT PRIMARY KEY IDENTITY (1, 1),
	[user_id] INT NOT NULL,
	zodiac_id INT NOT NULL,
	zodiac_ascendant_id INT NOT NULL,
	numerology INT NOT NULL,
	belbin_first_role INT,
	belbin_second_role INT,
	MBTI_first_role INT,
	MBTI_second_role INT,
	eneagram_first_role INT,
	eneagram_second_role INT
);

CREATE TABLE zodiac (
	id INT PRIMARY KEY IDENTITY (1, 1),
	zodiac VARCHAR(20) NOT NULL,
	[description] VARCHAR(1000),
	date_range VARCHAR(100) NOT NULL,
	element VARCHAR(100) NOT NULL,
	quality VARCHAR(100) NOT NULL,
	color VARCHAR(100) NOT NULL,
	[day] VARCHAR(100) NOT NULL,
	ruler VARCHAR(100) NOT NULL,
	compatibility VARCHAR(100) NOT NULL,
	lucky_numbers VARCHAR(100) NOT NULL
);

CREATE TABLE zodiac_ascendant (
	id INT PRIMARY KEY IDENTITY (1, 1),
	zodiac INT NOT NULL,
	ascendant INT NOT NULL,
	time_range VARCHAR(100) NOT NULL
);

CREATE TABLE numerology (
	id INT PRIMARY KEY IDENTITY (1, 1),
	day_of_month INT NOT NULL,
	[description] VARCHAR(1000)
);

CREATE TABLE parameter (
	id INT PRIMARY KEY IDENTITY (1, 1),
	cluster VARCHAR(50) NOT NULL,
	value VARCHAR(50) NOT NULL,
	description VARCHAR
);

CREATE TABLE mbti (
	id INT PRIMARY KEY IDENTITY (1, 1),
	code VARCHAR(4) NOT NULL,
	[description] VARCHAR(1000) NOT NULL
);

CREATE TABLE mbti_question (
    id INT PRIMARY KEY IDENTITY (1, 1),
	question VARCHAR(200) NOT NULL
);

CREATE TABLE mbti_answer  (
    id INT PRIMARY KEY IDENTITY (1, 1),
	question_id INT NOT NULL,
	answer VARCHAR(200) NOT NULL,
	mbti_type VARCHAR(30)
);

CREATE TABLE user_mbti (
	id INT PRIMARY KEY IDENTITY (1, 1),
	[user_id] INT NOT NULL,
	question_id INT NOT NULL,
	answer_id INT NOT NULL,
	team_role VARCHAR(30),
	score INT NOT NULL
);

CREATE TABLE enneagram_question (
    id INT PRIMARY KEY IDENTITY (1, 1),
	question VARCHAR(200) NOT NULL
);

CREATE TABLE enneagram_answer  (
    id INT PRIMARY KEY IDENTITY (1, 1),
	question_id INT NOT NULL,
	answer VARCHAR(200) NOT NULL,
	eneagram_type INT NOT NULL
);

CREATE TABLE enneagram  (
    id INT PRIMARY KEY IDENTITY (1, 1),
	[name] VARCHAR(50) NOT NULL,
	[description] VARCHAR(1000) NOT NULL,
);

CREATE TABLE user_enneagram (
	id INT PRIMARY KEY IDENTITY (1, 1),
	[user_id] INT NOT NULL,
	question_id INT NOT NULL,
	answer_id INT NOT NULL,
	team_role VARCHAR(30),
	score INT NOT NULL
);

CREATE TABLE team  (
    id INT PRIMARY KEY IDENTITY (1, 1),
	[name] VARCHAR(50) NOT NULL
);

CREATE TABLE user_team  (
    id INT PRIMARY KEY IDENTITY (1, 1),
	[user_id] INT NOT NULL,
	team_id INT NOT NULL,
);