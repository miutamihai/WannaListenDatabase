create table SongComments(
    Id int identity primary key ,
    SongId int references Songs(Id) ,
    UserId int references Users(Id) ,
    Content varchar(500) ,
    DateOfCreation date
)
