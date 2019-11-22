<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>
<%
	String jname = request.getParameter("jname");
	String email = request.getParameter("email");

	Map map = new HashMap();
	map.put("jname", jname);
	map.put("email", email);

	String id = dao.id_find(map);
	
	String str = "";

	if (id == null) {
		str = id + "는 없습니다.";
	} else {
		str = id + "는 입니다.";
	}

	out.print(str);
%>
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
<title>아이디 중복 확인</title>
<meta charset="utf-8">
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="container">
		<br> <br>
		<div class="well well-lg col-sm-offset-1 col-sm-4">
			<br> 입력된 이름 =<%=jname%><br>
			<br> 입력된 이메일 =<%=email%><br> <br>
			<%
				if (id != null) {
			%>
			<p>
				아이디는 =
				<%=id%></p>
			<%
				} else {
					out.print("아이디를 찾을 수 없음<br><br>");
				}
			%>
		</div>
		<div class="col-sm-offset-2 col-sm-8">
			<button class="btn btn-default" onclick="window.close()">닫기</button>
		</div>

	</div>
</body>
</html>