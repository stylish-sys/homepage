<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>
<jsp:setProperty property="*" name="dto" />
<%
	flag = dao.create(dto);
%>

<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>

	<div class="container">

		<div class="well well-lg">
			<%
				if (flag) {
					out.print("메모등록 성공입니다.");
				} else {
					out.print("메모등록 실패입니다.");
				}
			%>
		</div>
		<button class="btn" type="button"
			onclick="location.href='./createForm.jsp'">다시등록</button>
		<button class="btn" type="button" onclick="location.href='./list.jsp'">목록</button>
	</div>
</body>
</html>