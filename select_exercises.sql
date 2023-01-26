use albums_db;
describe albums;
select * from albums;
-- There are 31 rows
select artist from albums;
-- There are 31 artists
select name from albums;
-- Name is the primary key.
select release_date from albums;
-- Oldest 1967, Newest 2000
select * from albums where artist = 'Pink Floyd';
select * from albums where artist = 'The Beatles';
select * from albums where name = 'Nevermind';
select * from albums where release_date between 1990 and 1999;
select * from albums where sales < 20;
select * from albums where genre = 'Rock';
-- The latter didn't include other forms of rock due to the search be specified only to rocket
