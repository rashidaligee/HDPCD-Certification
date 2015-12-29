sqoop import --connect jdbc:mysql://namenode/flightinfo --username root --password hadoop --query 'SELECT * FROM weather WHERE $CONDITIONS' --split-by year --target-dir /user/horton/sqoopImport
