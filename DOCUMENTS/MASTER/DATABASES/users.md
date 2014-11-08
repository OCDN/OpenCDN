users 用户表
=========

| 字段  | 类型 | 说明 |
|-------|------|------|
| **user_id** | uint(10) | 用户ID |
| *account* | varchar(255) | 登录帐号 |
| *name* | varchar(255) | 昵称 |
| *mail* | varchar(255) | 邮件 |
| *moblie* | uint(15) | 手机 |
| moblie_verify | utinyint(1) | 手机认证 |
| passwd | char(32) | 密码 |
| passwd_salt | char(32) | 密码salt |
| create_time | uint(10) | 创建时间|
| update_time | uint(10) | 修改时间|
