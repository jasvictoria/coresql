
/* Put your data in here and query it! */
/*
 Top 10 Countres By Population, 2014
 Collected by https://www.khanacademy.org/profile/darrylyeo/
 Data adapted from
 http://www.worldometers.info/world-population/population-by-country/
 Pick one of those data sets or create a data set like that, and use advanced SELECT queries to discover things about the data. What sort of questions might one have about that data, like if they were using it for an app or a business idea? Here are some ideas:

 What are average, max, and min values in the data?
 What about those numbers per category in the data (using HAVING)?
 What ways are there to group the data values that don’t exist yet (using CASE)?
 What interesting ways are there to filter the data (using AND/OR)? */

CREATE TABLE countries_by_population (
    rank INTEGER PRIMARY KEY AUTOINCREMENT,
    country TEXT,
    population INTEGER,
    percent_one_year_change NUMERIC,
    population_change INTEGER,
    net_migrants INTEGER,
    median_age NUMERIC,
    percent_aged_over_60 INTEGER,
    fertility_rate NUMERIC,
    area_sq_km INTEGER,
    density_per_sq_km INTEGER,
    urban_pop_percent INTEGER,
    urban_pop INTEGER,
    percent_of_world_pop NUMERIC
);

INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "China", 1393783836, 0.59, 8217299, -313996, 35.7, 14, 1.66, 9596947, 145, 54, 756300115, 19.24
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "India", 1267401849, 1.22, 15262253, -483402, 26.6, 9, 2.53, 3287265, 386, 32, 410404773, 17.50
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "U.S.A.", 322583006, 0.79, 2532290, 1008835, 37.5, 20, 1.99, 9629056, 34, 83, 268084524, 4.45
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Indonesia", 252812245, 1.18, 2946614, -141488, 28.1, 8, 2.38, 1904567, 133, 53, 133860626, 3.49
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Brazil", 202033670, 0.83, 1671745, -46113, 30.7, 12, 1.83, 8514209, 24, 85, 172549088, 2.79
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Pakistan", 185132926, 1.64, 2990332, -334980, 22.8, 7, 3.30, 796096, 233, 37, 68888535, 2.56
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Nigeria", 178516904, 2.82, 4901559, -60000, 17.8, 4, 6.01, 923766, 193, 51, 91834051, 2.46
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Bangladesh", 158512570, 1.22, 1917608, -456443, 25.4, 7, 2.24, 143998, 1101, 30, 47334620, 2.19
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Russia", 142467651, -0.26, -366038, 254018, 38.4, 19, 1.51, 17076310, 8, 74, 105911587, 1.97
);
INSERT INTO countries_by_population (country, population, percent_one_year_change, population_change, net_migrants, median_age, percent_aged_over_60, fertility_rate, area_sq_km, density_per_sq_km, urban_pop_percent, urban_pop, percent_of_world_pop) VALUES (
    "Japan", 126999808, -0.11, -143769, 73466, 46.2, 33, 1.40, 377873, 336, 93, 117995650, 1.75);

SELECT * FROM countries_by_population;

SELECT country, population AS size_rank from countries_by_population;

SELECT COUNT(*),
 CASE
  WHEN population < 200000000 THEN "smaller population"
  WHEN population < 1000000000 THEN "medium population"
  ELSE "largest population"
END AS size_rank
FROM countries_by_population
GROUP BY size_rank;

/* Which top 10 in population countries have highest fertility rate?  */
SELECT country FROM countries_by_population
WHERE fertility_rate > 2
ORDER BY fertility_rate;
