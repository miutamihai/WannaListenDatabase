create trigger GenerateUsername
    on Users
    after insert
    as
    begin
        declare @GeneratedUserName varchar(50), @InsertedUserLName varchar(50), @InsertedUserFName varchar(50), @InsertedUserId int;
        select @InsertedUserFName = UserFirstName, @InsertedUserLName = UserLastName, @InsertedUserId = Id
        from Users
        set @GeneratedUserName = @InsertedUserLName + @InsertedUserFName + '#' + cast(@InsertedUserId as varchar(4))
        update Users
        set GeneratedUserName = @GeneratedUserName
        where Id = @InsertedUserId
    end
