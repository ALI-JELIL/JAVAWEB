<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>Java Web</title>
</head>
<body>

	<%Connection conn=null;
  try
   {
      String uid=request.getParameter("username");
      String pwd=request.getParameter("password");

 	   Class.forName("com.mysql.jdbc.Driver");     
	   String url="jdbc:mysql://localhost:3306/news";
     conn=DriverManager.getConnection(url,"root","123456");
       PreparedStatement st=conn.prepareStatement("insert into tb1 values(?,?)");
      st.setString(1,uid);
      st.setString(2,pwd);
     
       int count=st.executeUpdate();       
      out.println("影响数据的行数"+count);
   }
  catch(Exception e)
  {
    out.println("用户名已被注册，请尝试其他用户名。。。");
     out.println(e.getMessage());
   }
   finally
  {
     conn.close();
   }
%>
</body>
</html>