A = LOAD '/user/horton/flightdelays_clean/' USING PigStorage(',');
B = GROUP A ALL;
C = FOREACH B GENERATE COUNT(A);
STORE C INTO '/user/horton/cleaned_total';
