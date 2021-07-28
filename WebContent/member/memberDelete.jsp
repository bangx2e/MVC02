<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.bit.model.*" %>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	MemberDAO dao = new MemberDAO();
	int rs = dao.memberDelete(num);
	if(rs>0) {
		System.out.println("삭제성공");
		response.sendRedirect("memberList.jsp");
	} else {
		throw new ServletException("삭제 실패");
	}
%>
