<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--JSP 주석 --%>
<%--두 수 사이의 모든 합을 구하는 메소드 --%>
<%!// JSP에서 메소드 선언(선언문)
	public int hap(int s, int e) {
		int hap = 0;
		for (int i = s; i <= e; i++) {
			hap += i;
		}
		return hap;
	}%>
<%
	// 	JSP에서 자바코드 사용(스크립트릿)
	int sum = 0;
	for (int i = 0; i <= 10; i++) {
		sum += i;
	}

	// JSP의 내장객체
	// request, response 
	//session, out, config, application, page, pageContext
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
			<td>1~10의 총합</td>
			<!-- 			JSP 출력식 -->
			<td><%=sum%></td>
		</tr>
		<tr>
			<td>1~100의 총합</td>
			<td><%=hap(1, 100)%></td>

		</tr>

	</table>
</body>
</html>