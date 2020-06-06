create procedure InsertArtistComment @Content varchar(500), @Username varchar(50), @ArtistId int
as
    begin
        declare @UserCanComment bit, @UserId int;
        set @UserCanComment = dbo.CheckUserCredentials(@Username, 'Comment')
        if(@UserCanComment = 0)
        begin
            throw 403, 'User is not logged in', 1
        end
        select @UserId = Id
        from Users
        where GeneratedUserName = @Username
        insert into ArtistComments(ArtistId, UserId, Content, DateOfCreation)
        values (@ArtistId, @UserId, @Content, getdate())
    end
