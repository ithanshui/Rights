USE [RightsDB]
GO
/****** Object:  Table [dbo].[t_rights_user_role]    Script Date: 11/08/2016 18:23:30 ******/
SET IDENTITY_INSERT [dbo].[t_rights_user_role] ON
INSERT [dbo].[t_rights_user_role] ([id], [user_id], [role_id]) VALUES (1, 4, 1)
SET IDENTITY_INSERT [dbo].[t_rights_user_role] OFF
/****** Object:  Table [dbo].[t_rights_user_organization]    Script Date: 11/08/2016 18:23:30 ******/
SET IDENTITY_INSERT [dbo].[t_rights_user_organization] ON
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (1, 2, 24)
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (2, 4, 24)
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (3, 5, 24)
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (4, 6, 24)
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (5, 8, 24)
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (6, 9, 24)
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (7, 10, 7)
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (8, 11, 7)
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (9, 7, 25)
INSERT [dbo].[t_rights_user_organization] ([id], [user_id], [organization_id]) VALUES (10, 7, 26)
SET IDENTITY_INSERT [dbo].[t_rights_user_organization] OFF
/****** Object:  Table [dbo].[t_rights_user]    Script Date: 11/08/2016 18:23:30 ******/
SET IDENTITY_INSERT [dbo].[t_rights_user] ON
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (1, N'zhangsan', N'e10adc3949ba59abbe56e057f20f883e', N'张三', 0, 1, 1, CAST(0x0000A6AB00A00410 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (2, N'luning', N'e10adc3949ba59abbe56e057f20f883e', N'鲁宁', 0, 1, 1, CAST(0x0000A6AB00A00410 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (3, N'mcgrady', N'e10adc3949ba59abbe56e057f20f883e', N'麦迪', 0, 1, 1, CAST(0x0000A6AB00A00410 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (4, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'系统管理员', 1, 1, 0, CAST(0x0000A6AC0070D7E4 AS DateTime), 4, CAST(0x0000A6B201175662 AS DateTime))
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (5, N'zhangpeijie', N'e10adc3949ba59abbe56e057f20f883e', N'张沛洁', 1, 1, 0, CAST(0x0000A6B800A27A88 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (6, N'linjian', N'e10adc3949ba59abbe56e057f20f883e', N'林坚', 1, 1, 0, CAST(0x0000A6B800A27A88 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (7, N'taonengfa', N'e10adc3949ba59abbe56e057f20f883e', N'陶能发', 1, 1, 0, CAST(0x0000A6B800A27A88 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (8, N'jiangxiaoting', N'e10adc3949ba59abbe56e057f20f883e', N'姜晓婷', 1, 1, 0, CAST(0x0000A6B800A27A88 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (9, N'wangliwei', N'e10adc3949ba59abbe56e057f20f883e', N'王黎伟', 1, 1, 0, CAST(0x0000A6B800A27A88 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (10, N'wangxian', N'e10adc3949ba59abbe56e057f20f883e', N'王显', 1, 1, 0, CAST(0x0000A6B800A27A88 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_user] ([id], [user_id], [password], [user_name], [is_change_pwd], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (11, N'wuzhen', N'e10adc3949ba59abbe56e057f20f883e', N'吴榛', 1, 1, 0, CAST(0x0000A6B800A27A88 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_rights_user] OFF
/****** Object:  Table [dbo].[t_rights_role_menu_button]    Script Date: 11/08/2016 18:23:30 ******/
SET IDENTITY_INSERT [dbo].[t_rights_role_menu_button] ON
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (1, 1, 1, 0)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (2, 1, 2, 0)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (3, 1, 3, 0)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (4, 1, 4, 0)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (5, 1, 14, 0)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (6, 1, 5, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (7, 1, 6, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (8, 1, 7, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (9, 1, 8, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (10, 1, 9, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (11, 1, 10, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (12, 1, 11, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (13, 1, 12, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (14, 1, 13, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (15, 1, 15, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (16, 1, 16, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (17, 1, 17, 1)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (18, 1, 5, 2)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (19, 1, 5, 3)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (20, 1, 5, 4)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (21, 1, 5, 11)
INSERT [dbo].[t_rights_role_menu_button] ([id], [role_id], [menu_id], [button_id]) VALUES (22, 1, 5, 12)
SET IDENTITY_INSERT [dbo].[t_rights_role_menu_button] OFF
/****** Object:  Table [dbo].[t_rights_role]    Script Date: 11/08/2016 18:23:30 ******/
SET IDENTITY_INSERT [dbo].[t_rights_role] ON
INSERT [dbo].[t_rights_role] ([id], [name], [description], [organization_id], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (1, N'系统管理员', N'系统管理员,有最高权限', 0, 0, CAST(0x0000A6AC00432E70 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_role] ([id], [name], [description], [organization_id], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (2, N'研发主管', N'研发部门管理的权限', 0, 0, CAST(0x0000A6AC00432E70 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_role] ([id], [name], [description], [organization_id], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (3, N'运营主管', N'运营部门主管的权限', 0, 0, CAST(0x0000A6AC00432E70 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_rights_role] OFF
/****** Object:  Table [dbo].[t_rights_organization]    Script Date: 11/08/2016 18:23:30 ******/
SET IDENTITY_INSERT [dbo].[t_rights_organization] ON
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (1, N'优行商旅航空服务有限公司', 0, N'01', 0, 1, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (2, N'总经办', 1, N'01.01', 0, 1, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (3, N'人事财务IT', 1, N'01.02', 0, 2, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (4, N'研发中心', 1, N'01.03', 0, 3, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (6, N'用户体验部', 4, N'01.03.02', 0, 2, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (7, N'需求部', 4, N'01.03.03', 0, 3, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (8, N'客户服务中心', 1, N'01.04', 0, 4, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (9, N'呼叫顾问组', 8, N'01.04.01', 0, 1, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (10, N'客户经理', 8, N'01.04.02', 0, 2, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (11, N'在线顾问组', 8, N'01.04.03', 0, 3, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (12, N'运营中心', 1, N'01.05', 0, 5, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (13, N'国内机票组', 12, N'01.05.01', 0, 1, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (14, N'酒店高铁组', 12, N'01.05.02', 0, 2, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (15, N'特殊订单保障组', 12, N'01.05.03', 0, 3, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (16, N'国际票务中心', 1, N'01.06', 0, 6, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (17, N'营销中心', 1, N'01.07', 0, 7, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (18, N'深圳营销中心', 17, N'01.07.01', 0, 1, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (19, N'上海营销中心', 17, N'01.07.02', 0, 2, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (20, N'北京营销中心', 17, N'01.07.03', 0, 3, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (21, N'海南营销中心', 17, N'01.07.04', 0, 4, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (22, N'杭州营销中心', 17, N'01.07.05', 0, 5, 1, 1, CAST(0x0000A6AB00492564 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (24, N'研发部', 4, N'01.03.01', NULL, 1, 1, 4, CAST(0x0000A6B800AB7172 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (25, N'测试组', 24, N'01.03.01.01', NULL, 1, 1, 4, CAST(0x0000A6B801200A17 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_organization] ([id], [name], [parent_id], [code], [organization_type], [sort], [enable_flag], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (26, N'测试1组', 25, N'01.03.01.01.01', NULL, 1, 1, 4, CAST(0x0000A6B801209065 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_rights_organization] OFF
/****** Object:  Table [dbo].[t_rights_menu_button]    Script Date: 11/08/2016 18:23:30 ******/
SET IDENTITY_INSERT [dbo].[t_rights_menu_button] ON
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (1, 5, 1)
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (2, 6, 1)
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (3, 7, 1)
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (4, 8, 1)
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (5, 9, 1)
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (6, 10, 1)
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (7, 11, 1)
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (8, 12, 1)
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (9, 13, 1)
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (10, 15, 1)
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (11, 16, 1)
INSERT [dbo].[t_rights_menu_button] ([id], [menu_id], [button_id]) VALUES (12, 17, 1)
SET IDENTITY_INSERT [dbo].[t_rights_menu_button] OFF
/****** Object:  Table [dbo].[t_rights_menu]    Script Date: 11/08/2016 18:23:30 ******/
SET IDENTITY_INSERT [dbo].[t_rights_menu] ON
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (1, N'系统管理', 0, NULL, N'#', N'icon-cog', 1, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (2, N'其它', 0, NULL, N'#', N'icon-cog', 2, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (3, N'权限管理', 1, NULL, N'#', N'icon-cog', 1, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (4, N'日志管理', 1, NULL, N'#', N'icon-cog', 2, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (5, N'组织机构', 3, N'organization', N'Organization/Index', N'icon-cog', 1, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (6, N'用户管理', 3, N'user', N'User/Index', N'icon-cog', 2, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (7, N'角色管理', 3, N'role', N'Role/Index', N'icon-cog', 3, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (8, N'菜单管理', 3, N'menu', N'Menu/Index', N'icon-cog', 4, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (9, N'按钮管理', 3, N'button', N'Button/Index', N'icon-cog', 5, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (10, N'调试日志', 4, N'debug', N'DebugLog/Index', N'icon-cog', 1, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (11, N'错误日志', 4, N'error', N'ErrorLog/Index', N'icon-cog', 2, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (12, N'性能日志', 4, N'performance', N'PerformanceLog/Index', N'icon-cog', 3, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (13, N'Xml日志', 4, N'xml', N'XmlLog/Index', N'icon-cog', 4, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (14, N'流程管理', 2, NULL, N'#', N'icon-cog', 1, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (15, N'表单定义', 14, N'formdefine', N'FormDefine/Index', N'icon-cog', 1, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (16, N'流程定义', 14, N'flowdefine', N'FlowDefine/Index', N'icon-cog', 2, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_menu] ([id], [name], [parent_id], [code], [url], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (17, N'流程监控', 14, N'flowmonitor', N'FlowMonitor/Index', N'icon-cog', 3, 0, CAST(0x0000A6AC0064E678 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_rights_menu] OFF
/****** Object:  Table [dbo].[t_rights_button]    Script Date: 11/08/2016 18:23:30 ******/
SET IDENTITY_INSERT [dbo].[t_rights_button] ON
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (1, N'浏览', N'browser', N'icon-eye', 1, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (2, N'添加', N'add', N'icon-add', 2, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (3, N'修改', N'edit', N'icon-application_edit', 3, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (4, N'删除', N'delete', N'icon-delete', 4, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (5, N'导入', N'import', N'icon-page_excel', 5, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (6, N'导出', N'export', N'icon-page_excel', 6, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (7, N'设置机构', N'setorg', N'icon-group', 7, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (8, N'设置角色', N'setrole', N'icon-user_key', 8, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (9, N'角色授权', N'authorize', N'icon-key', 9, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (10, N'分配按钮', N'setbutton', N'icon-link', 10, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (11, N'全部展开', N'expandall', N'icon-expand', 11, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
INSERT [dbo].[t_rights_button] ([id], [name], [code], [icon], [sort], [created_by], [created_time], [last_updated_by], [last_updated_time]) VALUES (12, N'全部折叠', N'collapseall', N'icon-collapse', 12, 0, CAST(0x0000A651003CA62C AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_rights_button] OFF
