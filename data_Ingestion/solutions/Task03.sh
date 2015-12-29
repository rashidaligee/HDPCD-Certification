# Make sure you copy the contents specified in step 1 in requirment of this task.
sqoop export --connect jdbc:mysql://namenode/flightinfo --username root --password hadoop --table weather  --export-dir /user/horton/weather --input-fields-terminated-by ',' 
