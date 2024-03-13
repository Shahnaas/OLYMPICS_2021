
create database olympics_2021;
use olympics_2021;
create table Games ( game_id int PRIMARY KEY , game_name varchar(25));
create table medals(medal_id int PRIMARY KEY , award varchar (25) );

create table athlete_data( 
ath_id int primary key , 
name varchar (30),
gender enum ('male','female') ,
DOB DATE ,
HEIGHT INT,
COUNTRY VARCHAR (30),
GAME_ID INT ,
constraint gid foreign key (game_id)references games(game_id));
 
 create table events_2021 
 (event_id varchar(15),
 event_date date,
 venue text,
 ath_id int,
 medal_id int ,
 constraint xy foreign key (medal_id)references medals(medal_id),
 constraint  yz foreign key (ath_id)references athlete_data(ath_id));
 
  alter table athlete_data modify height varchar(20);
  
  insert into games values (101, 'Archery'),(102,'Fencing'),(103,'Golf'),(104,'Surfing'),(105,'Badminton');
  
  insert into medals values (111,'GOLD'),(222,'SILVER'),(333,'BRONZE');
  
  insert into athlete_data values(1,'An san','female','2001-02-27','172cm','south korea',101),
  (2,'Elena Osiova','female','1993-05-23','173cm','Russia',101),
  (3,'Lucilla Boari','female','1997-03-24','172cm','Italy',101);
  
  insert into athlete_data values(4,'aron szilagyi','male','1990-01-14','180cm','hungary',102),
  (5,'luigi samele','male','1987-07-25','180cm','italy',102),
  (6,'kim jung hwan','male','1983-09-02','178cm','south korea',102);
  
  insert into athlete_data values(4,'aron szilagyi','male','1990-01-14','180cm','hungary',102),
  (5,'luigi samele','male','1987-07-25','180cm','italy',102),
  (6,'kim jung hwan','male','1983-09-02','178cm','south korea',102);
  
  update athlete_data set country = 'NEW ZEALAND' where ath_id=9;
  
  insert into athlete_data values(10,'italo ferreira','male','1994-05-06','168cm','brazil',104),
  (11,'kanoa igarashi','male','1997-10-01','180cm','japan',104),
  (12,'owen wright','male','1990-01-16','190cm','australia',104);
  
  insert into athlete_data values(13,'chen yu fei','female','1998-03-01','171cm','beijing',105),
  (14,'tai tzu ying','female','1994-06-20','163cm','taiwan',105),
  (15,'pusarla v.sindhu','female','1995-07-05','179cm','india',105);
  
  INSERT INTO EVENTS_2021 VALUES ( 'E1', '2021-07-23',' Yumenoshima Park',1,111),
  ('E2', '2021-07-23',' Yumenoshima Park',2,222),
  ('E3', '2021-07-23',' Yumenoshima Park',3,333);
  
  INSERT INTO EVENTS_2021 VALUES ( 'E4', '2021-08-01','Makuhari Messe',4,111), 
  ('E5', '2021-08-01','Makuhari Messe',5,222), 
  ('E6', '2021-08-01','Makuhari Messe',6,333);
  
  INSERT INTO EVENTS_2021 VALUES ( 'E7', '2021-08-07','Kasumigaseki Country Club East Course',7,111), 
  ( 'E8', '2021-08-07','Kasumigaseki Country Club East Course',8,222), 
  ( 'E9', '2021-08-07','Kasumigaseki Country Club East Course',9,333);
  
  INSERT INTO EVENTS_2021 VALUES ( 'E10', '2021-07-27','Tsurigasaki Beach, Chiba',10,111),
  ( 'E11', '2021-07-27','Tsurigasaki Beach, Chiba',11,222),
  ( 'E12', '2021-07-27','Tsurigasaki Beach, Chiba',12,333);
  
  INSERT INTO EVENTS_2021 VALUES ( 'E13', '2021-08-01','Musashino Forest Sport Plaza',13,111), 
  ('E14', '2021-08-01','Musashino Forest Sport Plaza',14,222), 
  ('E15', '2021-08-01','Musashino Forest Sport Plaza',15,333);
  
  SELECT * FROM GAMES;
  SELECT * FROM MEDALS;
  SELECT * FROM ATHLETE_DATA;
  SELECT * FROM EVENTS_2021;
  
 