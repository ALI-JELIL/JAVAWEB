<%@ page language="java" contentType="text/html; charset=utf-8"  
    pageEncoding="utf-8"%>  
    <%@page import="java.net.URLEncoder" %>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
<title>写入cookie</title>  
</head>  
<body>  
<%  
request.setCharacterEncoding("GB2312");//设置请求的编译为utf-8  
String user=URLEncoder.encode(request.getParameter("uid"),"utf-8");//获取用户名  
Cookie cookie=new Cookie("lee",user+"#"+new java.util.Date().toLocaleString());//创建并实例化cookie对象  
cookie.setMaxAge(60*60*24*30);//设置cookie有效期为30天  
response.addCookie(cookie);  
%>  
<script type="text/javascript">window.location.href=\'#\'" /script>  
</body>  
</html>  