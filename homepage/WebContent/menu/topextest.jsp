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
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Main Page</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">메모 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<%=root%>/memo/list.jsp">메모 목록</a></li>
						<li><a href="<%=root%>/memo/createForm.jsp">메모 생성 </a></li>
					</ul></li>

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">방명록 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<%=root%>/memo/list.jsp">방명록 작성</a></li>
						<li><a href="<%=root%>/memo/createForm.jsp">방명록 목록</a></li>
					</ul></li>

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">다운로드<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">TEST01</a></li>
						<li><a href="#">TEST02</a></li>
						<li><a href="#">TEST03</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href=""><span class="glyphicon glyphicon-user"></span>Sign
						Up</a></li>
				<li><a href="login.html"><span
						class="glyphicon glyphicon-log-in"></span>Login</a></li>
			</ul>
		</div>
	</nav>



</body>
</html>