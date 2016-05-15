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