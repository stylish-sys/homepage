<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file = "/ssi/jssi.jsp" %>
<%
	String id = request.getParameter("id");
	String oldfile = request.getParameter("oldfile");
%>
<!DOCTYPE html>
<html>
<head>
<title>회원 탈퇴</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>

	<div class="container">
		<h1 class="col-sm-offset-2 col-sm-10">회원 탈퇴</h1>
		<form class="form-horizontal" action="deleteProc.jsp" method="post">
		<input type="hidden" name="id" value="<%=id %>">
		<input type="hidden" name="oldfile" value="<%=oldfile %>">
			<div class="form-group">
				<label class="col-sm-offset-2 col-sm-10">
				탈퇴를 하시면 더이상 컨텐츠를 이용할 수 없음<br>
				그래도 탈퇴를 원하시면 아래 탈퇴 버튼을 클릭
				</label>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-8">
					<button type="submit" class="btn btn-default">탈퇴</button>
					<button type="button" class="btn btn-default" onclick="history.back()">뒤로가기</button>
				</div>
			</div>
		</form>

	</div>
</body>
</html>