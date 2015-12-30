DROP TABLE IF EXISTS flightdelays;

CREATE TABLE flightdelays (Year INT, 
Month INT, DayOfMonth INT, DepTime INT, 
UniqueCarrier STRING, FlightNum INT, ArrDelay INT, Origin STRING, Dest STRING);
