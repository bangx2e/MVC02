<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.bit.model.*"%>
<%
	MyCalc cal = new MyCalc();
	int hap = cal.hap(100, 500);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1'>
		<tr>
			<td>1~200 까지의 총합</td>
			<td>합 메소드</td>
		</tr>
		<tr>	
			<td>
				<%=cal.hap(100, 200)%>
			</td>
			<td>
					<%=hap%>
			</td>
		</tr>
	
	</table>
</body>
</html>