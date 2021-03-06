﻿USE RightsDB;
GO

--机构
SELECT * FROM dbo.t_rights_organization;

--用户
SELECT * FROM dbo.t_rights_user;

--用户-机构
SELECT * FROM dbo.t_rights_user_organization;

--INSERT INTO dbo.t_rights_user_organization
--        ( user_id, organization_id )
--VALUES  ( 1, -- user_id - int
--          2  -- organization_id - int
--          ),(3,2);


WITH cte_org(Id, N,ParentId) AS
(
	SELECT o1.id AS Id, o1.name AS N, o1.parent_id AS ParentId FROM dbo.t_rights_organization AS o1
	UNION ALL
	SELECT o1.id AS Id, o1.name AS N, o1.parent_id AS ParentId FROM dbo.t_rights_organization AS o1
	JOIN cte_org AS o2 ON o1.parent_id= o2.Id
)

SELECT DISTINCT * FROM cte_org AS c
WHERE c.ParentId= 4;

SELECT DISTINCT u.id, u.user_id AS UserId, u.user_name AS UserName,
u.is_change_pwd AS IsChangePwd, u.enable_flag AS EnableFlag, u.created_time AS CreatedTime
FROM dbo.t_rights_user AS u
LEFT JOIN dbo.t_rights_user_organization AS userOrg ON u.id= userOrg.user_id
LEFT JOIN cte_org AS c ON c.Id= userOrg.organization_id
WHERE c.ParentId= 4;


--查询用户列表(分页)
SELECT u.id, u.user_id AS UserId, u.user_name AS UserName,
u.is_change_pwd AS IsChangePwd, u.enable_flag AS EnableFlag, u.created_time AS CreatedTime
FROM dbo.t_rights_user AS u
LEFT JOIN dbo.t_rights_user_organization AS userOrg ON u.id= userOrg.user_id
WHERE userOrg.organization_id IN (4,6,7,24,25,26);
--WHERE userOrg.organization_id IN @OrgIds

--CTE,目的distinct
WITH cte_paging_user AS
(
    SELECT DISTINCT  u.id ,
            u.user_id AS UserId ,
            u.user_name AS UserName ,
            u.is_change_pwd AS IsChangePwd ,
            u.enable_flag AS EnableFlag ,
            u.created_time AS CreatedTime
    FROM    dbo.t_rights_user AS u
            LEFT JOIN dbo.t_rights_user_organization AS userOrg ON u.id = userOrg.user_id
    WHERE   userOrg.organization_id IN @OrgIds
)

--分页
SELECT r.*
FROM    ( 
			SELECT ROW_NUMBER() OVER(ORDER BY cu.id) AS RowNum, cu.* FROM cte_paging_user AS cu
        ) AS r
WHERE   r.RowNum BETWEEN @Start AND @End;

--total
SELECT COUNT(DISTINCT u.id)
FROM    dbo.t_rights_user AS u
        LEFT JOIN dbo.t_rights_user_organization AS userOrg ON u.id = userOrg.user_id
WHERE   userOrg.organization_id IN @OrgIds;


--获取所有用户
SELECT  r.*
FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY u.created_time DESC ) AS RowNum ,
                    u.id ,
                    u.user_id AS UserId ,
                    u.user_name AS UserName ,
                    u.is_change_pwd AS IsChangePwd ,
                    u.enable_flag AS EnableFlag ,
                    u.created_time AS CreatedTime
          FROM      dbo.t_rights_user AS u
        ) AS r
WHERE   r.RowNum BETWEEN @Start AND @End;

--获取所有用户total
SELECT COUNT(DISTINCT u.id) FROM dbo.t_rights_user AS u;



--用户-机构
SELECT * FROM dbo.t_rights_user_organization;

--INSERT INTO dbo.t_rights_user_organization
--        ( user_id, organization_id )
--VALUES  
--( 17,2),
--( 16,2);


--角色
SELECT * FROM dbo.t_rights_role;

--用户-角色
SELECT * FROM dbo.t_rights_user_role;

--INSERT INTO dbo.t_rights_user_role
--        ( user_id, role_id )
--VALUES  
--( 17,1),
--( 16,1);

--菜单
SELECT * FROM dbo.t_rights_menu;

--按钮
SELECT * FROM dbo.t_rights_button;

--菜单-按钮
SELECT * FROM dbo.t_rights_menu_button;

SELECT * FROM dbo.t_rights_menu_button AS menuButton
WHERE menuButton.menu_id= 7;

--INSERT INTO dbo.t_rights_menu_button
--        ( menu_id, button_id )
--VALUES  
--( 7,2),
--( 7,3),
--( 7,4),
--( 7,9);

--角色-菜单-按钮
SELECT * FROM dbo.t_rights_role_menu_button;

SELECT * FROM dbo.t_rights_role_menu_button AS roleMenuButton
WHERE roleMenuButton.role_id= 1
AND roleMenuButton.menu_id= 7;

--INSERT INTO dbo.t_rights_role_menu_button
--        ( role_id, menu_id, button_id )
--VALUES  
--( 1,7,2 ),
--( 1,7,3 ),
--( 1,7,4 ),
--( 1,6,9 );

--当前用户可以访问的菜单
SELECT menu.id, menu.name, menu.parent_id AS ParentId, menu.code, menu.url, menu.icon,menu.sort,
menu.created_by AS CreatedBy, menu.created_time AS CreatedTime,
menu.last_updated_by AS LastUpdatedBy, menu.last_updated_time AS LastUpdatedTime,* 
FROM dbo.t_rights_menu AS menu
LEFT JOIN dbo.t_rights_role_menu_button AS roleMenuButton ON menu.id= roleMenuButton.menu_id
LEFT JOIN dbo.t_rights_user_role AS userRole ON roleMenuButton.role_id = userRole.role_id
LEFT JOIN dbo.t_rights_user AS u ON userRole.user_id = u.id
--WHERE u.id= @UserId
WHERE u.id= 4
ORDER BY menu.parent_id, menu.sort;

--查询用户
SELECT u.user_id AS UserId, u.user_name AS UserName, u.is_change_pwd AS IsChangePwd, u.enable_flag AS EnableFlag, u.created_by AS CreatedBy,
u.created_time AS CreatedTime, u.last_updated_by AS LastUpdatedBy, u.last_updated_time AS LastUpdatedTime,* 
FROM dbo.t_rights_user AS u
WHERE u.id= @Id;

UPDATE dbo.t_rights_user SET is_change_pwd= 1, password= @Password, last_updated_by= @LastUpdatedBy, last_updated_time= @LastUpdatedTime WHERE id= @Id;

UPDATE dbo.t_rights_user SET password= 'e10adc3949ba59abbe56e057f20f883e', is_change_pwd= 0 WHERE id= 4;


--我的信息
--帐户信息，角色和所属机构
SELECT u.user_id AS UserId, u.user_name AS UserName, u.created_time AS CreatedTime,* 
FROM dbo.t_rights_user AS u
LEFT JOIN dbo.t_rights_user_organization AS userOrg ON u.id= userOrg.user_id
LEFT JOIN dbo.t_rights_organization AS org ON userOrg.organization_id= org.id
LEFT JOIN dbo.t_rights_user_role AS userRole ON u.id= userRole.user_id
LEFT JOIN dbo.t_rights_role AS r ON userRole.role_id= r.id
WHERE u.id= @Id;

--获取当前用户当前页面可以访问的按钮列表
SELECT * FROM dbo.t_rights_button AS button
LEFT JOIN dbo.t_rights_role_menu_button AS roleMenuButton ON button.id= roleMenuButton.button_id
LEFT JOIN dbo.t_rights_menu AS menu ON roleMenuButton.menu_id= menu.id
LEFT JOIN dbo.t_rights_user_role AS userRole ON userRole.role_id= roleMenuButton.role_id
LEFT JOIN dbo.t_rights_user AS u ON u.id= userRole.user_id
--WHERE u.id= @UserId AND menu.code= @MenuCode;
WHERE u.id= 4 AND menu.code= 'organization';

--获取指定机构的所有子机构
SELECT org.parent_id AS ParentId,org.organization_type AS OrganizationType, org.enable_flag AS EnableFlag,
org.created_by AS CreatedBy, org.created_time AS CreatedTime, org.last_updated_by AS LastUpdatedBy, org.last_updated_time AS LastUpdatedTime,* 
FROM dbo.t_rights_organization AS org
WHERE org.enable_flag= 1 AND org.parent_id= @ParentId;

--修改机构
UPDATE dbo.t_rights_organization SET name= @OrgName, parent_id= @ParentId, sort= @Sort, last_updated_by= @LastUpdatedBy, last_updated_time= @LastUpdatedTime WHERE id= @Id;

SELECT org.parent_id AS ParentId,org.organization_type AS OrganizationType, org.enable_flag AS EnableFlag,
org.created_by AS CreatedBy, org.created_time AS CreatedTime, org.last_updated_by AS LastUpdatedBy, org.last_updated_time AS LastUpdatedTime,* 
FROM dbo.t_rights_organization AS org
WHERE org.enable_flag= 1 AND org.parent_id= @ParentId
ORDER BY org.code, org.sort;

--新增用户
INSERT INTO dbo.t_rights_user VALUES ( @UserId ,@Password ,@UserName ,@IsChangePwd ,@EnableFlag ,@CreatedBy ,@CreatedTime ,@LastUpdatedBy ,@LastUpdatedTime);

--修改用户
UPDATE dbo.t_rights_user SET user_id= @UserId, user_name= @UserName, enable_flag= @EnableFlag, is_change_pwd= @IsChangePwd, last_updated_by= @LastUpdatedBy, last_updated_time= @LastUpdatedTime WHERE id= @Id;

--删除用户
DELETE FROM dbo.t_rights_user WHERE id= @Id;

--查询用户
SELECT u.user_id AS UserId, u.user_name AS UserName, u.is_change_pwd AS IsChangePwd, u.enable_flag AS EnableFlag,
u.created_by AS CreatedBy, u.created_time AS CreatedTime, u.last_updated_by AS LastUpdatedBy, u.last_updated_time AS LastUpdatedTime,* 
FROM dbo.t_rights_user AS u WHERE u.id= @Id;


SELECT  u.user_id AS UserId ,
        u.user_name AS UserName ,
        u.is_change_pwd AS IsChangePwd ,
        u.enable_flag AS EnableFlag ,
        u.created_by AS CreatedBy ,
        u.created_time AS CreatedTime ,
        u.last_updated_by AS LastUpdatedBy ,
        u.last_updated_time AS LastUpdatedTime ,
        *
FROM    dbo.t_rights_user AS u
ORDER BY u.id;


--依据userId获取用户
SELECT TOP 1 * FROM dbo.t_rights_user AS u WHERE u.user_id= @UserId;

--删除用户
DELETE FROM dbo.t_rights_user WHERE id IN @Ids;

--解除用户-机构
DELETE FROM dbo.t_rights_user_organization WHERE user_id IN @Ids;

--解除用户-角色
DELETE FROM dbo.t_rights_user_role WHERE user_id IN @Ids;

--获取用户所属机构
SELECT org.parent_id AS ParentId, org.organization_type AS OrganizationType, org.enable_flag AS EnableFlag,
org.created_by AS CreatedBy, org.created_time AS CreatedTime, org.last_updated_by AS LastUpdatedBy, org.last_updated_time AS LastUpdatedTime,*
FROM dbo.t_rights_organization AS org
LEFT JOIN dbo.t_rights_user_organization AS userOrg ON org.id= userOrg.organization_id
LEFT JOIN dbo.t_rights_user AS u ON userOrg.user_id= u.id
WHERE u.id= @UserId;

--获取用户拥有角色
SELECT r.organization_id AS OrganizationId, r.created_by AS CreatedBy, r.created_time AS CreatedTime, r.last_updated_by AS LastUpdatedBy,
r.last_updated_time AS LastUpdatedTime,* 
FROM dbo.t_rights_role AS r
LEFT JOIN dbo.t_rights_user_role AS userRole ON r.id= userRole.role_id
LEFT JOIN dbo.t_rights_user AS u ON userRole.user_id= u.id
WHERE u.id= @UserId;

--用户设置机构
--先删除所选用户原来的所属机构
DELETE FROM dbo.t_rights_user_organization WHERE user_id IN @UserIds;

SELECT * FROM dbo.t_rights_organization;
--角色管理
SELECT * FROM dbo.t_rights_role;

SELECT * FROM dbo.t_rights_user_role WHERE role_id= 1;

--UPDATE dbo.t_rights_role SET organization_id= 12 WHERE id= 3;

--插入
INSERT INTO dbo.t_rights_role VALUES (@Name ,@Description ,@OrganizationId ,@CreatedBy ,@CreatedTime ,@LastUpdatedBy ,@LastUpdatedTime);

--修改
UPDATE dbo.t_rights_role SET name= @Name, description= @Description, organization_id= @OrganizationId, last_updated_by= @LastUpdatedBy,
last_updated_time= @LastUpdatedTime WHERE id= @Id;

--删除
DELETE FROM dbo.t_rights_role WHERE id= @Id;

--查询by id
SELECT r.organization_id AS OrganizationId, r.created_by AS CreatedBy,r.created_time AS CreatedTime,
r.last_updated_by AS LastUpdatedBy,r.last_updated_time AS LastUpdatedTime,* 
FROM dbo.t_rights_role AS r
WHERE r.id= @Id;

--查询所有
SELECT r.organization_id AS OrganizationId, r.created_by AS CreatedBy,r.created_time AS CreatedTime,
r.last_updated_by AS LastUpdatedBy,r.last_updated_time AS LastUpdatedTime,* 
FROM dbo.t_rights_role AS r

--获取所有角色并分页
SELECT  rs.*
FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY r.created_time DESC ) AS RowNum ,
					r.id,
					r.name,
					r.description,
                    r.organization_id AS OrganizationId ,
                    r.created_by AS CreatedBy ,
                    r.created_time AS CreatedTime ,
                    r.last_updated_by AS LastUpdatedBy ,
                    r.last_updated_time AS LastUpdatedTime ,
                    org.name AS OrgName
          FROM      dbo.t_rights_role AS r
          LEFT JOIN dbo.t_rights_organization AS org ON r.organization_id= org.id
        ) AS rs
WHERE   rs.RowNum BETWEEN @Start AND @End;

--获取所有角色total
SELECT COUNT(DISTINCT r.id) FROM dbo.t_rights_role AS r;


--获取指定机构(包括所有子机构)的角色并分页
SELECT  rs.*
FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY r.created_time DESC ) AS RowNum ,
					r.id,
					r.name,
					r.description,
                    r.organization_id AS OrganizationId ,
                    r.created_by AS CreatedBy ,
                    r.created_time AS CreatedTime ,
                    r.last_updated_by AS LastUpdatedBy ,
                    r.last_updated_time AS LastUpdatedTime ,
                    org.name AS OrgName
          FROM      dbo.t_rights_role AS r
          LEFT JOIN dbo.t_rights_organization AS org ON r.organization_id= org.id
          WHERE r.organization_id IN @OrgIds
        ) AS rs
WHERE   rs.RowNum BETWEEN @Start AND @End;

--获取指定机构(包括所有子机构)的角色total
SELECT COUNT(DISTINCT r.id) FROM dbo.t_rights_role AS r
WHERE r.organization_id IN @OrgIds;


--获取指定角色下的所有用户(分页)
SELECT  rs.*
FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY u.created_time DESC ) AS RowNum ,
                    u.id ,
                    u.user_id AS UserId ,
                    u.user_name AS UserName ,
                    u.is_change_pwd AS IsChangePwd ,
                    u.enable_flag AS EnableFlag ,
                    u.created_by AS CreatedBy ,
                    u.created_time AS CreatedTime ,
                    u.last_updated_by AS LastUpdatedBy ,
                    u.last_updated_time AS LastUpdatedTime
          FROM      dbo.t_rights_user AS u
                    LEFT JOIN dbo.t_rights_user_role AS userRole ON u.id = userRole.user_id
          WHERE     userRole.role_id = @RoleId
        ) AS rs
WHERE   rs.RowNum BETWEEN @Start AND @End;

--获取指定角色下的所有用户total
SELECT  COUNT(DISTINCT u.id)
FROM    dbo.t_rights_user AS u
        LEFT JOIN dbo.t_rights_user_role AS userRole ON u.id = userRole.user_id
WHERE   userRole.role_id = @RoleId;


--依据角色名获取角色
SELECT * FROM dbo.t_rights_role AS r WHERE r.name= @RoleName;

----删除指定角色
--DELETE FROM dbo.t_rights_role WHERE id= @RoleId;

----删除用户角色
--DELETE FROM dbo.t_rights_user_role WHERE role_id= @RoleId;

----删除角色菜单按钮
--DELETE FROM dbo.t_rights_role_menu_button WHERE role_id= @RoleId;

SELECT * FROM dbo.t_rights_user_role WHERE role_id= 4;

SELECT * FROM dbo.t_rights_role_menu_button WHERE role_id= 4;

--设置角色
SELECT * FROM dbo.t_rights_role;

SELECT * FROM dbo.t_rights_user_role;

----先删除
--DELETE FROM dbo.t_rights_user_role WHERE user_id IN @UserIds;

----再添加
--INSERT INTO dbo.t_rights_user_role VALUES ( @UserId,@RoleId);

SELECT * FROM dbo.t_rights_menu;

SELECT * FROM dbo.t_rights_button;

SELECT * FROM dbo.t_rights_menu_button AS menuButton
WHERE menuButton.menu_id= 5;


--为角色授权
SELECT * FROM dbo.t_rights_role;

SELECT * FROM dbo.t_rights_role_menu_button AS roleMenuButton
WHERE roleMenuButton.role_id= 1 AND roleMenuButton.button_id= 0
ORDER BY menu_id, button_id;

SELECT menu.id AS MenuId ,
        menu.name AS MenuName ,
        menu.parent_id AS MenuParentId ,
        menu.icon AS MenuIcon ,
        button.id AS ButtonId ,
        button.name AS ButtonName ,
        button.icon AS ButtonIcon ,
        roleMenuButton.role_id AS RoleId ,
        CASE WHEN ISNULL(roleMenuButton.button_id, 0) = 0 THEN 'false'
             ELSE 'true'
        END Checked
FROM    dbo.t_rights_menu AS menu
        LEFT JOIN dbo.t_rights_menu_button AS menuButton ON menu.id = menuButton.menu_id
        LEFT JOIN dbo.t_rights_button AS button ON menuButton.button_id = button.id
        LEFT JOIN dbo.t_rights_role_menu_button AS roleMenuButton ON ( roleMenuButton.menu_id = menu.id
                                                              AND roleMenuButton.button_id = button.id
                                                              AND roleMenuButton.role_id = 1
                                                              )
ORDER BY menu.parent_id ,
        menu.sort ,
        button.sort;
        
--先删除该角色所拥有的菜单按钮
DELETE FROM dbo.t_rights_role_menu_button WHERE role_id= @RoleId AND button_id!=0;

--再添加该角色所选择的菜单按钮
INSERT INTO dbo.t_rights_role_menu_button VALUES  ( @RoleId,@MenuId,@ButtonId);

--为组织机构菜单分配按钮
SELECT * FROM dbo.t_rights_menu;

SELECT * FROM dbo.t_rights_button;

SELECT * FROM dbo.t_rights_menu_button
WHERE menu_id= 5;

--INSERT INTO dbo.t_rights_menu_button
--        ( menu_id, button_id )
--VALUES  
--( 5,2),
--( 5,3),
--( 5,4),
--( 5,11),
--( 5,12);

--INSERT INTO dbo.t_rights_role_menu_button
--        ( role_id, menu_id, button_id )
--VALUES  
--( 1,1,0),
--( 1,2,0),
--( 1,3,0),
--( 1,4,0),
--( 1,14,0);

--菜单管理
SELECT * FROM dbo.t_rights_menu;

--插入
--INSERT INTO dbo.t_rights_menu VALUES  ( @Name ,@ParentId ,@Code ,@Url ,@Icon ,@Sort ,@CreatedBy ,@CreatedTime ,@LastUpdatedBy ,@LastUpdatedTime);

--修改
--UPDATE dbo.t_rights_menu SET name=@Name, url= @Url, icon= @Icon, sort=@Sort, last_updated_by= @LastUpdatedBy, last_updated_time= @LastUpdatedTime
--WHERE id= @Id;

--删除
--DELETE FROM dbo.t_rights_menu WHERE id= @Id;

--查询by id
SELECT menu.parent_id AS ParentId,
menu.created_by AS CreatedBy,
menu.created_time AS CreatedTime,
menu.last_updated_by AS LastUpdatedBy,
menu.last_updated_time AS LastUpdatedTime,
* FROM dbo.t_rights_menu AS menu
ORDER BY menu.parent_id, menu.sort;

--查询所有菜单


--按钮管理
SELECT * FROM dbo.t_rights_button;
--插入
--INSERT INTO dbo.t_rights_button VALUES (@Name ,@Code ,@Icon ,@Sort ,@CreatedBy ,@CreatedTime ,@LastUpdatedBy ,@LastUpdatedTime);

--更新
--UPDATE dbo.t_rights_button SET name=@Name, icon= @Icon, sort=@Sort, last_updated_by= @LastUpdatedBy, last_updated_time= @LastUpdatedTime WHERE id= @Id;


--查询by id
--SELECT  btn.created_by AS CreatedBy ,
--        btn.created_time AS CreatedTime ,
--        btn.last_updated_by AS LastUpdatedBy ,
--        btn.last_updated_time AS LastUpdatedTime ,
--        *
--FROM    dbo.t_rights_button AS btn
--ORDER BY btn.sort;

--菜单
SELECT * FROM dbo.t_rights_menu;

--按钮
SELECT * FROM dbo.t_rights_button;

--菜单-按钮
SELECT * FROM dbo.t_rights_menu_button
WHERE menu_id= 8;

SELECT menuButton.menu_id AS MenuId, menuButton.button_id AS ButtonId,* 
FROM dbo.t_rights_menu_button AS menuButton
WHERE menuButton.menu_id= 8;

--角色-菜单-按钮
SELECT * FROM dbo.t_rights_role_menu_button
WHERE role_id= 1 AND menu_id= 9;

--INSERT INTO dbo.t_rights_menu_button
--        ( menu_id, button_id )
--VALUES  
--( 8,2),
--( 8,3),
--( 8,4),
--( 8,10),
--( 8,11),
--( 8,12);

--INSERT INTO dbo.t_rights_role_menu_button
--        ( role_id, menu_id, button_id )
--VALUES  
--( 1,8,2),
--( 1,8,3),
--( 1,8,4),
--( 1,8,10),
--( 1,8,11),
--( 1,8,12);

--为菜单分配按钮
--删除原来的菜单按钮
--DELETE FROM dbo.t_rights_menu_button WHERE menu_id= @MenuId;

----删除原来的角色菜单按钮
--DELETE FROM dbo.t_rights_role_menu_button WHERE menu_id= @MenuId AND button_id= @ButtonId;

----新增菜单按钮
--INSERT INTO dbo.t_rights_menu_button VALUES (@MenuId,@ButtonId);


--按钮管理
--
SELECT * FROM dbo.t_rights_button;

SELECT * FROM dbo.t_rights_menu_button AS menuButton
WHERE menuButton.menu_id= 9;

--获取所有按钮(分页)
SELECT rs.* FROM
(SELECT ROW_NUMBER() OVER (ORDER BY btn.created_time DESC) AS RowNum, btn.created_time AS CreatedTime, btn.last_updated_time AS LastUpdatedTIme,* 
FROM dbo.t_rights_button AS btn) AS rs
WHERE rs.RowNum BETWEEN @Start AND @End;

--获取所有按钮total
SELECT COUNT(btn.id) FROM dbo.t_rights_button AS btn;

--依据name查询
SELECT * FROM dbo.t_rights_button WHERE code= @Code;


--组织机构
SELECT * FROM dbo.t_rights_organization;

--删除机构(支持批量)
--DELETE FROM dbo.t_rights_organization WHERE id IN @Ids;

----删除机构-用户
--DELETE FROM dbo.t_rights_user_organization WHERE organization_id IN @OrgIds;

--用户
SELECT * FROM dbo.t_rights_user;


SELECT * FROM dbo.t_rights_button;
--菜单
SELECT * FROM dbo.t_rights_menu;

--删除菜单数据
--DELETE FROM dbo.t_rights_menu WHERE id IN @MenuIds;

----删除菜单按钮数据
SELECT * FROM dbo.t_rights_menu_button WHERE menu_id= 30;

--DELETE FROM dbo.t_rights_menu_button WHERE menu_id IN @MenuIds;

----删除角色菜单按钮数据
SELECT * FROM dbo.t_rights_role_menu_button WHERE menu_id= 30;

--DELETE FROM dbo.t_rights_role_menu_button WHERE menu_id IN @MenuIds;


--删除按钮数据
--DELETE FROM dbo.t_rights_button WHERE id= @ButtonId;

----删除菜单按钮数据
--DELETE FROM dbo.t_rights_menu_button WHERE button_id= @ButtonId;

----删除角色菜单按钮数据
--DELETE FROM dbo.t_rights_role_menu_button WHERE button_id= @ButtonId;

--按钮
SELECT * FROM dbo.t_rights_button AS btn
ORDER BY btn.last_updated_time DESC;

--菜单
SELECT * FROM dbo.t_rights_menu AS menu
ORDER BY menu.last_updated_time DESC;

--菜单按钮
SELECT * FROM dbo.t_rights_menu_button AS menuBtn
WHERE menu_id= 30;

--角色菜单按钮
SELECT * FROM dbo.t_rights_role_menu_button WHERE menu_id= 30;

SELECT * FROM dbo.t_rights_organization;

--用户拥有的角色
SELECT userRole.id, userRole.user_id AS UserId, userRole.role_id AS RoleId FROM dbo.t_rights_user AS u
LEFT JOIN dbo.t_rights_user_role AS userRole ON u.id= userRole.user_id
WHERE u.id= @UserId;



