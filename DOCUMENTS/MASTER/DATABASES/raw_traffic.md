raw_traffic表 原始流量表
===================

time分区/archive引擎/1天轮转

| 字段  | 类型 | 说明 |
|-------|------|------|
| **node_id** | uint(10) | 节点ID |
| **app_id** | uint(10) | 应用ID|
| **time**| uint(10)| 时间|
| pv| uint(10)| 访问统计|
| hit_pv| uint(10)| 命中访问统计|
| byte| uint(10)| 字节统计|
| hit_byte| uint(10)| 命中字节统计|
| 2xx_pv| uint(10)| 2xx访问统计|
| 3xx_pv| uint(10)| 3xx访问统计|
| 4xx_pv| uint(10)| 4xx访问统计|
| 5xx_pv| uint(10)| 5xx访问统计|
