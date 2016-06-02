<%@page language="java" contentType="text/html;charset=GB2312" %>
<%@page import="java.util.*" %>
<%@ page import="java.sql.*"%>

<%!
StringBuffer Trans(StringBuffer sour)
{
for(int i=0;i<sour.length();i++)
{
if(sour.substring(i,i+1).equals("\n"))
{
sour.delete(i,i+1);
sour.insert(i,"<br>");
}
}
return sour;
}
%>

<%request.setCharacterEncoding("GB2312");

     Connection conn=null;
    try
    {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/news";
       conn=DriverManager.getConnection(url,"root","123456");  
       Statement st=conn.createStatement();
       ResultSet rs=st.executeQuery("select name from tb1 ");

      while(rs.next())
       {
        String username=rs.getString(1);
       out.println("用户名:"+username+"<br>");
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


     String str1=request.getParameter("biaoti");
     String str=request.getParameter("message");
     StringBuffer message=new StringBuffer(str);
     StringBuffer biaoti=new StringBuffer(str1);

     biaoti=Trans(biaoti);
     out.println("留言标题:<br>");
     out.println(biaoti+"\n");
     message=Trans(message);
     out.println("你的留言信息是:<br>");
     out.println(message+"\n");

%>
<br/>
<br/>
<a href="contents.jsp">返回上一页</a>
<a href="logout.jsp">注销</a>