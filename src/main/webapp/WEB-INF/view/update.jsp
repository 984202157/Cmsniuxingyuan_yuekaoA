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
	
	$.post("upd",shuju,function(re){
		if(re){
			alert("修改成功");
			location="list";
		}else{
			alert("修改失败");
		}
	},"json")
	
}

</script>
</head>
<body>
<form>
<hr>
<input type="hidden" name="id" value="${caiWu.id }">
付款单号:<input type="text" name="funum" value="${caiWu.funum }">&nbsp;
类型:<input type="text" name="futype"  value="${caiWu.futype }">&nbsp;
 经办人:<input type="text" name="funame" value="${caiWu.funame }">&nbsp;
所属部门:<input type="text" name="com" value="${caiWu.com }">&nbsp;
合同与订单:<input type="text" name="dingdan" value="${caiWu.dingdan }">&nbsp;<br>
请款类型:<select name="tid">
	<option >请选择</option>
</select>  
付款日期:<input type="text" name="fudate" value="${caiWu.fudate }">
<hr>
给付单位:<input type="text" name="fudanwei" value="${caiWu.fudanwei }">&nbsp;
给付单位开户:<input type="text" name="fukaihu" value="${caiWu.fukaihu }">&nbsp;
账号:<input type="text" name="zh" value="${caiWu.zh }">&nbsp;
<hr>
接收部门:<input type="text" name="jscom" value="${caiWu.jscom }">&nbsp;
接收人:<input type="text" name="jsren" value="${caiWu.jsren }">&nbsp;<br>
付款事由:<input type="text" name="fushiyou" value="${caiWu.fushiyou }">&nbsp;
付款金额:<input type="text" name="jine" value="${caiWu.jine }">&nbsp;
<!-- 付款图片<input type="file" name="myfile"> -->
备注:<input type="text" name="beizhu" value="${caiWu.beizhu }">&nbsp; 
 
<input type="button" value="修改" onclick="tj()">

	

</body>
</html>