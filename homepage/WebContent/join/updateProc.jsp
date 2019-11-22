<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>
<jsp:setProperty property="*" name="dto"/>
<%
	flag = dao.update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<title>회원 수정</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>

	<div class="container">
		<h1 class="col-sm-offset-2 col-sm-10">회원수정</h1>
	<div class="well well-lg">
	<%
		if(flag){
			out.print("정보 수정 성공");
		}else{
			out.print("정보 수정 실패");
		}
	%></div>
	<button class="btn btn-default" onclick="location.href='read.jsp?id=<%=dto.getId() %>'">회원 정보</button>
	<button class="btn btn-default" onclick="history.back()">다시 시도</button>
	</div>
</body>
</html>