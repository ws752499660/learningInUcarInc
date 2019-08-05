# 花火溯琦（花火BBS重构）  
一个使用spring boot+spring mvc+mybatis+JSP的BBS  

## 具体功能和花火BBS一致
* 用户登录
* 留言/修改留言
* 修改个人信息
* 根据用户ID查询发言
* 浏览留言界面以10个为一页进行分页

## 安全特性  
* 基于mybatis从而实现了防止SQL注入
* 使用org.apache.commons.lang3的StringEscapeUtils类的相关方法杜绝了HTML注入
* 使用MD5（并加盐）加密用户密码存储在数据库中
* 通过对登录用户的身份和操作进行鉴别（详情见service的RightsCheck类）对用户行为进行限制
