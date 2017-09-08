<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

</head>  
<body>
    <form action="a" name="frm1">
        <input type="text" value="闫克起真帅" />
        <input type="button" value="按钮" id="btn" />
    </form>
    <form action="b" name="frm2"></form>
    
</body>
<script type="text/javascript">
    // var fs=document.forms;//获取所有的表单对象
     
    // alert(fs[0].action);//获取指定的表单可以通过下标完成
    
    //1.如何获取网页中的表单对象
       // document.forms[n]
       // document.表单名称
    //2.表单对象中的属性和方法
       // method: 设置表单的提交方式   获取表单的提交方式
       // action: 设置表单的提交路径   获取表单的提交路径
       // submit(): 提交表单
       // reset(): 表单重置
    //3.js的函数格式.  function 方法名(参数列表){}   
         //js中不存在方法的重载. 
       
 /*   function show(v,n){//n=undefined  
      alert("fun1"+v+",--"+n);
   }
   show(12,15,25); */
    
    ////匿名方法   
    
    document.getElementById("btn").onclick=function(){
	   
     };
    
    function fun(){
	   alert("我是有名方法");
   }
    
    
    
</script>
</html>