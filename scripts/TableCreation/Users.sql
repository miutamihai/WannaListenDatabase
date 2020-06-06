create table Users(
    Id int identity primary key ,
    UserFirstName varchar(50) ,
    UserLastName varchar(50) ,
    GeneratedUserName varchar(100) ,
    Password varchar(50) ,
    UserRole int references dbo.UserRoles(Id)
)
