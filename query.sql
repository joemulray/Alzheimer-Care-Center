/*select all patients who have been on outings
order by ascending id number*/
select pID, name from Outings
join Patients on pID = id 
order by pID asc;


/*select all the patients that have a primary doctor
listed and are on medication*/
select P.name, P.primary_doctor, M.drug
from Patients P, Medication M 
where P.id = M.pID
and P.primary_doctor is not NULL;

/*select all Assistants and locations
where the activity recorded was bingo*/
select A.name, O.location     
from Assistants A, Outings O
where O.activity = 'Bingo'
and A.id = O.aID
order by A.id asc;


/*select all assistants that have either 
recorded a checkin with patient or have
completed a datasheet and get that patients name*/
select id, name, pname from Assistants
join Checkins on id = Checkins.aID
join Datasheets on id = Datasheets.aID
where Checkins.aID is not Null
and Datasheets.aID is not Null;


/*select only activities that have been on outings*/
select Outings.activity from Outings
join Activities on Outings.activity = Activities.activity
where Activities.activity is not NULL;

/*select assistants name id where id less 
3 and order results in descending order*/
select id, name from Assistants
where id < 3 
order by id desc;


/*select paitent name id, where name 
equals Jane doe and in Datasheets and Checkins*/
select distinct Datasheets.pID, Datasheets.pname           
from Datasheets
join Checkins on Datasheets.pID = Checkins.pID
where Checkins.pname = 'Jane Doe';

/*select id name from patients
where ids are greater than 2 order by asc*/
select id, name from Patients
where id > 2
order by id asc;

/*select Datasheet id and time from checkins
where both are not null order by asc*/
select sheetid, time from Checkins
where sheetid is not Null 
and time is not null
order by sheetid asc;

