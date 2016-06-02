<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title>Java Web</title>
</head>
<body>

	<%Connection conn=null;
  try
   {
      String uid=request.getParameter("name");
      String pwd=request.getParameter("password");

 	   Class.forName("com.mysql.jdbc.Driver");     
	   String url="jdbc:mysql://localhost:3306/news";
       conn=DriverManager.getConnection(url,"root","123456");
       PreparedStatement st=conn.prepareStatement("insert into tb1 values(?,?,?)");
      st.setString(1,"uid");
      st.setString(2,"pwd");
     
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
<!--
<%@ page contentType="text/html;charset=GBK" %>
<%
function getID(id) {
    return document.getElementById(id);
}    
//页面加载时调用的函数
function pageload(){    
	var strName=localStorage.getItem("keyName");    
	var strPass=localStorage.getItem("keyPass");    
	if(strName){        
		$$("username").value=strName;    
	}    
	if(strPass){        
		$$("pass1").value=strPass;    
	}
}
//单击“登录”按钮后调用的函数
function btn_click(){    
	var strName=getID("username").value;    
	var strPass=getID("pass1").value;    
	localStorage.setItem("keyName",strName);    
	if($$("chkSave").checked){       
		localStorage.setItem("keyPass",strPass);    
	}else{       
		localStorage.removeItem("keyPass");    
	}    
	getID("spnStatus").className="status";    
	getID("spnStatus").innerHTML="登录成功!";
}
%>
-->