create database quanlybanhang;
use quanlybanhang;
create table Customer(
                         cID int not null auto_increment primary key ,
                         cName varchar(20),
                         cAge int
);
create table Oder(
                     oID int not null auto_increment primary key,
                     cID int,
                     oDate datetime,
                     oTotalPrice double,
                     foreign key (cID) references Customer (cID)
);
create table Product(
                        pID int not null auto_increment primary key,
                        pName varchar(50),
                        pPrice int
);
create table OderDetail(
                           oID int,
                           pID int not null auto_increment,
                           odQTY varchar(50),
                           foreign key (oID) references Oder(oID),
                           foreign key (pID) references Product(pID),
                           primary key (oID,pID)
);
insert into Customer values (1, 'canh', 26);
insert into Oder values (1,1,'2022/2/2 18:2:6', 500000);
insert into Product values (5, 'quat tran', 800000);
insert into OderDetail values (1, 5, 'casddsaf');