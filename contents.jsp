<%@ page contentType="text/html;charset=GBK" %>
<%@include file="checkvalid.jsp"%>
<HTML>
	<head>
		<title>用户留言信息</title>
	</head>

	<body>
<form   name="login" method="post" action="indexjsp.jsp">
<p>用户留言信息：</p>
<p><textarea name="message" rows="4" cols="60" ></textarea></p>
<input type="submit" name="submit" value="提交" ><!--onClick="return checkvalid2()"-->
</form>
<a href="main.jsp">返回上一页</a>
<a href="logout.jsp">注销</a>
	</body>
</HTML>