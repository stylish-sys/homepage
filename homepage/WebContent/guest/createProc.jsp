<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/bssi.jsp"%>
<jsp:setProperty property="*" name="dto" />
<%
	flag = dao.create(dto);
%>
<!DOCTYPE html>
<html>
<head>
<title>Guest</title>
<meta charset="utf-8">
</head>
<body>
	<jsp:include page="/topnext01.jsp" />	
	<jsp:include page="/menu/top.jsp" />
	<div class = "container">
		<div class="well well-lg">
		<%
			if(flag){
				out.print("글 등록 성공");
			}else{
				out.print("글 등록 실패");
			}
		
		
		%></div>
	</div>
</body>
</html>
