###  **KangarooAdmin** 
```
1.KangarooAdmin是以SpringMVC+Mybatis为核心开发的精简后台基础系统。
2.包含用户管理,角色管理,权限管理,菜单管理,日志管理等常用业务模块。
3.使用AdminLTE作为前端框架。
4.第三方Mybatis-plus作为ORM框架。
5.使用kisso单点登录。
6.encache权限缓存。
```
### 快速开始
1.创建数据库KangarooAdmin,导入resource/sql/kangarooadmin.sql数据库脚本。
2.把项目入到Eclipse中启动,端口为8080,上下文为/。
3.修改本地host加入如下一行:
  127.0.0.1 kangaroo.com
4.地址栏输入http://kangaroo.com:8080/login/index.html访问，账号admin/密码123456。
5.说明： 注意域名和端口可随意定义，但一定记得修改properties/sso.properties配置文件中的sso.cookie.domain和sso.login.url,这两个配置要和自己定义的一致即可。
### 截图
![输入图片说明](http://git.oschina.net/uploads/images/2016/1221/112111_edebae9b_89451.png "在这里输入图片标题")
![输入图片说明](http://git.oschina.net/uploads/images/2016/1215/175152_8b00f1b2_89451.png "在这里输入图片标题")
![输入图片说明](http://git.oschina.net/uploads/images/2016/1221/112135_155c0766_89451.png "在这里输入图片标题")