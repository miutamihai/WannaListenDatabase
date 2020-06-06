create table UserRoles(
    Id int identity primary key ,
    RoleName varchar(50) ,
    RoleCanLeaveAComment bit ,
    RoleCanInsertMedia bit ,
    RoleCanUpdateMedia bit,
    RoleCanDeleteMedia bit
)
