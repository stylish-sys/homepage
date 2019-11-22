<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");

	Map map = new HashMap();
	map.put("id", id);
	map.put("pw", pw);

	flag = dao.loginCheck(map);

	if (flag) {
		String grade = dao.getGrade(id);
		session.setAttribute("id", id);
		session.setAttribute("grade", grade);
	}
	
	Cookie cookie = null;

	String c_id = request.getParameter("c_id");

	if (c_id != null) {
		cookie = new Cookie("c_id", "Y");
		cookie.setMaxAge(120);
		response.addCookie(cookie);

		cookie = new Cookie("c_id_val", id);
		cookie.setMaxAge(120);
		response.addCookie(cookie);
	} else {
		cookie = new Cookie("c_id", "");
		cookie.setMaxAge(0);
		response.addCookie(cookie);

		cookie = new Cookie("c_id_val", "");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	}
	
	String id1 = (String)session.getAttribute("id");
	
%>

<!DOCTYPE html>
<html>
<head>
<title>로그인 처리</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>
	<div class="container">
		<h1 class="col-sm-offset-2 col-sm-10">로그인 처리</h1>
		<div class="well well-lg">
		<%
			if(flag){
				out.print("로그인을 성공했습니다.");
			}else{
				out.print("아이디 또는 비밀번호를 잘못 입력하셨거나 <br>");
				out.print("회원이 아닙니다. 회원가입을 하세요.");
			}
		%></div>
		
		<button class="btn btn-default" onclick="location.href='../index.jsp'">홈으로 가기</button>
		<%if (id1 == null) {%>
		<button class="btn btn-default" onclick="history.back()">다시 시도</button>
		<%}else{ %>
		<button class="btn btn-default" onclick="location.href='loginForm_out.jsp'">다시 로그인하기</button>
		<%} %>		
	</div>
</body>
</html>