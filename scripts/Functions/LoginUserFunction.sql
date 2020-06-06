create function LoginUser(@Username varchar(50), @Password varchar(50))
returns bit
as
    begin
        declare @UserIsFound int;
        select @UserIsFound = @@ROWCOUNT from Users
        where GeneratedUserName = @Username and Password = @Password
        if (@UserIsFound = 1)
            return 1
        return 0
    end
go
