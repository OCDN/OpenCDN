user_schedule 用户调度组权限表
===================

| 字段  | 类型 | 说明 |
|-------|------|------|
| **user_id** | uint(10) | 用户ID |
| **schedule_id**| varchar(255)| 调度组ID |
| priv | utinyint(1)| 权限 4:读取组内成员(r) 2:写入组内成员(w) 1:使用组(x) |
| create_time | uint(10)| 创建时间 |
| update_time | uint(10)| 修改时间|

