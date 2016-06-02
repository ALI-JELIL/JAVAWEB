<!--
<%@ page contentType="text/html;charset=GBK" %>
<%
    String uid=request.getParameter("uid");
    String pwd=request.getParameter("pwd");

	String usrr;
	String passw;
	/*
	if(Request.Params.Get("checkbox"))
	{
	usrr=request.getParameter("uid");;
	passw=request.getParameter("pwd");
	}
	out.println(usr);
	*/

	String usr[]={"a","b","c"};
	String passs[]={"123","123","123"};
	for(int i=0;i<3;i++)
    //if("sa".equals(uid) && "123".equals(pwd)) 
	if(usr[i].equals(uid) && passs[i].equals(pwd))
    {
	session.setAttribute("login","ok");
	session.setMaxInactiveInterval(-1);
       	response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
	response.setHeader("Location","main.jsp"); 
    } 
    else 
    {
	 out.println("用户名或密码输入错误！");
	 break;
    }
%>
-->
<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>Java Web</title>
</head>
<body>
	<%
   Connection conn=null;
    try
    {
       Class.forName("com.mysql.jdbc.Driver");
      String url="jdbc:mysql://localhost:3306/news";
       conn=DriverManager.getConnection(url,"root","123456");
             
       Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery("select * from tb1");

        String uid=request.getParameter("uid");
       String pwd=request.getParameter("pwd");

      while(rs.next())
       //{     
        //    out.println("  "+rs.getString(1));
        //  out.println("  "+rs.getString(2));
           //out.println("  "+rs.getString(3));
        //    out.println("<br>");
       // }
       {
        String username=rs.getString(1);
        String password=rs.getString(2);
       }
       if(uid==username&& pwd==password)
         {
	       session.setAttribute("login","ok");
	       session.setMaxInactiveInterval(-1);
       	   response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
	       response.setHeader("Location","main.jsp"); 
         } 
       else 
       {
	    out.println("用户名或密码输入错误！");
	    break;
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