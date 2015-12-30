A = LOAD 'flightdelays' USING org.apache.hive.hcatalog.pig.HCatLoader();
B = FILTER A BY arrdelay > 0;
C = ORDER B BY arrdelay desc PARALLEL 3;
STORE C INTO 'flightdelays_nonzero' USING PigStorage(',');
