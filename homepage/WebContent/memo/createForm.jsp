<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>memo</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>
	<div class="container">
		<h1 class="col-sm-offset-2 col-sm-10">메모 등록</h1>
		<form class="form-horizontal" action="createProc.jsp" method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="title">제목</label>
				<div class="col-sm-6">
					<input type="text" name="title" id="title" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="content">내용</label>
				<div class="col-sm-6">
					<textarea rows="5" cols="5" id="content" name="content"
						class="form-control"></textarea>

				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-5">
					<button class="btn">등록</button>
					<button type="reset" class="btn">취소</button>
				</div>
			</div>
		</form>

	</div>
</body>
</html>