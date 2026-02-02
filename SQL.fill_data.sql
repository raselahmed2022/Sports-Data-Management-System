/* country table*/

INSERT INTO Country (countryId, name) VALUES (1, 'Belgium');
INSERT INTO Country (countryId, name) VALUES (2, 'Netherlands');
INSERT INTO Country (countryId, name) VALUES (3, 'France');
INSERT INTO Country (countryId, name) VALUES (4, 'Germany');
INSERT INTO Country (countryId, name) VALUES (5, 'Spain');  
INSERT INTO Country (countryId, name) VALUES (6, 'Portugal');
INSERT INTO Country (countryId, name) VALUES (7, 'Italy');
INSERT INTO Country (countryId, name) VALUES (8, 'England');
INSERT INTO Country (countryId, name) VALUES (9, 'USA');
INSERT INTO Country (countryId, name) VALUES (10, 'Brazil');
INSERT INTO Country (countryId, name) VALUES (11, 'Argentina');
INSERT INTO Country (countryId, name) VALUES (12, 'Canada');
INSERT INTO Country (countryId, name) VALUES (13, 'Australia');
INSERT INTO Country (countryId, name) VALUES (14, 'Japan');
INSERT INTO Country (countryId, name) VALUES (15, 'Sweden');

/*team*/

INSERT INTO Umpire (umpirId, firstName, lastName, panel, eMail, countryId) VALUES
(1,  'Peter',   'Johnson',  'Elite',         'peter.johnson@umpires.com',      7),  
(2,  'Mark',    'Vermeer',  'International', 'mark.vermeer@umpires.com',       11),  
(3,   'Jean',    'Dupont',   'International', 'jean.dupont@umpires.com',        4),  
(4,  'Hans',    'Müller',   'Elite',         'hans.mueller@umpires.com',       10),  
(5,   'Carlos',  'Garcia',   'International', 'carlos.garcia@umpires.com',      14),  
(6,   'Rui',     'Silva',    'Domestic',      'rui.silva@umpires.com',          6),  
(7,  'Marco',   'Rossi',    'Elite',         'marco.rossi@umpires.com',        3),  
(8,  'David',   'Brown',    'International', 'david.brown@umpires.com',        8),   
(9,   'John',    'Smith',    'Domestic',      'john.smith@umpires.com',         9),  
(10,  'Paulo',   'Souza',    'Elite',         'paulo.souza@umpires.com',        3),   
(11,  'Diego',   'Lopez',    'International', 'diego.lopez@umpires.com',        2), 
(12,  'Alex',    'Martin',   'Domestic',      'alex.martin@umpires.com',        12), 
(13,  'Liam',    'Wilson',   'International', 'liam.wilson@umpires.com',        13), 
(14,  'Kenji',   'Sato',     'Elite',         'kenji.sato@umpires.com',         5), 
(15,  'Rahul',   'Sharma',   'International', 'rahul.sharma@umpires.com',       15);







/*coach table*/

INSERT INTO Coach (coachId, firstName, lastName, eMail, phoneNumber, countryId) VALUES
(1,  'Thomas',   'De Smet',    'thomas.desmet@coaches.com',    '+32-470-100001', 6),   
(2,  'Jeroen',   'Bakker',     'jeroen.bakker@coaches.com',    '+31-6-20000002', 2),   
(3,  'Claude',   'Martin',     'claude.martin@coaches.com',    '+33-6-30000003', 1),   
(4,  'Stefan',   'Keller',     'stefan.keller@coaches.com',    '+49-151-4000004', 6),  
(5,  'Miguel',   'Lopez',      'miguel.lopez@coaches.com',     '+34-600000005', 12),   
(6,  'Joao',     'Ferreira',   'joao.ferreira@coaches.com',    '+351-910000006', 10),   
(7,  'Luca',     'Bianchi',    'luca.bianchi@coaches.com',     '+39-3400000007', 7),   
(8,  'Richard',  'Evans',      'richard.evans@coaches.com',    '+44-7700000008', 8),   
(9,  'Michael',  'Taylor',     'michael.taylor@coaches.com',   '+1-555-0000009', 9),   
(10, 'Roberto',  'Silva',      'roberto.silva@coaches.com',    '+55-21-90000010', 4), 
(11, 'Javier',   'Gomez',      'javier.gomez@coaches.com',     '+54-9-110000011', 11), 
(12, 'Daniel',   'Clark',      'daniel.clark@coaches.com',     '+1-604-70000012', 5), 
(13, 'Ethan',    'Hughes',     'ethan.hughes@coaches.com',     '+61-410000013', 13),   
(14, 'Taro',     'Kobayashi',  'taro.kobayashi@coaches.com',   '+81-80-70000014', 14), 
(15, 'Vikram',   'Patel',      'vikram.patel@coaches.com',     '+91-980000015', 15);   

/* venue  table*/
INSERT INTO Venue (venueId, name, city, country, capacity, pitchType, floodLights, countryId) VALUES
(1,  'King Baudouin Stadium',     'Brussels',     'Belgium',     50000, 'Grass',        TRUE,  5),
(2,  'Johan Cruyff Arena',        'Amsterdam',    'Netherlands', 55000, 'Hybrid',       TRUE,  8),
(3,  'Stade de France',           'Paris',        'France',      80000, 'Grass',        TRUE,  3),
(4,  'Olympiastadion Berlin',     'Berlin',       'Germany',     74000, 'Grass',        TRUE,  12),
(5,  'Santiago Bernabeu',         'Madrid',       'Spain',       81000, 'Hybrid',       TRUE,  1),
(6,  'Estadio da Luz',            'Lisbon',       'Portugal',    65000, 'Grass',        TRUE,  15),
(7,  'San Siro',                  'Milan',        'Italy',       80000, 'Grass',        TRUE,  7),
(8,  'Wembley Stadium',           'London',       'England',     90000, 'Hybrid',       TRUE,  2),
(9,  'MetLife Stadium',           'New York',     'USA',         82500, 'Artificial',   TRUE,  9),
(10, 'Maracanã',                  'Rio de Janeiro','Brazil',     78000, 'Grass',        TRUE,  4),
(11, 'Estadio Monumental',        'Buenos Aires', 'Argentina',   70000, 'Grass',        TRUE,  11),
(12, 'BC Place',                  'Vancouver',    'Canada',      54000, 'Artificial',   TRUE,  10),
(13, 'ANZ Stadium',               'Sydney',       'Australia',   83500, 'Grass',        TRUE,  13),
(14, 'Tokyo National Stadium',    'Tokyo',        'Japan',       68000, 'Hybrid',       TRUE,  14),
(15, 'Narendra Modi Stadium',     'Ahmedabad',    'India',       132000,'Grass',        TRUE,  6);

/*Team table*/
INSERT INTO Team (teamId, teamCode, name, foundedYear, iccRanking, isNationalSide, countryId) VALUES
(1, 100, 'Belgium National Team',      1904, 20, TRUE, 8),
(2, 101, 'Netherlands National Team',  1889, 14, TRUE, 5),
(3, 102, 'France National Team',       1900, 3,  TRUE, 14),
(4, 103, 'Germany National Team',      1900, 4,  TRUE, 4),
(5, 104, 'Spain National Team',        1913, 2,  TRUE, 2),
(6, 105, 'Portugal National Team',     1914, 9,  TRUE, 11),
(7, 106, 'Italy National Team',        1898, 8,  TRUE, 7),
(8, 107, 'England National Team',      1863, 5,  TRUE, 1),
(9, 108, 'USA National Team',          1913, 11, TRUE, 9),
(10,109, 'Brazil National Team',       1914, 1,  TRUE, 10),
(11,110, 'Argentina National Team',    1893, 6,  TRUE, 6),
(12,111, 'Canada National Team',       1912, 23, TRUE, 12),
(13,112, 'Australia National Team',    1922, 25, TRUE, 13),
(14,113, 'Japan National Team',        1921, 18, TRUE, 3),
(15,114, 'India National Team',        1930, 22, TRUE, 15);

/*teamcoachassignment*/

INSERT INTO TeamCoachAssignment (assignmentId, startDate, endDate, isHeadCoach, coachId, teamId) VALUES
(1, '2020-01-01', '2021-12-31', TRUE, 1, 2),
(2, '2019-07-01', '2021-06-30', TRUE, 2, 3),
(3, '2021-03-15', '2022-12-31', TRUE, 3, 3),
(4, '2020-02-10', '2022-11-01', TRUE, 4, 12),
(5, '2020-04-01', '2023-03-31', TRUE, 5, 13),
(6, '2021-01-01', '2023-12-31', TRUE, 6, 6),
(7, '2018-05-01', '2021-05-01', TRUE, 7, 7),
(8, '2019-01-01', '2020-12-31', TRUE, 8, 8),
(9, '2020-09-10', '2022-09-10', TRUE, 9, 9),
(10,'2022-01-01', '2023-01-01', TRUE, 11, 4),
(11,'2020-06-01', '2022-06-01', TRUE, 10, 11),
(12,'2019-04-01', '2022-04-01', TRUE, 14, 12),
(13,'2021-05-15', '2023-05-15', TRUE, 13, 5),
(14,'2020-08-01', '2023-08-01', TRUE, 12, 14),
(15,'2021-07-01', '2023-07-01', TRUE, 15, 15);

/*player Table*/

INSERT INTO Player
(playerId, firstName, lastName, dateOfBirth, shirtNumber, role, eMail, teamId, countryId)
VALUES
(1,  'Liam',    'De Smet',   '1995-03-12', '7',  'Batsman',      'liam.desmet@players.com',      1, 1),
(2,  'Noah',    'Janssen',   '1993-07-25', '10', 'All-rounder',  'noah.janssen@players.com',     2, 1),
(3,  'Daan',    'Bakker',    '1997-01-05', '18', 'Bowler',       'daan.bakker@players.com',      2, 2),
(4,  'Sam',     'Vermeer',   '1994-11-20', '22', 'Wicketkeeper', 'sam.vermeer@players.com',      2, 2),
(5,  'Lucas',   'Martin',    '1992-02-15', '3',  'Batsman',      'lucas.martin@players.com',     3, 3),
(6,  'Hugo',    'Dupont',    '1996-09-09', '5',  'Bowler',       'hugo.dupont@players.com',      3, 3),
(7,  'Jonas',   'Keller',    '1991-06-21', '8',  'All-rounder',  'jonas.keller@players.com',     5, 6),
(8,  'Finn',    'Müller',    '1998-12-30', '23', 'Bowler',       'finn.mueller@players.com',     4, 4),
(9,  'Carlos',  'Lopez',     '1995-04-18', '9',  'Batsman',      'carlos.lopez@players.com',     5, 5),
(10, 'Miguel',  'Garcia',    '1993-10-03', '11', 'All-rounder',  'miguel.garcia@players.com',    5, 5),
(11, 'Joao',    'Silva',     '1999-01-27', '4',  'Bowler',       'joao.silva@players.com',       1, 6),
(12, 'Marco',   'Bianchi',   '1994-08-14', '12', 'Wicketkeeper', 'marco.bianchi@players.com',    3, 8),
(13, 'Harry',   'Evans',     '1992-05-09', '14', 'Batsman',      'harry.evans@players.com',      3, 8),
(14, 'Ethan',   'Taylor',    '1996-03-03', '19', 'Bowler',       'ethan.taylor@players.com',     4, 9),
(15, 'Ravi',    'Sharma',    '1990-07-30', '21', 'All-rounder',  'ravi.sharma@players.com',      5, 15);

/* tournament table*/

INSERT INTO Tournament (tournamentId, name, year, format, startDate, endDate) VALUES
(14,  'ICC Cricket World Cup',       2019, 'ODI', '2019-05-30', '2019-07-14'),
(6,  'ICC T20 World Cup',           2021, 'T20', '2021-10-17', '2021-11-14'),
(2,  'ICC Test Championship Final', 2021, 'Test', '2021-06-18', '2021-06-23'),
(4,  'Asia Cup',                    2022, 'T20', '2022-08-27', '2022-09-11'),
(5,  'Champions Trophy',            2017, 'ODI', '2017-06-01', '2017-06-18'),
(3,  'IPL Season 14',               2021, 'T20 League', '2021-04-09', '2021-10-15'),
(7,  'Big Bash League',             2022, 'T20 League', '2022-12-13', '2023-02-04'),
(8,  'Pakistan Super League',       2023, 'T20 League', '2023-02-13', '2023-03-19'),
(10,  'CPL Caribbean Premier League',2022, 'T20 League', '2022-08-31', '2022-10-01'),
(13, 'County Championship',         2021, 'Test League', '2021-04-08', '2021-09-29'),
(11, 'The Hundred',                 2022, 'T20', '2022-08-03', '2022-09-03'),
(12, 'Womens T20 World Cup',       2023, 'T20', '2023-02-10', '2023-02-26'),
(9, 'Under-19 World Cup',          2020, 'ODI', '2020-01-17', '2020-02-09'),
(1, 'Afro-Asia Cup',               2007, 'ODI', '2007-06-06', '2007-06-10'),
(15, 'World Test Championship',     2023, 'Test', '2023-06-07', '2023-06-11');

/*todymatch*/

INSERT INTO TodayMatch (todayMatchId, matchDateTime, resultType, tossDecision, overPerInning, tournamentId, venueId, teamId)
VALUES

(1,  '2023-01-10 14:00:00', 'Completed',  'Bat', 20, 2, 2, 2),
(2,  '2023-01-12 15:30:00', 'Completed',  'Bowl', 20, 3, 2, 3),
(3,  '2023-01-14 13:00:00', 'Completed',  'Bat', 50, 1, 1, 1),
(4,  '2023-01-16 16:00:00', 'Scheduled',  'Bowl', 20, 4, 4, 4),
(5,  '2023-01-18 18:00:00', 'Completed',  'Bat', 50, 5, 5, 5),
(6,  '2023-01-20 11:00:00', 'Abandoned',  'Bowl', 20, 6, 6, 6),
(7,  '2023-01-22 13:30:00', 'Completed',  'Bat', 50, 8, 8, 8),
(8,  '2023-01-24 14:00:00', 'Completed',  'Bowl', 20, 8, 8, 8),
(9,  '2023-01-26 17:00:00', 'Completed',  'Bat', 20, 9, 9, 9),
(10, '2023-01-28 19:30:00', 'Scheduled',  'Bowl', 50, 10, 10, 10),
(11, '2023-01-30 14:30:00', 'Completed',  'Bat', 20, 12, 11, 1),
(12, '2023-02-01 15:00:00', 'Completed',  'Bowl', 20, 13, 12, 2),
(13, '2023-02-03 11:30:00', 'Tie',        'Bat', 50, 13, 13, 3),
(14, '2023-02-05 12:00:00', 'Completed',  'Bat', 20, 14, 14, 4),
(15, '2023-02-07 16:30:00', 'Completed',  'Bowl', 20, 15, 15, 5);

/* squad selection*/

INSERT INTO SquadSelection(selectedOn, shirtNumber, isCaptain, isViceCaptain, isWicketKeeper, tournamentId, playerId, teamId)
VALUES

('2019-04-01', 7,  TRUE,  FALSE, FALSE, 1, 2, 1),
('2019-04-01', 10, FALSE, TRUE,  FALSE, 1, 2, 1),   
('2019-04-01', 4,  FALSE, FALSE, TRUE,  1, 11,1),   
('2019-04-02', 18, TRUE,  FALSE, FALSE, 1, 3, 2),   
('2019-04-02', 22, FALSE, TRUE,  FALSE, 1, 4, 2),   
('2019-04-03', 3,  TRUE,  FALSE, FALSE, 1, 5, 3),   
('2019-04-03', 5,  FALSE, FALSE, TRUE,  1, 6, 3),
('2021-09-15', 7,  TRUE,  FALSE, FALSE, 2, 1, 1),
('2021-09-15', 10, FALSE, TRUE,  FALSE, 2, 2, 1),
('2021-09-15', 4,  FALSE, FALSE, TRUE,  2, 11,1),
('2021-09-16', 18, TRUE,  FALSE, FALSE, 2, 3, 2),
('2021-09-16', 22, FALSE, TRUE,  FALSE, 2, 4, 2),
('2021-09-17', 3,  TRUE,  FALSE, FALSE, 2, 5, 3),
('2021-09-17', 5,  FALSE, FALSE, TRUE,  2, 6, 3),
('2021-09-17', 14, FALSE, TRUE,  FALSE, 2, 13,3);  

/*playingXI*/

INSERT INTO PlayingXI
(battingPossition, bowlingOrder, isSubstitute, TodaymatchId, playerId, teamId)
VALUES
-- Match 1 (Team 1)
(1,  1, FALSE, 2, 3, 1),
(2,  3, FALSE, 1, 2, 1),
(3,  5, FALSE, 1, 11,1),

-- Match 2 (Team 2)
(1,  2, FALSE, 2, 3, 2),
(2,  4, FALSE, 2, 4, 2),
(3,  6, TRUE,  2, 12,2),  -- substitute

-- Match 3 (Team 3)
(1,  1, FALSE, 3, 5, 3),
(2,  3, FALSE, 3, 6, 3),
(3,  6, TRUE,  3, 13,3),

-- Match 4 (Team 1 again)
(1,  1, FALSE, 4, 1, 1),
(2,  2, FALSE, 4, 2, 1),
(3,  5, TRUE,  4, 11,1),

-- Match 5 (Team 2 again)
(1,  2, FALSE, 5, 3, 2),
(2,  3, FALSE, 5, 4, 2),
(3,  4, TRUE,  5, 12,2);

/*matchofficialassignment*/

INSERT INTO MatchOfficialAssignment
(assignmentId, role, assignedAt, umpirId, TodaymatchId)
VALUES
(1,  'On-field Umpire',      '2023-01-09 10:00:00', 2, 3),
(2,  'On-field Umpire',      '2023-01-09 10:00:00', 2, 1),
(3,  'Third Umpire',         '2023-01-09 10:00:00', 3, 1),

(4,  'On-field Umpire',      '2023-01-11 11:00:00', 4, 2),
(5,  'Match Referee',        '2023-01-11 11:00:00', 5, 2),

(6,  'On-field Umpire',      '2023-01-13 12:00:00', 6, 3),
(7,  'Third Umpire',         '2023-01-13 12:00:00', 7, 3),
(8,  'Match Referee',        '2023-01-13 12:00:00', 8, 3),

(9,  'On-field Umpire',      '2023-01-15 09:30:00', 9, 4),
(10, 'On-field Umpire',      '2023-01-15 09:30:00', 10, 4),

(11, 'Match Referee',        '2023-01-17 14:00:00', 1, 5),
(12, 'Third Umpire',         '2023-01-17 14:00:00', 2, 5),

(13, 'On-field Umpire',      '2023-01-19 15:00:00', 3, 6),
(14, 'Match Referee',        '2023-01-19 15:00:00', 4, 6),
(15, 'Third Umpire',         '2023-01-19 15:00:00', 5, 6);

/*matchOver*/

INSERT INTO MatchOver (matchOverId, overNumber, maiden, runsInOver) VALUES
(4, 1,  FALSE, 6),
(2, 2,  FALSE, 8),
(3, 3,  TRUE,  0),
(1, 4,  FALSE, 10),
(5, 5,  FALSE, 3),
(6, 6,  FALSE, 7),
(7, 7,  TRUE,  0),
(8, 8,  FALSE, 5),
(9, 9,  FALSE, 12),
(10, 10, FALSE, 4),
(11, 11, TRUE,  0),
(12, 12, FALSE, 9),
(13, 13, FALSE, 6),
(14, 14, FALSE, 2),
(15, 15, TRUE,  0);

/*innings*/

INSERT INTO Inning
(inningNumber, run, wicket, overs, targetRun, declared, TodaymatchId, matchOverId)
VALUES
-- Match 1 (T20, TodaymatchId = 1)
(1, 160, 6, 20.0, 0,    FALSE, 2, 2),
(2, 158, 8, 20.0, 161,  FALSE, 1, 2),

-- Match 2 (T20, TodaymatchId = 2)
(1, 180, 5, 20.0, 0,    FALSE, 3, 2),
(2, 181, 7, 19.4, 181,  FALSE, 2, 4),

-- Match 3 (ODI, TodaymatchId = 3, 50 overs)
(1, 250, 9, 50.0, 0,    FALSE, 3, 5),
(2, 200,10, 40.3, 251,  FALSE, 3, 6),

-- Match 4 (T20, TodaymatchId = 4)
(1, 145, 7, 20.0, 0,    FALSE, 4, 7),
(2, 120, 9, 20.0, 146,  FALSE, 4, 8),

-- Match 5 (ODI, TodaymatchId = 5)
(1, 280, 6, 50.0, 0,    FALSE, 5, 6),
(2, 281, 4, 48.2, 281, FALSE, 5, 10),

-- Match 6 (T20, TodaymatchId = 6) – one declared innings
(1, 350, 4, 20.0, 0,    TRUE,  6, 11),
(2, 150, 5, 18.0, 351,  FALSE, 6, 12),

-- Match 7 (ODI, TodaymatchId = 7)
(1, 230, 5, 50.0, 0,    FALSE, 7, 13),
(2, 200, 8, 45.1, 231,  FALSE, 7, 14),

-- Match 8 (T20, TodaymatchId = 8) – declared is NULL
(1, 150,10, 18.5, 0,    NULL,  8, 15);














