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