<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터형</title>
</head>
<body>
	<h1>데이터형</h1>
	<h3>JSP</h3>
	<%
	Integer iVal = (Integer)request.getAttribute("iVal");
	Object nValue = request.getAttribute("nVal");
	%>

	
	<p>iVal:<%=iVal %></p>
	<p>nVal:<%=nValue %></p>
	<!-- servlet에서 넘어온 값들을 표현할때 사용한다. java보다 간결하다 -->
	<!-- 명시적인 getAttribute 작업 필요 없음 -->
	<h3>EL</h3>
	<ul>
		<li>fVal : ${fVal}</li>
		<li>bVal : ${bVal}</li>
		<li>sVal : ${sVal}</li>
		<li>nVal : ${nVal}</li>
		
		<li>userVo : ${userVo}</li> <!-- toString() 메서드 호출 결과 -->
		<li>객체 속성 접근 : ${userVo.email}</li>
	</ul>
	
</body>
</html>