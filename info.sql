drop database info;
create database info;

use info;



create table account(
email  varchar(30) not null,
password int not null,
username varchar(30) not null,
country varchar(30),
databirth varchar(15),
    constraint account_pk
    primary key (email)
    
    );
    


create table contact (
    id int not null,
    email varchar(30) not null,
    phoneNumber1 int,
    
    constraint contact_pk
    primary key (id),
    
    
     constraint contact_fk 
    FOREIGN KEY (email)
    REFERENCES account(email)
    
    

);


insert into account(email,username,password,country,databirth)values("moony181@hotmail.com","Ayman-15",12345,"KSA","1993");
insert into account(email,username,password,country,databirth)values("Ayman-012@hotmail.com","Ayman-012",54321,"KSA","1997");
insert into account(email,username,password,country,databirth)values("pep-444@hotmail.com","Ayman-15",13579,"KSA","1995");

describe account;

insert into contact(id,email,phoneNumber1)values(1,"moony181@hotmail.com",0563527995);
insert into contact(id,email,phoneNumber1)values(2,"moony181@hotmail.com",0565555555);
insert into contact(id,email,phoneNumber1)values(3,"moony181@hotmail.com",0563524444);
insert into contact(id,email,phoneNumber1)values(4,"Ayman-012@hotmail.com",0565328083);
insert into contact(id,email,phoneNumber1)values(5,"pep-444@hotmail.com",0563527995);

describe contact;


select * from contact where email in(

select email from account where databirth between "1994" and "1997"

);

select * from account where databirth in("1993");


create table Stu(

    StuId int(10) not null,
    StuName varchar(20),
    ClassId int(10) not null,

    
    
      constraint Stu_pk
    primary key (StuId),
    
    constraint Stu_fk
    
  FOREIGN KEY (ClassId)
    REFERENCES Class(ClassId)
    
    );
    

   create table Class(

    ClassId int(10) not null,
    ClassName varchar(20),
    
      constraint Class_pk
    primary key (ClassId)
       
       
    
    );
     
insert into Stu (StuID,StuName,ClassID)VALUES(1,"Ayman",1);
insert into Stu (StuID,StuName,ClassID)VALUES(2,"Ahmed",1);
insert into Stu (StuID,StuName,ClassID)VALUES(3,"Fahad",1);
insert into Stu (StuID,StuName,ClassID)VALUES(4,"Osamh",5);
insert into Stu (StuID,StuName,ClassID)VALUES(5,"Raed",7);



insert into Class (ClassID,ClassName)VALUES(1,"CN");
insert into Class (ClassID,ClassName)VALUES(2,"SE");
insert into Class (ClassID,ClassName)VALUES(3,"DB");



select StuName,ClassName from Stu left join Class 
on Stu.ClassId=Class.ClassId;



/*

create table Book(
    
    ISBN char(10) not null ,
    Title varchar(15),
    Description varchar(20),
    PublisherID int (11),
    
      constraint Book_pk
    primary key (ISBN)
    

);

create table BookReview(
    
    ISBN char(10) not null ,
    ReviewerID int(11),
    Rating int(5),
    Comments varchar(255),
    
      constraint BookReview_pk
    primary key (ReviewerID),
    
    constraint BookReview_pk
    primary key (ReviewerID),
    
    
    constraint BookReview_fk
    
  FOREIGN KEY (ISBN)
    REFERENCES Book(ISBN)
        

);


insert into Book (ISBN,Title,Description,PublisherID)VALUES("269758","JAVA","Intro about java",1);
insert into Book (ISBN,Title,Description,PublisherID)VALUES("994686","PHP","Intro about PHP",2);
insert into Book (ISBN,Title,Description,PublisherID)VALUES("959751","HTML","Intro about HTML",3);
insert into Book (ISBN,Title,Description,PublisherID)VALUES("954927","MYSQL","Intro about MYSQL",4);



insert into BookReview (ISBN,ReviewerID,Rating,Comments)VALUES("269758",1,5,"Nice");
insert into BookReview (ISBN,ReviewerID,Rating,Comments)VALUES("269758",2,4,"very good");
insert into  BookReview (ISBN,ReviewerID,Rating,Comments)VALUES("269758",3,3,"good");
insert into BookReview (ISBN,ReviewerID,Rating,Comments)VALUES("269758",4,1," not Nice");

*/




)


