drop database Company;
create database Company;

use Company;

/*create table Employee(
    id int(10) primary key,
    fname varchar(20) not null,
    lname varchar(20) not null,
    salary DECIMAL(5,3),
    dep varchar(20));
    */
    
create table Book(
    ISBN char(13) primary key not null,
    Title varchar(70)not null  ,
    Description varchar(100),
    Category int(11),
    Edition char(30),
    PublisherID int(11) not null
    
    );
    
     insert into Book(
    ISBN,
    Title,  
    Description,
    Category,
    Edition,
    PublisherID
     )
    values (
     1,
     "PHP",
     "PHP For Begginers",
      9,
     "Second",
      3073
   
    );
    
    insert into Book(
    ISBN,
    Title,  
    Description,
    Category,
    Edition,
    PublisherID
     )
    values (
     2,
     "Java",
     "Java For Begginers",
      5,
     "Third",
      3093
   
    );
    
     insert into Book(
    ISBN,
    Title,  
    Description,
    Category,
    Edition,
    PublisherID
     )
    values (
     3,
     "MYSQL",
     "MYSQL For Begginers",
      5,
     "Third",
      9
   
    );
    
        describe Book;
        select * from Book;

    
    create table BookReview(
    ISBN int(13) not null,
    ReviewerID int(11) primary key not null,
    Rating int(11) null,
    Comments varchar(100) null ,
        
        
        constraint BookReview
        FOREIGN KEY (ISBN)
    REFERENCES Book(ISBN)
    
    );
    
     INSERT into BookReview(
    ISBN,
    ReviewerID,  
    Rating,
    Comments
     )
    values (
     3,
     1126,
    9.5,
     "Very Good"
      
   
    );
    
    INSERT into BookReview(
    ISBN,
    ReviewerID,  
    Rating,
    Comments
     )
    values (
     1,
     1149,
    4.6,
     "nor too Good"
      
   
    );
    INSERT into BookReview(
    ISBN,
    ReviewerID,  
    Rating,
    Comments
     )
    values (
     2,
     9644,
    9,
     "Very Good"
      
   
    );
    INSERT into BookReview(
    ISBN,
    ReviewerID,  
    Rating,
    Comments
     )
    values (
     5,
     1596,
     8,
     "its ok"
   
    );
    
        describe  BookReview;
        select * from  BookReview;

    create view  v1 as
    select Title,Rating,comments
    
    from Book
    inner join BookReview
    on Book.ISBN=BookReview.ISBN;
    
    
    select * from v1;
    
    /*
    describe Employee;
    
    insert into Employee(
    id,
    fname,  
    lname,
    salary,
    dep)
    values (
     40,
     "Ayman",
     "Aljuhani",
      30.56,
     "math"
   
    );
    
     insert into Employee(
    id,
    fname,  
    lname,
    salary,
    dep)
    values (
     30,
     "Ahmed",
     "Alseqa",
      25.6,
        "se"
   
    );
    
    insert into Employee(
    id,
    fname,  
    lname,
    salary,
    dep)
    values (
     35,
     "Rawan",
     "Alsgaf",
      90.15,
     "chem"
   
    );
    
    
    insert into Employee(
    id,
    fname,  
    lname,
    salary,
    dep)
    values (
     32,
     "Osamh",
     "Aljuhani",
      20.1,
     "phys"
   
    );
        select * from Employee where fname ="Ayman" or fname like "%a%" order by salary;

    */
    /*
    
    
    البحث غير حساس لحالة الاحرف
select * from Employee where  fname like "_a%"; // a ثاني حرف لاوم يكون 

select * from Employee where  fname like "%a%"; //  لايهم كم بعده وكم قبله a  الكلمة اللي فيها حرف  

select * from Employee where  fname like "__a%"; a ثالث حرف لاوم يكون 

select * from Employee where  fname = "ayman";


select * from Employee where  salary >=20 and salary<=30;
*/





