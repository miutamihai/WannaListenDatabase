create proc GetCommentsForSong @SongId int
as
    begin
        select SongComments.Id, GeneratedUserName, Content, DateOfCreation
        from SongComments
        inner join Users U on SongComments.UserId = U.Id
        where SongId = @SongId
    end
go


