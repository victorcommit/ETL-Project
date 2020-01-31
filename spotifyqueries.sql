-- Create tables for raw data to be loaded into 
DROP TABLE IF EXISTS spotify_list;
DROP TABLE IF EXISTS hotstuff;

CREATE TABLE spotify_list (
    id INT PRIMARY KEY,
    title VARCHAR,
    artist VARCHAR,
    top_genre VARCHAR,
	year INT
    );

CREATE TABLE hotstuff ( 
    url VARCHAR,
    weekID DATE ,
    week_position INT,
    song VARCHAR,
    performer VARCHAR,
    songID VARCHAR
    );
	
	
SELECT hotstuff.url,
        hotstuff.weekid,
       	hotstuff.week_position,
        hotstuff.song,
        hotstuff.performer,
        hotstuff.songID
FROM hotstuff
JOIN spotify_list
ON hotstuff.Performer = spotify_list.artist;

SELECT* FROM spotify_list;

