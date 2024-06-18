<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>
	

	<%-- <%
	if( "1".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: red">빨강</span>
	<%
	} else if( "2".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: green">녹색</span>
	<%
	} else if( "3".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: hotpink">핫핑크</span>
	<%
	}
	%> --%>

<!-- 기본적인 조건 분기문 
	c:if -> 조건식 test 속성으로 EL을 이용하여 테스트
	-->	
	<c:if test="${param.color==1 }">
		<span style="color: red;">빨강2</span>
	</c:if>
	<c:if test="${param.color==2 }">
		<span style="color: blue;">파랑2</span>
	</c:if>
	<c:if test="${param.color==3 }">
		<span style="color: hotpink">핫핑크2</span>
	</c:if>
	<c:if test="${param.color==4 }">
		<span style="color: green">초록색</span>
	</c:if>
	
	
	
</body>
</html>