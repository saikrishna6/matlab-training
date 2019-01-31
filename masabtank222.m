% Inserting new bike and no into existing data of masabtank table. 
datasource = 'dbdemo'; %connecting datasource
conn = database(datasource,'root','root'); % Giving database connections username and password.
conn.Message 
tablename = 'masabtank'; % table name for which data need to inserted.
rows = sqlread(conn,tablename,'Catalog','test'); %sqlread with catalog example sqlread(conn,'inventoryTable','Catalog','toy_store','Schema','dbo','MaxRows',5)
tail(rows,2)
data44 = table("CBZ",9191,'VariableNames',{'Bike','Number'}); %Data 
sqlwrite(conn,tablename,data44,'Catalog','test') % sqlwrite - command for matlab to write a matlab query to be inserted into sql workbench.
rows = sqlread(conn,tablename);
tail(rows,3)
close(conn)
