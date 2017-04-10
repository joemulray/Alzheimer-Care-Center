insert into Patients (id, ssn, name, address, zipcode, city, dob) values (1, 109101432, 'Jane Doe', '123 Berlin Lane', '19011', 'Philadelphia', to_date('1955-03-15','yyyy-mm-dd'));
insert into Patients (id, ssn, name, address, zipcode, city, dob, primary_doctor) values (2, 231234532, 'Kevin Jones', '2333 Drexel Lane', '19082', 'Philadelphia', to_date('1966-07-13','yyyy-mm-dd'), 'Dr. Amgelas');
insert into Patients (id, ssn, name, address, zipcode, city, dob) values (3, 123543673, 'Mike Switch', '7776 Palm', '34123', 'Los Angeles', to_date('1957-12-05','yyyy-mm-dd'));
insert into Patients (id, ssn, name, address, zipcode, city, dob, primary_doctor) values (4, 652235422, 'Joseph Easy', '4233 West Park Lane', '23451', 'Highland', to_date('1934-06-25','yyyy-mm-dd'), 'Dr. Panning');
insert into Patients (id, ssn, name, address, zipcode, city, dob) values (5, 234456343, 'David Ackerson', '344 South St.', '23453', 'Overbrook', to_date('1959-10-04','yyyy-mm-dd')); 

insert into Activities (activity) values ('Swimming');
insert into Activities (activity) values ('Reading');
insert into Activities (activity) values ('Bingo');
insert into Activities (activity) values ('Group Speaking');
insert into Activities (activity) values ('Exercise');
insert into Activities (activity) values ('Lunch');
insert into Activities (activity) values ('Breakfast');
insert into Activities (activity) values ('Dinner');
insert into Activities (activity) values ('Movie');

insert into Assistants (id, name, ssn, address, dob) values (1, 'Mary Sweeney', 349240984, '4533 Larn Way', to_date('1960-03-20','yyyy-mm-dd'));
insert into Assistants (id, name, ssn, address, dob) values (2, 'Bill Gerass', 234323412, '6534 Back Strett', to_date('1967-10-03','yyyy-mm-dd'));
insert into Assistants (id, name, ssn, address, dob) values (3, 'Joann Driggs', 349243484, '454 Simpson', to_date('1960-03-20','yyyy-mm-dd'));
insert into Assistants (id, name, ssn, address, dob) values (4, 'Martha Bland', 356924984, '7 Slice Rd', to_date('1960-09-12','yyyy-mm-dd'));
insert into Assistants (id, name, ssn, address, dob) values (5, 'Karen Wat', 349287984, '34 Back way', to_date('1960-06-21','yyyy-mm-dd'));
insert into Assistants (id, name, ssn, address, dob) values (6, 'Brian Thompson', 349345984, '473 East Side', to_date('1955-02-25','yyyy-mm-dd'));

insert into DataSheets (sheetID, aID, pID, pname, aname, time, observations_changes) values (1, 6, 1, 'Jane Doe', 'Mary Sweeney', to_date('2016-02-10 11:00:00', 'yyyy-mm-dd HH24:MI:SS'), 'acted normally');
insert into DataSheets (sheetID, aID, pID, pname, aname, time, observations_changes) values (2, 2, 1, 'Jane Doe', 'Bill Gerass', to_date('2016-02-11 12:00:00', 'yyyy-mm-dd HH24:MI:SS'), 'patient was eratic, unknown causes');
insert into DataSheets (sheetID, aID, pID, pname, aname, time, observations_changes) values (3, 4, 4, 'Joseph Easy', 'Martha Bland', to_date('2016-02-15 16:00:00', 'yyyy-mm-dd HH24:MI:SS'), 'patient acted fine');
insert into DataSheets (sheetID, aID, pID, pname, aname, time, observations_changes) values (4, 5, 4, 'Joseph Easy', 'Karen Wat', to_date('2016-02-10 11:00:00', 'yyyy-mm-dd HH24:MI:SS'), 'patient acted as usual');

insert into Medication (pname, pID, drug) values ('Mike Switch', 3, 'Advil');
insert into Medication (pname, pID, drug, startDate, endDate) values ('David Ackerson', 5, 'Dimethylethyne', to_date('2016-09-10','yyyy-mm-dd'), to_date('2016-09-20','yyyy-mm-dd'));
insert into Medication (pname, pID, drug) values ('Kevin Jones', 2, 'Heart Medicine');

insert into Outings (activity, aname, pname, aID, pID, startTime, endTime, location) values ('Bingo', 'Karen Wat', 'Mike Switch', 5, 3, to_date('2016-09-30 01:00:00', 'yyyy-mm-dd HH24:MI:SS'), to_date('2016-09-30 20:00:00', 'yyyy-mm-dd HH24:MI:SS'), 'Theater');
insert into Outings (activity, aname, pname, aID, pID, startTime, endTime, location) values ('Reading', 'Brian Thompson', 'Jane Doe', 6, 1, to_date('2016-09-15 05:00:00', 'yyyy-mm-dd HH24:MI:SS'), to_date('2016-09-30 1:00:00', 'yyyy-mm-dd HH24:MI:SS'), 'Room');
insert into Outings (activity, aname, pname, aID, pID, startTime, endTime, location) values ('Exercise', 'Martha Bland', 'David Ackerson', 4, 5, to_date('2016-08-03 05:00:00', 'yyyy-mm-dd HH24:MI:SS'), to_date('2016-08-03 06:00:00', 'yyyy-mm-dd HH24:MI:SS'), 'Gym');  

insert into Checkins (aname, pname, aID, pID, time) values ('Joann Driggs', 'Joseph Easy', 3, 4, to_date('2016-08-03 05:00:00', 'yyyy-mm-dd HH24:MI:SS'));
insert into Checkins (aname, pname, aID, pID, time, sheetID) values ('Bill Gerass', 'Jane Doe', 2, 1, to_date('2016-02-11 12:00:00', 'yyyy-mm-dd HH24:MI:SS'), 2);
insert into Checkins (aname, pname, aID, pID, time) values ('Joann Driggs', 'David Ackerson', 3, 5, to_date('2016-08-03 05:00:00', 'yyyy-mm-dd HH24:MI:SS'));


