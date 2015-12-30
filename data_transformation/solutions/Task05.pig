A = LOAD '/user/horton/flightdelays/flight*' USING PigStorage(',') AS(Year, Month, DayofMonth, DayOfWeek, DepTime, CRSDepTime, ArrTime, CRSArrTime,
UniqueCarrier, FlightNum, TailNum, ActualElapsedTime, CRSElapsedTime, AirTime,
ArrDelay, DepDelay, Origin, Dest, Distance, TaxiIn, TaxiOut, Cancelled, 
CancellationCode, Diverted, CarrierDelay, WeatherDelay, NASDelay, SecurityDelay,
LateAircraftDelay); 
B = FILTER A BY (chararray)DepTime != 'NA';
C = FOREACH B GENERATE Year, Month, DayofMonth, DepTime, UniqueCarrier, FlightNum,ArrDelay,Origin,Dest;

STORE C INTO '/user/horton/flightdelays_clean' USING PigStorage(',');
