% Inserting Matlab data into database using sqlread and sqlwrite commands. 
datasource = 'dbdemo';   %giving datasource name                 
conn = database(datasource,'root','root'); % username and password
conn.message %checking connection with database is successful
tablename = 'ussp'; 
rows = sqlread(conn,tablename,'Catalog','test'); %to read database data
tail(rows,2)
data = table("Sai",3,"Malkajgiri",0407654321,'VariableNames',{'Name','Id','Address','PhoneNo'}); %adding extra data into new table and inserting into previous ussp
sqlwrite(conn,tablename,data,'Catalog','test') %for inserting data into database
rows = sqlread(conn,tablename);
tail(rows,3)
close(conn)
