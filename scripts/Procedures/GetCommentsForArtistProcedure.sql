create proc GetCommentsForArtist @ArtistId int
as
    begin
        select ArtistComments.Id, GeneratedUserName, Content, DateOfCreation
        from ArtistComments
        inner join Users U on ArtistComments.UserId = U.Id
        where ArtistComments.ArtistId = @ArtistId
    end
go


