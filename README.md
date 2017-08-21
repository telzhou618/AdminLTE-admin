#KAdmin 
### Spring+MyBatis+BootStrap后台框架
###  **一、项目说明** 
```
1. KangarooAdmin是以SpringMVC+Mybatis+MySQL为核心开发的精简后台基础系统。
2. 包含用户管理,角色管理,部门管理,权限管理,菜单管理,日志管理等常用业务模块。
3. 使用AdminLTE作为前端UI框架。
4. 第三方Mybatis-plus作为ORM框架。
5. Encache权限缓存。
6. FreeMarker模板,页面拆分,封装公共部分。
7. Druid数据源,数据库监控。
8. 报表支持。
```
###  **二、快速开始** 
```
1. 创建数据库kangarooadmin,导入resource/sql/kangarooadmin.sql数据库脚本。
2. 把项目导入到eclipse中启动,端口为8080,上下文为/。
4. 地址栏输入 http://localhost.com:8080，账号/密码:admin/123456。
```
###  **三、Docker部署,最新的KAdmin增加了Dockerfile,支持持续集成，自动化部署** 
```
1. 安装好Docker环境,登录到Docker服务器。
2. git clone https://git.oschina.net/zhougaojun/KangarooAdmin.git
3. cd KangarooAdmin
5. docker build -t git.oschina.net/zhougaojun/kangaroo_admin .
6. docker run -p 8080:8080 -t git.oschina.net/zhougaojun/kangaroo_admin
7. http://ip:8080，账号/密码:admin/123456。
8. 也可以借助第三方docker平台完成部署,这样更加省事,如:daocloud,csphere等docker云平台。
```
![输入图片说明](http://git.oschina.net/uploads/images/2017/0227/134231_4d568122_89451.png "在这里输入图片标题")