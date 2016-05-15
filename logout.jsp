<%@ page contentType="text/html;charset=GBK" %>
<%
   session.invalidate();
   response.sendRedirect("login.html");
%>