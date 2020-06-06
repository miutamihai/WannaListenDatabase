create procedure RegisterUser @FirstName varchar(50), @LastName varchar(50), @Password varchar(50)
as
    begin
        insert into Users(userfirstname, userlastname, password, userrole)
        values (@FirstName, @LastName, @Password, 1)
        select GeneratedUserName
        from Users
        where UserFirstName = @FirstName and UserLastName = @LastName
    end
go


