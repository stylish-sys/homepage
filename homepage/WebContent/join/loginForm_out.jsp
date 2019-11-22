<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>
<%

	session.removeAttribute("id");

	response.sendRedirect("./loginForm.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
</script>
<title>Login</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>
</body>
</html>