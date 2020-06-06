create function CheckUserCredentials(@Username varchar(100), @RequestedOperation varchar(50))
returns bit
as
    begin
        declare @UserCanExecuteRequestedOperation bit;
        if(@RequestedOperation = 'Comment')
        begin
            select @UserCanExecuteRequestedOperation = RoleCanLeaveAComment
            from UserRoles
            inner join Users U on UserRoles.Id = U.UserRole
            where U.GeneratedUserName = @Username
        end
        if(@RequestedOperation = 'Insert')
        begin
            select @UserCanExecuteRequestedOperation = RoleCanInsertMedia
            from UserRoles
            inner join Users U on UserRoles.Id = U.UserRole
            where U.GeneratedUserName = @Username
        end
        if(@RequestedOperation = 'Update')
        begin
            select @UserCanExecuteRequestedOperation = RoleCanUpdateMedia
            from UserRoles
            inner join Users U on UserRoles.Id = U.UserRole
            where U.GeneratedUserName = @Username
        end
        if(@RequestedOperation = 'Delete')
        begin
            select @UserCanExecuteRequestedOperation = RoleCanDeleteMedia
            from UserRoles
            inner join Users U on UserRoles.Id = U.UserRole
            where U.GeneratedUserName = @Username
        end
        return @UserCanExecuteRequestedOperation
    end
