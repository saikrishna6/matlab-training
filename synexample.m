%% step 1: Read dat from files
TT1 = readtable('FRED-BASE.csv');
TT1 = table2timetable(TT1);
TT2 = readtable ('FRED-DFF.csv');
TT2 = table2timetable(TT2);
TT3 = readtable ('FRED-CP.csv');
TT3 = table2timetable(TT3);
TT4 = readtable ('FRED-DTWEXM.csv');
TT4 = table2timetable(TT4);
TT5 = readtable ('FRED-UNRATE.csv');
TT5 = table2timetable(TT5);

%% Step2: Sync data and join all tables
TT = synchronize (TT1,TT2,TT3,TT4,TT5);
TT.Properties.VariableNames = {'BASEDATA','Dffdata','CPDATA','DTWEXMDATA','UNRATEDATA'};
stackedplot(TT)
