create table Artists(
    Id int identity primary key ,
    Name varchar(50),
    Nationality varchar(50) ,
    CityOfBirth varchar(50) ,
    DateOfBirth date ,
    YearOfLaunch int,
    NumberOfComments int
)
