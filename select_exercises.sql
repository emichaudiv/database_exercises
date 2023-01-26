use albums_db;
describe albums;
select * from albums;
-- There are 31 rows
select distinct artist from albums;
-- There are 23 artists
describe albums;
-- ID is the primary key.
select min(release_date), max(release_date) from albums;
-- Oldest 1967, Newest 2011
select * from albums where artist = 'Pink Floyd';
-- The Dark Side of The Moon, The Wall
select * from albums where name = 'Sgt. Pepper\'s Lonely Hearts Club Band';
-- 1967
select genre from albums where name = 'Nevermind';
-- Grunge, Alternative rock
select * from albums where release_date between 1990 and 1999;
-- id no. 5,12,13,14,19,21,22,26,27,28,30
select * from albums where sales < 20;
-- id no. 9,11,15,17,19,21,22,23,24,25,26,28,29
select * from albums where genre = 'Rock';
-- The latter didn't include other forms of rock due to the search be specified only to 'rock' 
