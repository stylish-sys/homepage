<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String root = request.getContextPath();
%>


<!DOCTYPE html>
<html>
<head>
<title>memo</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<br>
	<div class="container">
		<ul class="nav nav-tabs">
			<li class="active"><a href="<%=root%>/index.jsp">Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">메모 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<%=root%>/memo/list.jsp">메모 목록</a></li>
					<li><a href="<%=root%>/memo/createForm.jsp">메모 생성 </a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">게시판 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<%=root%>/guest/list.jsp">게시판 목록</a></li>
					<li><a href="<%=root%>/guest/createForm.jsp">게시판 생성 </a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">공지사항 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<%=root%>/notice/list.jsp">공지사항 목록</a></li>
					<li><a href="<%=root%>/notice/createForm.jsp">공지사항 생성 </a></li>
				</ul></li>
		</ul>
	</div>



</body>
</html>