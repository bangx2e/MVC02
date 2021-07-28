<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.bit.model.*" %>
<%
	// Request에서 넘어오는 데이터의 인코딩을 UTF-8로 설정한다
		request.setCharacterEncoding("UTF-8");
		// 1. 파라메터 수집 (VO) 
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
//	System.out.println(id);
//		MemberVO mem = new MemberVO(id, pass, name, age, email, phone);
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPass(pass);
		vo.setName(name);
		vo.setAge(age);
		vo.setEmail(email);
		vo.setPhone(phone);
		MemberDAO dao = new MemberDAO();
		int cnt=dao.memberInsert(vo);
		if(cnt>0) {
			//가입 성공 -> 회원 리스트 페이지로 Redirect 해준다
			response.sendRedirect("memberList.jsp");
		}else {
			//가입 실패 -> 예외처리
			throw new ServletException("not insert");
		}
		
	
%>
