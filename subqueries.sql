-- get all invoices where the unit_price on the invoice_line is greater than $0.99 
SELECT *
from invoice
WHERE invoice_id IN (
  SELECT invoice_id 
  FROM invoice_line 
  WHERE unit_price > 0.99)

-- get all track names for playlist_id 5
SELECT * 
FROM playlist_track
WHERE playlist_id IN (
  SELECT playlist_id
  FROM playlist
  WHERE playlist_id = 5);

--get all tracks where genre is Comedy
SELECT * 
FROM track
WHERE genre_id IN (
  SELECT genre_id
  FROM genre
  WHERE genre_id = 22); -- genre_id 22 = comedy

--get all tracks where the album is fireball
SELECT * 
FROM track
WHERE album_id IN (
  SELECT album_id
  FROM album
  WHERE album_id = 60); --album_id 60 = fireball