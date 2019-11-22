<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>
<%
	String id = request.getParameter("id");
	String email = request.getParameter("email");

	Map map = new HashMap();
	map.put("id", id);
	map.put("email", email);

	String passwd = dao.passwd_find(map);
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="container">
		<br> <br>
		<div class="well well-lg col-sm-offset-1 col-sm-4">
			<br> 입력된 아이디 =<%=id%><br> <br> 입력된 이메일 =<%=email%><br>
			<br>
			<%
				if (passwd != null) {
			%>
			<p>
				비밀번호는 =
				<%=passwd%></p>
			<%
				} else {
					out.print("비밀번호를 찾을 수 없음<br><br>");
				}
			%>
		</div>
		<div class="col-sm-offset-2 col-sm-8">
			<button class="btn btn-default" onclick="window.close()">닫기</button>
		</div>

	</div>
</body>
</html>