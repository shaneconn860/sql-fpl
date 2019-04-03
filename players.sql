#Create table

CREATE TABLE player_basics(
player_id serial PRIMARY KEY;
player_name VARCHAR(100),
team VARCHAR(100),
position VARCHAR(100));

#Change table name

ALTER TABLE fdr
RENAME TO player_basics;

#Insert data inn-to table

INSERT INTO player_basics (player_id, player_name, team, position) VALUES
('Laporte', 'Man City', 'Defender'),
('Salah', 'Liverpool', 'Midfielder'),
('Mane', 'Liverpool', 'Midfielder');

#Create new table

CREATE TABLE player_stats(
player_name VARCHAR(100),
minutes INTEGER NOT NULL,
points INTEGER NOT NULL,
goals INTEGER NOT NULL,
assists INTEGER NOT NULL,
bonus_points INTEGER NOT NULL);

#Insert data inn-to new TABLE

INSERT INTO player_stats (player_name, minutes, points,
goals, assists, bonus_points) VALUES
('Laporte', 2683, 179, 0,	10,	27),
('Salah', 2733,	210, 17, 10, 15),
('Mane', 2536, 188, 17,	3, 21);

#Add column to TABLE

ALTER TABLE player_stats
ADD COLUMN player_id serial PRIMARY KEY;

#Remove column fromtable

ALTER TABLE player_stats
drop column bonus_points;
