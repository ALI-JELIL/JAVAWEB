<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>用户登录</title>
</head>
<body>  
	<%   
   Connection conn=null;
    try
    {
       String uid=request.getParameter("uid");
       String pwd=request.getParameter("pwd");

       Class.forName("com.mysql.jdbc.Driver");
      String url="jdbc:mysql://localhost:3306/news";
       conn=DriverManager.getConnection(url,"root","123456");
             
       Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery("select * from tb1");

      while(rs.next())
       {
        String username=rs.getString(1);
        String password=rs.getString(2);
       
       if(username.equals(uid) && password.equals(pwd))
         {
	         session.setAttribute("login","ok");
	         session.setMaxInactiveInterval(-1);
       	   response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
	          response.setHeader("Location","main.jsp"); 
          } 
         else 
          {
	        out.println("用户名或密码输入错误！");
	         //break;
          }
      }
    }
    catch(Exception e)
    {
     out.println("some error");
      out.println(e.toString());
    }
    finally
    {
      conn.close();
    }
%>
</body>
</html>