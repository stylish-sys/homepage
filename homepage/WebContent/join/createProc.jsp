<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>
<%
	UploadSave upload = (UploadSave) request.getAttribute("upload");

	dto.setId(upload.getParameter("id"));
	dto.setEmail(upload.getParameter("email"));
	dto.setPasswd(upload.getParameter("passwd"));
	dto.setTel(upload.getParameter("tel"));
	dto.setZipcode(upload.getParameter("zipcode"));

	dto.setJname(UploadSave.encode(upload.getParameter("jname")));
	dto.setJob(UploadSave.encode(upload.getParameter("job")));
	dto.setAddress1(UploadSave.encode(upload.getParameter("address1")));
	dto.setAddress2(UploadSave.encode(upload.getParameter("address2")));

	FileItem fileItem = upload.getFileItem("fname");
	int size = (int) fileItem.getSize();

	String fname = UploadSave.saveFile(fileItem, upDir);

	if (size > 0) {
		dto.setFname(fname);
	} else {
		dto.setFname("member.jpg");
	}

	flag = dao.create(dto);
%>
<!DOCTYPE html>
<html>
<head>
<title>member</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>
	<div class="container">
		<div class="well well-lg">
			<%
				if (flag) {
					out.print("회원 가입 성공");
				} else {
					out.print("회원 가입 실패");
				}
			%>
			<button onclick="location.href='loginForm.jsp'"
				class="btn btn-default">로그인</button>
			<button onclick="location.href='../index.jsp'"
				class="btn btn-default">홈</button>
		</div>
	</div>

</body>
</html>