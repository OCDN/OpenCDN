OpenCDN 管理控制中心
=========

# 原则
- 所有的组件都能够独立运行
- 数据库表结构尽量保持每个模块的独立

# 需求梳理
- [需求文档 1.0](./REQUIRES/1.0.md)

# 组件
- 用户(users)
- 调度组(schedules)
- 节点(nodes)
- 流量(traffics)
- 负载(loads)
- 应用(apps)
- 日志(logs)

# 模块(模块可选择开启)
- dns DNS守护者【MySQL】
- app 应用守护者【MySQL】<--> 汇总流量/节点调度
- node 节点守护者【MySQL】<--> 节点状态处理
- heart 心跳采集者【MySQL】<-internet-> 节点 存放raw表
- service 服务提供者 (HTTP)

日志通过node
