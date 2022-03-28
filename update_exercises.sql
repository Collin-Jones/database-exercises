

UPDATE albums
SET sale = sale * 10;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * FROM albums;