<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>
<%
	UploadSave upload = new UploadSave(request, -1, -1, tempDir);

	String id = UploadSave.encode(upload.getParameter("id"));
	String email = UploadSave.encode(upload.getParameter("email"));

	String str = "";

	if (dao.duplicateID(id)) {
		str = "중복된 아이디 입니다. 아이디 중복을 확인하세요.";
	} else if (dao.duplicateEmail(email)) {
		str = "중복된 이메일 입니다. 이메일 중복을 확인하세요.";
	} else {
		//보낸 파일 및 파라메터 받아서 dto 저장하고 db에 저장
		request.setAttribute("upload", upload);
%>
<jsp:forward page="/join/createProc.jsp" />
<%
	return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입중</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>
	<div class="container">
		<div class="well well-lg">
			<br>
			<%=str%>
			<br>
		</div>

		<button type="submit" onclick="history.back()" class="btn btn-default">다시시도</button>
	</div>
</body>
</html>