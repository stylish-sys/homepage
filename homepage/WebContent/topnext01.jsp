<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String root = request.getContextPath();

	String id = (String) session.getAttribute("id");
	String grade = (String) session.getAttribute("grade");

	String str = "";

	if (id != null && grade.equals("A")) {
		str = "관리자 페이지 입니다.";
	} else if (id != null && !grade.equals("A")) {
		str = "<strong>" + id + "</strong>님 <br> 어서오세요 환영합니다";
	} else
		str = "<strong>이선용</strong> 사이트에 <br>오신걸 환영합니다";
%>
<!DOCTYPE HTML>

<html>
<head>
<style type="text/css">
</style>
<title>My HOME PAGE</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assetstest/css/main.css" />
</head>
<body>
	<section id="banner" style="padding: 0">
		<div style="float: right">
			<%
				if (id == null) {
			%>
			<a onclick="location.href='/homepage/join/agreement.jsp'"><span
				style="color: white" class=""><strong>회원가입</strong></span></a> &nbsp;
			&nbsp; <a onclick="location.href='/homepage/join/loginForm.jsp'"><span
				style="color: white" class=""><strong>로그인</strong></span></a>
			<%
				} else {
			%>
			<a onclick="location.href='/homepage/join/read.jsp'"><span
				style="color: white" class=""><strong>나의정보</strong></span></a> &nbsp;
			&nbsp; <a onclick="location.href='/homepage/join/updateForm.jsp'"><span
				style="color: white" class=""><strong>회원수정</strong></span></a> &nbsp;
			&nbsp;
			<%
				if (id != null && grade.equals("A")) {
			%>
			<a onclick="location.href='/homepage/admin/list.jsp'"><span
				style="color: white" class=""><strong>회원목록</strong></span></a> &nbsp;
			&nbsp;
			<%
				}
			%>
			<a onclick="location.href='/homepage/join/logout.jsp'"><span
				style="color: white" class=""><strong>로그아웃</strong></span></a> &nbsp;
			&nbsp;
			<%
				}
			%>
		</div>
	</section>
	<section id="banner">
		<h2>
			<%=str%>
		</h2>
		<ul class="actions">
			<li><a href="http://www.lectureblue.pe.kr/"
				class="button special">강사님 사이트 가기</a></li>
		</ul>
	</section>





	<script src="assetstest/js/jquery.min.js"></script>
	<script src="assetstest/js/skel.min.js"></script>
	<script src="assetstest/js/util.js"></script>
	<script src="assetstest/js/main.js"></script>
	<script type="text/javascript" src="<%=root%>/js/jquery.js"></script>

</body>
</html>