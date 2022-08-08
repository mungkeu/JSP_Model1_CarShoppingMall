<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String center = request.getParameter("center");
	if(center==null){
		center = "Center.jsp"; // default center value
	}
%>
<center>
<table width="1000">
	<!-- TOP 부분 -->
	<tr height="140" align="center">
		<td aligh="center" width="1000">
			<jsp:include page="Top.jsp"/>
		</td>
	</tr>
	<!-- Center 부분 -->
	<tr align="center">
		<td aligh="center">
			<jsp:include page="<%=center %>"/>
		</td>
	</tr>
	<!-- Bottom 부분 -->
	<tr height="100" align="center">
		<td aligh="center">
			<jsp:include page="Bottom.jsp"/>
		</td>
	</tr>
</table>
</center>
</body>
</html>