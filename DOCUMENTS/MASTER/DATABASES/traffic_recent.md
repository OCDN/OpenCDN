traffic_recent 最近流量表
======================

按照time来进行分区/归档引擎

| 字段  | 类型 | 说明 |
|-------|------|------|
| **app_id** | uint(10) | 应用ID |
| **node_id** | uint(10) | 节点ID |
| time| uint(10) | 时间(分钟)|
| pv| uint(10)| 访问统计|
| hit_pv| uint(10)| 命中访问统计|
| byte| uint(10)| 字节统计|
| hit_byte| uint(10)| 命中字节统计|
| 2xx_pv| uint(10)| 2xx访问统计|
| 3xx_pv| uint(10)| 3xx访问统计|
| 4xx_pv| uint(10)| 4xx访问统计|
| 5xx_pv| uint(10)| 5xx访问统计|
| req_time| uint(10)| 请求时间统计|
| res_time| uint(10)| 响应时间统计|
