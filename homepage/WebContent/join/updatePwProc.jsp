<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	Map map = new HashMap();
	map.put("id", id);
	map.put("pw", passwd);

	flag = dao.updatePw(map);
%>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호 변경 확인</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>

	<div class="container">
		<h1 class="col-sm-offset-2 col-sm-10">비밀번호 수정</h1>
		<div class="well well-lg">
			<%
				if (flag) {
					out.print("비밀번호 변경 성공");
				} else {
					out.print("비밀번호 변경 실패");
				}
			%>
		</div>
		<button class="btn btn-default" onclick="location.href='loginForm.jsp'">로그인</button>
		<button class="btn btn-default" onclick="history.back()">다시 시도</button>

	</div>
</body>
</html>