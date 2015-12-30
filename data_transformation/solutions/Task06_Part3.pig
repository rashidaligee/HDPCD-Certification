A = LOAD '/user/horton/flightdelays_clean/' USING PigStorage(',') AS (Year, Month, DayofMonth, DepTime, UniqueCarrier, FlightNum, ArrDelay, Origin, Dest);
B =  FILTER A BY (chararray) Dest == 'DEN' AND (int)ArrDelay >= 60;
C = GROUP B ALL;
D = FOREACH C GENERATE COUNT(B);
STORE D INTO 'denver_late';
