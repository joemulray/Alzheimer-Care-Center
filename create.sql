drop table Outings;
drop table Checkins;
drop table Activities;
drop table DataSheets;
drop table Medication;
drop table Assistants;
drop table Patients;

Create table Patients(
    id number,
    ssn char(10) not null,
    name varchar(128) not null,
    address varchar(256) not null,
    zipcode number(5) not null,
    city varchar(128) not null,
    dob date not null,
    primary_doctor varchar(128),
    primary key(id, name)
);

Create table Assistants(
    id number,
    name varchar(128) not null,
    ssn char(10) not null,
    address varchar(256) not null,
    dob date,
    primary key(id, name) 
);

Create table Activities(
    activity varchar(128) primary key
);

 
Create table DataSheets(
    sheetID number,
    aID number,
    pID number,
    aname varchar(128),
    pname varchar(128),
    time date not null,
    observations_changes varchar(512) not null,
    primary key(sheetID, pID),
    foreign key(pname, pID) references Patients(name, id),
    foreign key(aname, aID) references Assistants(name, id)
);


 Create table Medication(
    pname varchar(128),
    pID number,
    drug varchar(128),
    startDate date,
    endDate date,
    primary key(pID, drug),
    foreign key (pname, pID) references Patients(name, id)
);

Create table Outings(
    activity varchar(128),
    aname varchar(128),
    pname varchar(128),
    pID number,
    aID number,
    startTime timestamp,
    endTime timestamp,
    location varchar(128),
    sheetID number null,
    primary key (activity, location, startTime),
    foreign key(pID, pname) references Patients(id, name),
    foreign key(aID, aname) references Assistants(id, name),
    foreign key(activity) references Activities(activity),
    foreign key(sheetID, pID) references DataSheets(sheetID, pID)
);


Create table Checkins(
    aname varchar(128),
    pname varchar(128),
    aID number,
    pID number,
    time timestamp,
    sheetID number null,
    foreign key(pname, pID) references Patients(name, id),
    foreign key(aname, aID) references Assistants(name, id),
    foreign key(sheetID, pID) references DataSheets(sheetID, pID),
    primary key(aID, pID, time)
);

