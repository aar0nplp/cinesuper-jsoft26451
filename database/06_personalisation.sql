-- 12.1: Add 5 new movies (including Horror genre)
insert into genres (name) values ('Horror');

insert into movies (title, release_year, language, duration_min, description, poster_url, genre_id) values 
  ('The Conjuring', 2013, 'English', 112, 'Paranormal investigators work to help a family terrorized by a dark presence.', 'https://placehold.co/300x450/111827/ffffff?text=The+Conjuring', (select id from genres where name = 'Horror')),
  ('Kumbalangi Nights', 2019, 'Malayalam', 135, 'The complex relationship between four brothers in a coastal village in Kerala.', 'https://placehold.co/300x450/065f46/ffffff?text=Kumbalangi+Nights', (select id from genres where name = 'Drama')),
  ('Kantara', 2022, 'Kannada', 148, 'A fiery young man clashes with an upright forest officer over local traditions.', 'https://placehold.co/300x450/7c2d12/ffffff?text=Kantara', (select id from genres where name = 'Action')),
  ('Super Deluxe', 2019, 'Tamil', 176, 'Four different stories intertwine in a single day, leading to unexpected insights.', 'https://placehold.co/300x450/831843/ffffff?text=Super+Deluxe', (select id from genres where name = 'Drama')),
  ('Tumbbad', 2018, 'Hindi', 104, 'A mythological story about a search for a hidden ancestral treasure in a Maharashtrian village.', 'https://placehold.co/300x450/374151/ffffff?text=Tumbbad', (select id from genres where name = 'Horror'));

-- 12.2: Add a director column
alter table movies add column director text;

-- Update directors for some of the movies
update movies set director = 'James Wan' where title = 'The Conjuring';
update movies set director = 'Madhu C. Narayanan' where title = 'Kumbalangi Nights';
update movies set director = 'Rishab Shetty' where title = 'Kantara';
update movies set director = 'Thiagarajan Kumararaja' where title = 'Super Deluxe';
update movies set director = 'Rahi Anil Barve' where title = 'Tumbbad';
update movies set director = 'Jeethu Joseph' where title = 'Drishyam';
update movies set director = 'Christopher Nolan' where title in ('Memento', 'The Dark Knight', 'Inception', 'Interstellar', 'Oppenheimer');
