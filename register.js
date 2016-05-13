// JavaScript Document
function $$(id) {
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
	var strName=$$("username").value;    
	var strPass=$$("pass1").value;    
	localStorage.setItem("keyName",strName);    
	if($$("chkSave").checked){       
		localStorage.setItem("keyPass",strPass);    
	}else{       
		localStorage.removeItem("keyPass");    
	}    
	$$("spnStatus").className="status";    
	$$("spnStatus").innerHTML="登录成功!";
}