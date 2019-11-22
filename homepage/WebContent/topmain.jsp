<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/bssi.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	root = request.getContextPath();

	String id = (String) session.getAttribute("id");
	String grade = (String) session.getAttribute("grade");

%>
<!DOCTYPE HTML>

<html>
<head>
<title>My HOME PAGE</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />

<body>
	<section id="one" class="wrapper special">
		<section id="one" class="wrapper special">
			<div class="inner">
				<div class="features">
					<div class="feature" onclick="location.href='./memo/list.jsp'">
						<i class="fa fa-envelope-o"></i>
						<h3>메모장</h3>
						<br>
						<p>클릭 시 해당 기능으로 이동</p>
					</div>
					<div class="feature" onclick="location.href='./guest/list.jsp'">
						<i class="fa fa-copy"></i>
						<h3>게시판</h3>
						<br>
						<p>클릭 시 해당 기능으로 이동</p>
					</div>
					<div class="feature" onclick="location.href='./notice/list.jsp'">
						<i class="fa fa-paper-plane-o"></i>
						<h3>공지사항</h3>
						<br>
						<p>클릭 시 해당 기능으로 이동</p>
					</div>

					<%
						if (id == null) {
					%>
					<div class="feature" onclick="location.href='./join/agreement.jsp'">
						<i class="fa fa-check"></i>
						<h3>회원 가입</h3>
						<br>
						<p>클릭 시 해당 기능으로 이동</p>
					</div>
					<div class="feature" onclick="location.href='./join/loginForm.jsp'">
						<i class="fa fa-cut"></i>
						<h3>로그인</h3>
						<br>
						<p>클릭 시 해당 기능으로 이동</p>
					</div>
					<%
						} else {
					%>
					<div class="feature" onclick="location.href='./join/read.jsp'">
						<i class="fa fa-user"></i>
						<h3>나의 정보</h3>
						<br>
						<p></p>
						<p>클릭 시 해당 기능으로 이동</p>
					</div>
					<div class="feature"
						onclick="location.href='./join/updateForm.jsp'">
						<i class="fa fa-cloud"></i>
						<h3>회원 수정</h3>
						<br>
						<p>클릭 시 해당 기능으로 이동</p>
					</div>
					<%
						if (id != null && grade.equals("A")) {
					%>
					<div class="feature" onclick="location.href='./admin/list.jsp'">
						<i class="fa fa-heart"></i>
						<h3>회원 목록</h3>
						<br>
						<p>클릭 시 해당 기능으로 이동</p>
					</div>
					<%
						}
					%>
					<%
						}
					%>
				</div>
			</div>
		</section>


		<div class="inner">
			<header class="major">
				<h3>서비스 이용하기</h3>
			</header>
		</div>
	</section>


	<jsp:include page="/lastdown01.jsp" />

</body>
</html>