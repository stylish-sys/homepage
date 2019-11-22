<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>
<%
	String id = request.getParameter("id");
	String oldfile = request.getParameter("oldfile");
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
		<h1 class="col-sm-offset-2 col-sm-10">사진 수정</h1>
		<form class="form-horizontal" action="updateFileProc.jsp"
		method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<%=id %>">
		<input type="hidden" name="oldfile" value="<%=oldfile %>">
			<div class="form-group">
				<label class="control-label col-sm-2" for="oldfile">원본 파일</label>
				<div class="col-sm-6">
				<img src="<%=root %>/join/storage/<%=oldfile %>"
				class="img-rounded" width="200px" height="200px">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="fname">변경 파일</label>
				<div class="col-sm-6">
					<input type="file" class="form-control" id="fname"
						name="fname" accept=".jpg,.png,.gif" required = "required">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-8">
					<button type="submit" class="btn btn-default">수정 완료</button>
					<button type="button" class="btn btn-default" onclick="history.back()">취소</button>
				</div>
			</div>
		</form>

	</div>
</body>
</html>