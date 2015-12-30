A = LOAD '/user/horton/flightdelays_clean/' USING PigStorage(',');
B = LOAD '/user/horton/flightdelays/sfo*' USING PigStorage(',');

C = JOIN A BY ($0,(int) $1,(int) $2), B BY ($1,(int)$2,(int)$3);

STORE C INTO 'pigjoin';
