<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
   <title>Java Web</title>
</head>
<body>
<%
/*01*/    Connection conn=null;
/*02*/    try
/*03*/    {
/*04*/        Class.forName("com.mysql.jdbc.Driver");
/*05*/	      String url="jdbc:mysql://localhost:3306/news";
/*06*/        conn=DriverManager.getConnection(url,"root","123456");
             
/*07*/        Statement st=conn.createStatement();
/*08*/        ResultSet rs=st.executeQuery("select * from tb1");
/*09*/        while(rs.next())
/*10*/        {     
/*11*/            out.println("  "+rs.getString(1));
/*12*/            out.println("  "+rs.getString(2));
/*13*/            //out.println("  "+rs.getString(3));
/*14*/            out.println("<br>");
/*15*/        }
/*16*/    }
/*17*/    catch(Exception e)
/*18*/    {
/*19*/      out.println("some error");
/*20*/      out.println(e.toString());
/*21*/    }
/*22*/    finally
/*23*/    {
/*24*/      conn.close();
/*25*/    }
%>  
</body>
</html>