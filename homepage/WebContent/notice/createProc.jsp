<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/noticessi.jsp"%>
<jsp:setProperty property="*" name="dto" />
<!DOCTYPE html>
<%
	flag = dao.create(dto);
%>


<html>
<head>
<title>notice</title>
<meta charset="utf-8">
</head>
<body>
	<jsp:include page="/topnext01.jsp" />
	<jsp:include page="/menu/top.jsp" />
	<div class="container">
		<div class="well well-lg">
			<%
				if (flag) {
					out.print("글을 작성하였습니다.");
				} else
					out.print("글 작성을 실패하였습니다.");
			%>

		</div>
		<div class="form-group">
			<div class="col-sm-offset col-sm-6">
				<button class="btn btn-default"
					onclick="location.href='createForm.jsp'">등록</button>
				<button class="btn btn-default" onclick="location.href='list.jsp'">목록</button>
			</div>
		</div>


	</div>
</body>
</html>