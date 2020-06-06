create function GetUserRole(@Username varchar(50))
returns varchar(50)
as
    begin
        declare @UserRoleName varchar(50)
        select @UserRoleName = RoleName
        from UserRoles
        inner join Users U on UserRoles.Id = U.UserRole
        where U.GeneratedUserName = @Username
        return @UserRoleName
    end



