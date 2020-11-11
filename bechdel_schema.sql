CREATE TABLE bechdel_movies (
imdb_id TEXT PRIMARY KEY,
title TEXT,
pass_fail TEXT
);

CREATE TABLE original_budgets (
imdb_id TEXT PRIMARY KEY,
title TEXT,
original_budget FLOAT,
domestic_gross FLOAT,
international_gross FLOAT
);

CREATE TABLE adjusted_budgets_2013 (
imdb_id TEXT PRIMARY KEY,
title TEXT,
2013_adj_budget FLOAT,
2013_adj_dom_gross FLOAT,
2013_adj_int_gross FLOAT
);


