CREATE TABLE `Doctor` (
  `Doc_ID` varchar(5),
  `Name` varchar(20) not null,
  `address` varchar(45),
  `gender` Varchar(4),
  `phone` int(11),
  `age` int(2),
  primary key (`Doc_ID`)
);

CREATE TABLE `Department` (
  `Dep_ID` varchar(5),
  `name` Varchar(20),
  `disease` Varchar(60),
  primary key (`Dep_ID`)
 );

CREATE TABLE `Nurse` (
  `Nurse_ID`varchar(5) ,
  `name` Varchar(254),
  `specialize` Varchar(100),
  primary key (`Nurse_ID`)
);

CREATE TABLE `Laboratory` (
  `lab_id` varchar(3),
  `Patient_ID` varchar(5),
  `Date` date,
  `Doc_ID` varchar(5),
  primary key (`lab_id`),
    foreign key (Patient_ID) references Patient(Patient_ID)
		on delete set null,
	foreign key (Doc_ID) references Doctor(Doc_ID)
		on delete set null
  );

CREATE TABLE `Room` (
  `Room_num` varchar(3),
  `room_type` Varchar(25),
  `status` Varchar(25),
  primary key (`Room_num`)
);

CREATE TABLE `Bill` (
  `bill_id` varchar(10),
  `Patient_ID` varchar(5),
  `num_days` varchar(3),
  `room charge` Varchar(80),
  `doc_charge` Varchar(80),
  primary key (`bill_id`),
  foreign key (Patient_ID) references Patient(Patient_ID)
		on delete set null
);

CREATE TABLE `Receptionist` (
  `recp_id` varchar(5),
  `name` Varchar(25),
  `hours_work` varchar(2),
  `bill_id` varchar(10),
  primary key  (`recp_id`),
   foreign key (bill_id) references Bill(bill_id)
		on delete set null
);

CREATE TABLE `Medicine` (
  `Med_ID` varchar(10),
  `name` Varchar(25),
  primary key  (`Med_ID`)
);

CREATE TABLE `Patient` (
  `Patient_ID` varchar(5),
  `name` Varchar(50),
  `date_entry` datetime,
  `disease` Varchar(60),
  `age` varchar(2),
  `Doc_ID` varchar(5),
  primary key (`Patient_ID`),
foreign key (Doc_ID) references Doctor(Doc_ID)
		on delete set null
);

