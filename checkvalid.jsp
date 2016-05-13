<%
        Object val=session.getAttribute("login");
	String strval=(String)val;        
	if(!"ok".equals(strval))
        {
%>
	<jsp:forward page="login.html"/>        
<%
	}
%>