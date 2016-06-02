<%@ page contentType="text/html;charset=GBK" %>
<%@include file="checkvalid.jsp"%>
<HTML>
<head>
	<title>用户留言面板</title>
</head>

<body>
	<form  name="login" method="post" action="indexjsp.jsp">
		<p>用户留言信息：</p>
		留言标题：
		<input type="text" name="biaoti" size="57">
		<br/>
		<br/>
		留言内容：
		<textarea name="message" rows="4" cols="60" ></textarea>
		<br/>
		<br/>
		<input type="submit" name="submit" value="提交" ></form>
	<a href="main.jsp">返回上一页</a>
	<a href="logout.jsp">注销</a>
</body>
</HTML>