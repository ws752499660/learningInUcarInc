# MiniMall  

基于JSP和servlet的实验性工程  
使用Tomcat 8.5.43  
基于maven-webapp archtype搭建

## 功能
* 登录
* 添加/删除商品
* 使用过滤器防止未登录就访问后续页面

## JSP
* index.jsp 登录/首页
* shopping.jsp 购物（添加商品到购物车）
* cart.jsp 购物车（查看已添加商品/删除商品）

## servlet  
* Login 负责将username添加到session
* LogOut 通过对session执行invalidate方法注销登录
* AddGoods 通过shopping传来的数据添加商品List到session中
* RemoveGoods 通过cart传来的数据删除商品List中的某项

## filter
* IsLoginFilter 通过拦截对cart.jsp和shopping.jsp的请求，通过对session中username存在进行核实判断用户是否登录