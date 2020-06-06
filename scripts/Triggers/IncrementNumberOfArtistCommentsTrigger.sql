create trigger IncrementNumberOfArtistComments
on ArtistComments
after insert
as
    begin
        declare @ArtistId int
        select @ArtistId = ArtistId
        from inserted
        update Artists
        set NumberOfComments += 1
        where Id = @ArtistId
    end
