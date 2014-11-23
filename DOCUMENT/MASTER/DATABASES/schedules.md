schedules 表  调度组表
===============

| 字段  | 类型 | 说明 |
|-------|------|------|
| **schedule_id** | uint(10) | 调度组ID |
| node_id| uint(10) | 节点ID|
| name| varchar(255)| 调度组名称|
| remark| varchar(255)| 备注|
| create_time| uint(10)| 创建时间|
| update_time| uint(10)| 修改时间|
| status| utinyint(1)| 0:公开,1:私有,2:需要申请|
