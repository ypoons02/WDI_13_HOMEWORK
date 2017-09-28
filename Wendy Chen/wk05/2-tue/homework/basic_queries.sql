-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
select * from authors;

-- Get just the name and birth year of all authors
select name, birth_year from authors;

-- Get all authors born in the 20th centruy or later
select name, birth_year from authors where birth_year > 1900;

-- Get all authors born in the USA
select * from authors  where nationality like 'United States of America';

-- Get all books published on 1985
select * from books where publication_date = 1985;

-- Get all books published before 1989
select * from books where publication_date < 1989;

-- Get just the title of all books.
select title from books;

-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
select publication_date from books where title like 'A Dance with Dragons' or title like 'Cry when you realize how long %';

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
select title from books where title like '%the%';

-- Add yourself as an author
INSERT INTO authors  VALUES (9, 'Wendy', 'Singapore',1988);

-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books(title, publication_date, author_id) VALUES ('Dream of the W', 1750, 1001);
INSERT INTO books(title, publication_date, author_id) VALUES ('Dream of the LX', 1751, 1002);

-- Update one of your books to have a new title
UPDATE books SET title = 'Dream of the W1' where author_id = 1001;

-- Delete your books
delete from books where author_id = 1001;
delete from books where author_id = 1002;

-- Delete your author entry
delete from authors where name like 'Wendy';
