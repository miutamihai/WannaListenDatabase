create table ArtistComments(
    Id int identity primary key ,
    ArtistId int references Artists(Id) ,
    UserId int references Users(Id) ,
    Content varchar(500) ,
    DateOfCreation date
)
