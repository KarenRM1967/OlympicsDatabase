-- Karen Rees-Milton Assignment1 23 Jan 2018
-- Winter Olympics: Interesting facts

DROP DATABASE IF EXISTS ReesMiltonWinterOlympics;
CREATE DATABASE ReesMiltonWinterOlympics;
USE ReesMiltonWinterOlympics;

CREATE TABLE hostCountry
(
	hostGamesID		INT			PRIMARY KEY,
    hostCountry		CHAR(3)		NOT NULL,
    hostNoNations	INT,
    hostCountryWon	BOOL,
    hostYear		YEAR		UNIQUE,
    hostCity		VARCHAR(30)
);

INSERT INTO hostCountry VALUES
(1,'FRA', 16, 0, 1924, 'Chamonix'),
(2,'CHE', 25, 0, 1928, 'St Moritz'),
(3,'USA', 17, 1, 1932, 'Lake Placid'),
(4,'DEU', 28, 0, 1936, 'Garmisch-Partenkirchen'),
(5,'CHE', 28, 0, 1948, 'St Moritz'),
(6,'NOR', 30, 1, 1952, 'Oslo'),
(7,'ITA', 32, 0, 1956, "Cortina d'Ampezzo"),
(8,'USA', 30, 0, 1960, 'Squaw Valley'),
(9,'AUT', 36, 0, 1964, 'Innsbruck'),
(10,'FRA', 37, 0, 1968, 'Grenoble'),
(11,'JPN', 35, 0, 1972, 'Sapporo'),
(12,'AUT', 37, 0, 1976, 'Insbruck'),
(13,'USA', 37, 0, 1980, 'Lake Placid'),
(14,'YUG', 49, 0, 1984, 'Sarajevo'),
(15,'CAN', 57, 0, 1986, 'Calgary'),
(16,'FRA', 64, 0, 1992, 'Albertville'),
(17,'NOR', 67, 0, 1994, 'Lillehammer'),
(18,'JPN', 72, 0, 1998, 'Nagano'),
(19,'USA', 78, 0, 2002, 'Salt Lake City'),
(20,'ITA', 80, 0, 2006, 'Turin'),
(21,'CAN', 82, 1, 2010, 'Vancouver'),
(22,'RUS', 88, 0, 2014, 'Sochi');

CREATE TABLE venue
(
	venueID									INT			PRIMARY KEY,
    venueName								VARCHAR(30),
    venueConstructionCost_millionCdnDollar	INT,
    venueArchitect							VARCHAR(30),
    hostGamesID								INT,
    constraint 	host_fk_venue
		foreign key (hostGamesID)
        references hostCountry(hostGamesID)
);

INSERT INTO venue VALUES
(1, 'Zetra Ice Hall', 24, 'Lidumil Alikalfic Dusan Dapa', 14),
(2, 'Bolshoy Ice Dome', 233, 'Mostovik', 22),
(3, 'Olympic Oval', 39, 'Graham McCourt Architects', 15),
(4, 'Whistler Sliding Centre', 105, 'Stantec Architecture Limited', 21),
(5, 'Soldier Hollow', 248, 'Salt Lake Organizing Committee', 19),
(6, 'Hamar Olympic Amphitheatre', 36, 'Niels Torp Biong & Biong', 17),
(7, 'Richmond Olympic Oval', 178, 'CannonDesign', 21);

SELECT * FROM hostCountry
	ORDER BY hostCountry ASC;

SELECT 
	venueName, 
	hostGamesID, 
	venueConstructionCost_millionCdnDollar 
		FROM venue
        WHERE venueConstructionCost_millionCdnDollar > 100;
        
        

