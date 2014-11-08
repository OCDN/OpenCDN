client traffice 实时流量摘要模块
================

# 设计

- 当前1分钟流量放在内存中，到1分钟之后，把内容统计一下，flush到本地存储中
- 本地存储先采用sqlite，后续可能考虑改为levelDB


# 关键点
- 同一个域名的必须打到同一个traffic,否则会影响汇总

# 日志摘要格式

    log_format realtime '$msec|$host|$status|$bytes_sent|$request_length|$request_time|$request_method|$content_type';  
  
  - $time_local 本地时间
  - $host 请求的host
  - $status HTTP CODE
  - $bytes_sent 发送给客户端的总字节数
  - $msec 日志写入时间。单位为秒，精度是毫秒
  - $request_length 用户请求长度
  - $request_time 用户请求时间
  - 把request_method和content_type放在最后的原因是可能存在攻击字符

# 数据库

## traffic.db/data
| 字段   | 类型 | 说明 |
|-------|------|-----|
| **app_id** | int | 应用ID |
| **time**| int | 时间(分钟)|
| domain| text | 域名(默认情况下为空，只有开启了分域名统计才会填入域名)|
| pv| int| 访问pv|
| pv_hit| int| 命中访问pv|
| pv_2xx| int| 2xx访问统计|
| pv_3xx| int| 3xx访问统计|
| pv_4xx| int| 4xx访问统计|
| pv_5xx| int| 5xx访问统计|
| byte| int| 字节统计(bytes_sent)|
| byte_hit| int| 命中字节|
| byte_req| int| 请求字节(request_length)|
| time_req| int| 请求响应时间(request_time)|

## traffic.db/data_type

| 字段   | 类型 | 说明 |
|-------|------|-----|
| **app_id** | int | 应用ID |
| **time**| int | 时间(分钟)|
| **type**| text| 类型(pic/css/js/video/other)|
| pv| int| 访问pv|
| pv_hit| int| 命中访问pv|
| pv_2xx| int| 2xx访问统计|
| pv_3xx| int| 3xx访问统计|
| pv_4xx| int| 4xx访问统计|
| pv_5xx| int| 5xx访问统计|
| byte| int| 字节统计(bytes_sent)|
| byte_hit| int| 命中字节|
| byte_req| int| 请求字节(request_length)|
| time_req| int| 请求响应时间(request_time)|

## traffic.db/data_method

| 字段   | 类型 | 说明 |
|-------|------|-----|
| **app_id** | int | 应用ID |
| **time**| int | 时间(分钟)|
| **method**| int| 方法(0:other/1:GET/2:HEAD/3:POST/4:PUT/5:DELETE/6:TRACE/7:CONNECT)|
| pv| int| 访问pv|
| pv_hit| int| 命中访问pv|
| pv_2xx| int| 2xx访问统计|
| pv_3xx| int| 3xx访问统计|
| pv_4xx| int| 4xx访问统计|
| pv_5xx| int| 5xx访问统计|
| byte| int| 字节统计(bytes_sent)|
| byte_hit| int| 命中字节|
| byte_req| int| 请求字节(request_length)|
| time_req| int| 请求响应时间(request_time)|


# 未来特性(待商议)
- 使用多个接收的pipe进行负载均衡
