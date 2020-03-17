 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	location="toadd";
}
function xg(id) {
	location="toupd?id="+id;
}
</script>
</head>
<body>
<form action="list" method="post">
付款单号:<input type="text" name="funum" value="${caiwuVo.funum }">&nbsp;
类型:<input type="text" name="futype" value="${caiwuVo.futype }">&nbsp;
 经办人:<input type="text" name="funame" value="${caiwuVo.funame }">&nbsp;
所属部门:<input type="text" name="com" value="${caiwuVo.com }">&nbsp;
合同与订单:<input type="text" name="dingdan" value="${caiwuVo.dingdan }">&nbsp;<br>
给付单位:<input type="text" name="fudanwei" value="${caiwuVo.fudanwei }">&nbsp;
给付单位开户:<input type="text" name="fukaihu" value="${caiwuVo.fukaihu }">&nbsp;
账号:<input type="text" name="zh" value="${caiwuVo.zh }">&nbsp;
接收部门:<input type="text" name="jscom" value="${caiwuVo.jscom }">&nbsp;
接收人:<input type="text" name="jsren" value="${caiwuVo.jsren }">&nbsp;<br>
付款事由:<input type="text" name="fushiyou" value="${caiwuVo.fushiyou }">&nbsp;
付款金额:<input type="text" name="jine" value="${caiwuVo.jine }">&nbsp;
备注:<input type="text" name="beizhu" value="${caiwuVo.beizhu }">&nbsp; 
请款类型:<select name="tid" >
	<option value=''>请选择</option>
	</select> 
<!-- 付款日期:<input type="text" name="date1">&nbsp;

至:<input type="text" name="date2">&nbsp;  -->
<button>查询</button>
<input type="button" value="添加" onclick="tj()">
</form>
<table class="table">
	<tr>
		<td>付款日期</td>
		<td>付款单号</td>
		<td>付款单类型</td>
		<td>经办人</td>
		<td>所属部门</td>
		<td>合同与订单</td>
		<td>请款类型</td>
		<td>给付单位</td>
		<td>账号</td>
		<td>接收部门</td>
		<td>接收人</td>
		<td>付款事由</td>
		<td>付款金额</td>
		<td>付款图片</td>
		<td>备注</td>
		<td>操作</td>
	</tr>
	<c:forEach items="${info.list }" var="c" varStatus="i">
	<tr>
		<td><fmt:formatDate value="${c.fudate }" pattern="yyyy-MM-dd"/> </td>
		<td>${c.funum }</td>
		<td>${c.futype }</td>
		<td>${c.funame }</td>
		<td>${c.com}</td>
		<td>${c.dingdan }</td>
		<td>${c.cmsAtype.name }</td>
		<td>${c.fudanwei }</td>
		<td>${c.zh }</td>
		<td>${c.jscom }</td>
		<td>${c.jsren }</td>
		<td>${c.fushiyou }</td>
		<td>${c.jine }</td>
		<td>${c.fupic }</td>
		<td>${c.beizhu }</td>
		<td><button onclick="xg(${c.id})">修改</button> </td>
	</tr>
	</c:forEach>
	
</table>
	<jsp:include page="/WEB-INF/view/pages.jsp"></jsp:include>

</body>
<script type="text/javascript">
function goPage(page) {
	location="list?page=" + page;
}
</script>
</html> 