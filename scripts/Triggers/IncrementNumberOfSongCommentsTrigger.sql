create trigger IncrementNumberOfSongComments
on SongComments
after insert
    as
    begin
        declare @SongId int
        select @SongId = SongId
        from inserted
        update Songs
        set NumberOfComments += 1
        where Id = @SongId
    end
