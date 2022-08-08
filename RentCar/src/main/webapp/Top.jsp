<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 세션을 이용한 로그인 처리 -->
<%
	String id = (String)session.getAttribute("id");
	if(id==null){
		id = "GUEST";
	}
%>
	<table width="1000">
		<tr higth="70">
			<td colspan="4">
				<a href="RentcarMain.jsp" style="text-decoration: none">
					<img alt="" src="images/RENT.png" height="65">
				</a>
			</td>
			<td align="center" width="200">
				<%=id %>님
				<%
					if(id.equals("GUEST")){%>
						<button onclick="location.href='RentcarMain.jsp?center=MemberLogin.jsp'">로그인</button>
					<%}
				%>
			</td>
		</tr>
		<tr higth="70">
			<td align="center" width="200" bgcolor="red">
				<a href="RentcarMain.jsp?center=CarReserveMain.jsp" style="text-decoration: none">
					<font color="white" size="5">예약하기</font>
				</a>
			</td>
			<td align="center" width="200" bgcolor="red">
				<a href="RentcarMain.jsp?center=CarReserveView.jsp" style="text-decoration: none">
					<font color="white" size="5">예약확인</font>
				</a>
			</td>
			<td align="center" width="200" bgcolor="red">
				<a href="#" style="text-decoration: none">
					<font color="white" size="5">자유게시판</font>
				</a>
			</td>
			<td align="center" width="200" bgcolor="red">
				<a href="#" style="text-decoration: none">
					<font color="white" size="5">이벤트</font>
				</a>
			</td>
			<td align="center" width="200" bgcolor="red">
				<a href="#" style="text-decoration: none">
					<font color="white" size="5">공지사항</font>
				</a>
			</td>
		</tr>	
	</table>
</body>
</html>