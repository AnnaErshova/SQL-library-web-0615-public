# Game of THrones, seriously?!

def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year 
    FROM books 
      WHERE series_id = 1 
        ORDER BY year;"
  # ["Game of Thrones", 1996], ["A Clash of Kings", 1998], ["A Storm of Swords", 2000], ["First Book", 2002], ["Second Book", 2003], ["Third Book", 2005]] without series_id
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto 
    FROM characters 
      ORDER BY length(motto) DESC 
        LIMIT 1;"
  #MAX(LENGTH(motto))
end

def select_value_and_count_of_most_prolific_species # value == species
  "SELECT species, COUNT(species) 
    FROM characters 
      GROUP BY species 
        ORDER BY COUNT(species) DESC 
          LIMIT 1;"
  # group by to avoid double counting as per reading
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name 
    FROM series INNER JOIN authors 
      ON series.author_id = authors.id 
        INNER JOIN subgenres 
          ON series.subgenre_id = subgenres.id;"
  # authors <= series => subgenres
  # have to refer to table names as well as they repeat and confuse the query
  # http://stackoverflow.com/questions/10195451/sql-inner-join-with-3-tables
end

def select_series_title_with_most_human_characters
  "SELECT series.title 
    FROM series INNER JOIN characters
      ON series.id = characters.series_id
        WHERE species = 'human'
          GROUP BY series.title 
            ORDER BY count(*) DESC 
              LIMIT 1;"
end
# join: series <=> characters; series.id == characters.series_id; 
# need to organize human species by count by series and return appropriate series limited by top choice

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) 
    FROM character_books INNER JOIN characters
      ON character_books.character_id = characters.id
        INNER JOIN books
          ON character_books.book_id = books.id
            GROUP BY characters.name
              ORDER BY COUNT(*) DESC;" 
end
# characters.id <== character_books.character_id; character_books.book_id ==> books.id
# rspec is looking for the list organized by number of books in descending order




