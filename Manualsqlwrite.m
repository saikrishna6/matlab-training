%Manual code to create a table from matlab to database.
% Manual Inserting Matlab data into database using sqlread and sqlwrite commands. 
datasource = 'dbdemo';   %giving datasource name                 
conn = database(datasource,'root','root'); % username and password
conn.message %checking connection with database is successful
%cell into Table
c = {"Activa" 3388 ;"Enfield" 3669};
%,"Enfield",3669
colnames = {'Bike' 'Number'};
%{'Bike','Number'}
data33 = cell2table(c,'VariableNames',colnames)
tablename = 'masabtank';
sqlwrite(conn,tablename,data33,'Catalog','test')
rows = sqlread (conn,tablename)
close(conn)