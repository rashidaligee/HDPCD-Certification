/* This program prints out NJ schools */

schools = LOAD 'Schools.csv' USING PigStorage(',');
schoolsNJ = FILTER schools BY $3 == '"NJ"';
DUMP schoolsNJ;

