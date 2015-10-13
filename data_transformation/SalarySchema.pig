/* This program will load Salaries.csv and define the schema for it. */
salaries = LOAD 'Salaries.csv' USING PigStorage(',') AS (year:int, team:chararray, league:chararray, player:chararray, salary:float);
describe salaries;
