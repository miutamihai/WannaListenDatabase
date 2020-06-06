create table Songs(
    Id int identity primary key ,
    Title varchar(50) ,
    ArtistId int references Artists(Id) ,
    YearOfLaunch int,
    NumberOfComments int
)
