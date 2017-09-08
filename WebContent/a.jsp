<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript">
    window.onload=function(){
    	document.getElementById("username").onblur=ckUsername;
    	

    }
    function ckUsername(){
		   //1.创建XMLHttpRequest对象
		   var xmlHttp=createXmlHttpRequest();
		   //4.监听服务器的状态.
		   var flag=true;
		   xmlHttp.onreadystatechange=function(){
			   var data= xmlHttp.responseText; //ajax接受服务器响应的文本内容
			   if(xmlHttp.readyState==4){
				    if(data=="false"){
				    	document.getElementById("usernameMsg").innerHTML="该用户已被注册";
				    	flag=false;
				    }else{
				    	document.getElementById("usernameMsg").innerHTML="√";
				    	flag=true;
				    }
			   }
		   }
		   //2.通过该对象打开与服务器的交互
		   var name=document.getElementsByName("username")[0].value;
		   xmlHttp.open("get","AjaxServlet?username="+name,false);
		   //3.发送数据
		   xmlHttp.send(null);
		   return flag;
		   
	}
	function ckPassword(){
		var pass=document.getElementById("password").value;
		// 了解一些正则
		var myreg =  /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/; //正则表达式.
		                                                                               //
		if(!myreg.test(pass)){
			document.getElementById("passwordMsg").innerHTML="手机格式不正确";
			return false;
		}else{
			document.getElementById("passwordMsg").innerHTML="";
			return true;
		}
	}
	function ckSubmit(){
		if(ckUsername()&&ckPassword()){
			return true;  //如果ajax验证一些信息的同时  还要验证其他信息  这时必须使用同步.
		}
		return false;
	}
	
	function createXmlHttpRequest(){
		   var xmlHttp;
		   try{    //Firefox, Opera 8.0+, Safari
		           xmlHttp=new XMLHttpRequest();
		    }catch (e){
		           try{    //Internet Explorer
		                  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		            }catch (e){
		                  try{
		                          xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		                  }catch (e){}  
		           }//
		    }
		   return xmlHttp;
		 }
</script>
</head>
<body>
   <form action="b.jsp" onsubmit="return ckSubmit()">
      <input type="text" name="username" id="username"/><span id="usernameMsg"></span><br>
      <input type="text" name="password" id="password" onblur="ckPassword()"/><span id="passwordMsg"></span><br>
      <input type="submit" value="提交"/>
   </form>
</body>
</html>