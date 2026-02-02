DROP TABLE IF EXISTS MatchOfficialAssignment;
DROP TABLE IF EXISTS PlayingXI;
DROP TABLE IF EXISTS SquadSelection;
DROP TABLE IF EXISTS Inning;
DROP TABLE IF EXISTS MatchOver;
DROP TABLE IF EXISTS TodayMatch;
DROP TABLE IF EXISTS TeamCoachAssignment;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Coach;
DROP TABLE IF EXISTS Umpire;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Venue;
DROP TABLE IF EXISTS Tournament;
DROP TABLE IF EXISTS Country;

CREATE TABLE IF NOT EXISTS Country ;
CREATE TABLE IF NOT EXISTS Coach ;
CREATE TABLE IF NOT EXISTS Umpire; 
CREATE TABLE IF NOT EXISTS Venue ;
CREATE TABLE IF NOT EXISTS Team ;
CREATE TABLE IF NOT EXISTS Player; 
CREATE TABLE IF NOT EXISTS Tournament ;
CREATE TABLE IF NOT EXISTS TodayMatch ;
CREATE TABLE IF NOT EXISTS TeamCoachAssignment ;
CREATE TABLE IF NOT EXISTS SquadSelection ;
CREATE TABLE IF NOT EXISTS MatchOfficialAssignment ;
CREATE TABLE IF NOT EXISTS PlayingXI ;
CREATE TABLE IF NOT EXISTS MatchOver ;
CREATE TABLE IF NOT EXISTS Inning ;


 create database sport;
 create schema if not exists sport;
 drop schema if exists sport;
 use sport;

/* 1st table*/
create table  Country(
countryId int PRIMARY KEY ,
name varchar(50)  NOT NULL
);


/* 2nd table*/

create table Umpire(
    umpirId int NOT NULL    PRIMARY KEY,
    firstName varchar(50)   NOT NULL,
    lastName varchar(50)    NOT NULL,
    panel  varchar(40)      NOT NULL,
    eMail  varchar(200)     NOT NULL UNIQUE,
    countryId  int          NOT NULL,
    CONSTRAINT FK_Umpire_country
    FOREIGN KEY (countryId) REFERENCES country(countryId)
        
);
/* 3rd table*/
create table Coach(
 coachId  int NOT NULL      PRIMARY KEY,
 firstName  varchar(50)      NOT NULL,
 lastName  varchar(50)       NOT NULL,
 eMail  varchar(200)         NOT NULL UNIQUE,
 phoneNumber   varchar(300)  NOT NULL UNIQUE,
 countryId     int               NOT NULL,
  CONSTRAINT FK_COACH_COUNTRY
  FOREIGN KEY (countryId) REFERENCES country(countryId)
 
);
/* 4th table*/
create table Venue(
  venueId int NOT NULL PRIMARY KEY,
  name   varchar(50) NOT NULL,
  city varchar(60) NOT NULL,
  country  varchar(50) NOT NULL,
  capacity  int  NOT NULL,
  pitchType varchar(50) NOT NULL,
  floodLights bool NOT NULL, 
  countryId int NOT NULL,
  CONSTRAINT FK_Venue_Country
  FOREIGN KEY (countryId) REFERENCES country(countryId)

);

/* 5th table*/
 create table Team(
     teamId        int NOT NULL PRIMARY KEY,
     teamCode       int NOT NULL UNIQUE,
     name           varchar(60) NOT NULL,
     foundedYear     smallint NOT NULL,
     iccRanking     smallint NOT NULL,
     isNationalSide  bool NOT NULL,
     countryId       int NOT NULL, 
     CONSTRAINT FK_Team_Country
     FOREIGN KEY (countryId) REFERENCES Country(countryId)
 );
 
 /* 6th table*/
 create table TeamCoachAssignment(
         startDate  date NOT NULL,
         endDate date NOT NULL,
         isHeadCoach bool NOT NULL,
         assignmentId int NOT NULL,
         coachId int NOT NULL,
         teamId  int NOT NULL
 
 );
 
 /* 7th table*/
create table Player(
    playerId     int NOT NULL     PRIMARY KEY,
    firstName     varchar(60)      NOT NULL,
    lastName      VARCHAR(50)      NOT NULL,
    dateOfBirth   date             NOT NULL,
    shirtNumber   varchar(50)      NOT NULL UNIQUE,
    role          varchar (50)     NOT NULL,
    eMail         varchar(200)     NOT NULL UNIQUE,
    teamId         int             NOT NULL,
    countryId      int             NOT NULL,
    CONSTRAINT FK_Player_Country
    FOREIGN KEY (countryId) REFERENCES Country(countryId),
    CONSTRAINT FK_Player_Team
    FOREIGN KEY (teamId) REFERENCES Team(teamId)
);


 /* 8th table*/
 create table Tournament(
      tournamentId int NOT NULL PRIMARY KEY,
      name  varchar (60) NOT NULL,
      year  year  NOT NULL, 
      format varchar(50) NOT NULL,
      startDate date  NOT NULL,
      endDate  date NOT NULL
 
 );
 
 /* 12th table*/
 create table TodayMatch(
      TodaymatchId   int NOT NULL PRIMARY KEY,
       matchDateTime datetime     NOT NULL UNIQUE , 
       resultType   varchar (50)  NOT NULL,
       tossDecision  varchar(50)  Not null, 
       overPerInning   decimal (4,1)   NOT NULL,
       tournamentId    int NOT NULL,
       venueId        int NOT NULL,
       teamId         int NOT NULL,
       
        CONSTRAINT FK_TodayMatch_Tournament
        FOREIGN KEY (tournamentId) REFERENCES Tournament(tournamentId),
       
		CONSTRAINT FK_TodayMatch_Venue
        FOREIGN KEY (venueId) REFERENCES Venue(venueId),
        
		CONSTRAINT FK_TodayMatch_Team
        FOREIGN KEY (teamId) REFERENCES Team(teamId)
      
 );

 /* 9th table*/
 create table SquadSelection(
        selectedOn  date NOT NULL,
        shirtNumber  int NOT NULL,
        isCaptain  bool NOT NULL,
        isViceCaptain  bool NOT NULL,
        isWicketKeeper bool NOT NULL,
        tournamentId  int NOT NULL,
        playerId    int NOT NULL,
        teamId    int NOT NULL,
        
        CONSTRAINT FK_SquadSelection_Tournament
        FOREIGN KEY (tournamentId) REFERENCES Tournament(tournamentId),
        CONSTRAINT FK_SquadSelection_PlayerId
        FOREIGN KEY (PlayerId) REFERENCES Player(PlayerId),
         CONSTRAINT FK_SquadSelection_Team
        FOREIGN KEY (teamId) REFERENCES Team(teamId)
 ); 
 

 
 /* 11th table*/

 create table PlayingXI(
        battingPossition smallint   NOT NULL,
        bowlingOrder   smallint NOT NULL,
        isSubstitute   bool NOT NULL,
        TodaymatchId      int NOT NULL,
        playerId     int NOT NULL,
        teamId       int NOT NULL,
        CONSTRAINT FK_PlayingXI_TodayMatch
        FOREIGN KEY (TodaymatchId) REFERENCES TodayMatch(TodayMatchId),
        
         CONSTRAINT FK_PlayingXI_Player
        FOREIGN KEY (PlayerId) REFERENCES Player(PlayerId),
        
         CONSTRAINT FK_PlayingXI_Team
        FOREIGN KEY (teamId) REFERENCES Team(teamId)
         
 
 );
 
 
 /* 10th table*/
  create table MatchOfficialAssignment(
          assignmentId       int  NOT NULL PRIMARY KEY,
          role               varchar(50)  NOT NULL,
          assignedAt        datetime NOT NULL,
          umpirId         int NOT NULL,
          TodaymatchId     int NOT NULL,
          
		CONSTRAINT FK_MatchOfficialAssignment_Umpire
        FOREIGN KEY (umpirId) REFERENCES Umpire(umpirId),
  
       	CONSTRAINT FK_MatchOfficialAssignment_TodayMatch
        FOREIGN KEY (TodaymatchId) REFERENCES TodayMatch(TodaymatchId)
  );
 
 /* 13th table*/
 create table MatchOver(
		 matchOverId int NOT NULL PRIMARY KEY,
         overNumber   int NOT NULL,
         maiden       bool  NULL,
         runsInOver   int NULL
         
 );
 
 /* 14th table*/
 create table Inning(
      inningNumber   int  NOT NULL,
      run            int NULL,
      wicket         int NULL,
      overs          decimal(4,1) NOT NULL,
      targetRun      smallint NOT NULL,
      declared       bool NULL,
      TodaymatchId        int NOT NULL,
      matchOverId       int NOT NULL,
      
        CONSTRAINT FK_Inning_TodayMatch
        FOREIGN KEY (TodaymatchId) REFERENCES TodayMatch(TodaymatchId),
        
		CONSTRAINT FK_Inning_MatchOver
        FOREIGN KEY (matchOverId) REFERENCES MatchOver(matchOverId)
 );


