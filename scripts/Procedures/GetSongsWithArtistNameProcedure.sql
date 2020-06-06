create procedure GetSongsWithArtistName
as
    begin
        select Songs.Id, Title, Name, A.YearOfLaunch, Songs.NumberOfComments
        from Songs
        inner join Artists A on Songs.ArtistId = A.Id
    end
go


