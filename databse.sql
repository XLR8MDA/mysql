
--Create database
create database record_company;

--use a database out of many present
use record_company;

--create a table to store artists names
create table artists(
    artist_id int not null AUTO_INCREMENT,
    artist_name varchar(20),
    PRIMARY key(artist_id)
);

--create a table to store songs data
create table songs(
    song_id INT  not null AUTO_INCREMENT,
    song_name varchar(20),
    artist_id int not null,
    Foreign Key (artist_id) REFERENCES artists(artist_id),
    PRIMARY key(song_id)
);

-- alter a predefined songs table
alter table songs Add year_release INT;


--insert into artists TABLE
insert into artists(artist_name)
values ('Neha Kakkar'),('Solmon Bhoi'),('nusrat FAK'),('Rahat FAK');  -- insert multiple data using comma 

-- displays all items from artists table
select * from artists;  

-- displays only artist_name from artist table
select artist_name from artists; 

-- rename column names during display using 'as' keyword
select artist_id as "Global_Ranking", artist_name as "Singer" from artists; 

--insert into songs table
INSERT INTO songs(song_name,artist_id,year_release)
values ('mai tera bf',1,2016),('teri aankhon',3,1998),('meri bheegi bheegi si',4,1988),('hero tera',2,2016);

--inserting this will give error as Rahat FAK song name is greater than 20 characters hence we must modify or alter the colum property

alter table songs modify column song_name VARCHAR(30);

--running back the above insert commands
INSERT INTO songs(song_name,artist_id,year_release)
values ('mai tera bf',1,2016),('teri aankhon',3,1998),('meri bheegi bheegi si',4,1988),('hero tera',2,2016);

--display these entries
select * from songs;

-- hero tera song was released in 2020 so update the release year for the song
update songs
set year_release=2000
where song_name='hero tera';  -- succesfully change

--joins

select * from artists
inner join songs on artists.artist_id=songs.artist_id  --( inner join shows only values which are present in both tables)
order by song_id DESC;

