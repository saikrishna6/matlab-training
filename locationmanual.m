% Manual code for Matlab to insert the query into a database.

datasource = 'dbdemo';
conn = database(datasource,'root','root');
conn.Message

% T is a variable, column names.  
T = {"Gachibowli" 500032 ; "Madhapur" 500081};
colnames1 = {'Places' 'Zipcode'};
datamanual = cell2table(T,'VariableNames',colnames1)
tablename2 = 'location';

% Inserting query into database. Sqlwrite-Insert & Sqlread-Read the data.
sqlwrite(conn,tablename2,datamanual,'Catalog','test')
rows = sqlread (conn,tablename2)
close(conn)