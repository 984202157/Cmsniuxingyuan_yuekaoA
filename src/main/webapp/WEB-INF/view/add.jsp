<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/resource/bootstrap.min.css" />
<script type="text/javascript" src="/resource/jquery-1.8.3.js"></script>
<script type="text/javascript" src="/resource/bootstrap.min.js"></script>
<script type="text/javascript">
$(function() {
	$.post("selectt",function(re){
		for ( var i in re) {
			$("[name=tid]").append("<option value='"+re[i].id+"'>"+re[i].name+"</option>");
		}
	},"json")
})
 function tj() {
	var shuju=$("form").serialize();
	alert(shuju);
	$.post("add",shuju,function(re){
		if(re){
			alert("添加成功");
			location="list";
		}else{
			alert("添加失败");
		}
	},"json")
	
} 

</script>
</head>
<body>
<form action="add" method="post">
<hr>
付款单号:<input type="text" name="funum">&nbsp;
类型:<input type="text" name="futype" >&nbsp;
 经办人:<input type="text" name="funame">&nbsp;
所属部门:<input type="text" name="com">&nbsp;
合同与订单:<input type="text" name="dingdan">&nbsp;<br>
请款类型:<select name="tid">
	<option >请选择</option>
</select>  
付款日期:<input type="text" name="fudate">
<hr>
给付单位:<input type="text" name="fudanwei">&nbsp;
给付单位开户:<input type="text" name="fukaihu">&nbsp;
账号:<input type="text" name="zh">&nbsp;
 <hr>
接收部门:<input type="text" name="jscom">&nbsp;
接收人:<input type="text" name="jsren">&nbsp;<br>
付款事由:<input type="text" name="fushiyou">&nbsp;
付款金额:<input type="text" name="jine">&nbsp;
付款图片<input type="file" name="myfile">
备注:<input type="text" name="beizhu">&nbsp;  

<input type="button" value="提交" onclick="tj()">

	

</body>
</html>