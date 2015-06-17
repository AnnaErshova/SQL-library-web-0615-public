INSERT INTO series VALUES
  (1,"Book1","Author1","Subgenre1"),
  (2,"Book2","Author2","Subgenre2");

INSERT INTO subgenres VALUES
  (1,"Subgenre1"),
  (2,"Subgenre2");

INSERT INTO authors VALUES
  (1,"Author1"),
  (2,"Author2");

INSERT INTO books VALUES
  (1,"Book1",1990,"series1"),
  (2,"Book2",1991,"series1"),
  (3,"Book3",1992,"series2"),
  (4,"Book4",1993,"series2"), 
  (5,"Book5",1994,"series1"),
  (6,"Book6",1995,"series1");

INSERT INTO characters VALUES
  (1,"character1","motto1","species1","Author1","series_id"),
  (2,"character2","motto2","species1","Author2","series_id"),
  (3,"character3","motto3","species1","Author1","series_id"),
  (4,"character4","motto4","species1","Author2","series_id"),
  (5,"character5","motto5","species1","Author1","series_id"),
  (6,"character6","motto6","species1","Author2","series_id"),
  (7,"character7","motto7","species1","Author1","series_id"),
  (8,"character8","motto8","species1","Author2","series_id");

INSERT INTO character_books VALUES
  (1,"Book1","Character1"),
  (2,"Book2","Character2"),
  (3,"Book3","Character3"),
  (4,"Book4","Character4"),
  (5,"Book5","Character5"),
  (6,"Book6","Character6"),
  (7,"Book1","Character7"),
  (8,"Book2","Character8"),
  (9,"Book3","Character1"),
  (10,"Book4","Character2"),
  (11,"Book5","Character3"),
  (12,"Book6","Character4"),
  (13,"Book1","Character5"),
  (14,"Book2","Character6"),
  (15,"Book3","Character7"),
  (16,"Book4","Character8");


