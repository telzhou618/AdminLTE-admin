
### AdminLTE-admin 轻量级权限管理框架

### 项目说明
-------------
1. AdminLTE-admin是以SpringMVC+Mybatis+MySQL为核心开发的精简后台基础系统。
2. 包含用户管理,角色管理,部门管理,权限管理,菜单管理,日志管理等常用业务模块。
3. 使用AdminLTE作为前端UI框架。
4. 第三方Mybatis-plus作为ORM框架。
5. Encache权限缓存。
6. FreeMarker模板,页面拆分,封装公共部分。
7. Druid数据源,数据库监控。
8. 报表支持。

### 技术选型
-------------
AdminLTE、Spring MVC、Mybatis、Mybatis-Plus、Shiro、Mysql、Maven

### 快速开始
-------------
1. 创建数据库AdminLTE-admin,导入resource/sql/AdminLTE-admin.sql数据库脚本。
2. 把项目导入到eclipse中启动,端口为8080,上下文为/。
4. 地址栏输入 http://localhost.com:8080，账号/密码:admin/123456。

### 参考项目
-------------
1. https://github.com/almasaeed2010/AdminLTE
2. http://mp.baomidou.com/#/

### Docker部署
-------------
1. 安装好Docker环境,登录到Docker服务器。
2. git clone https://github.com/foreyer/AdminLTE-admin.git
3. cd AdminLTE-admin
4. docker build -t github.com/foreyer/AdminLTE_admin .
5. docker run -p 8080:8080 -t github.com/foreyer/AdminLTE_admin
6. http://ip:8080，账号/密码:admin/123456。
7. 也可以借助第三方docker平台完成部署,这样更加省事,如:daocloud,csphere等docker云平台。

### 实例截图
-------------
![](https://git.oschina.net/uploads/images/2017/0821/134254_7428309f_89451.png "1.png")
