<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%><!DOCTYPE html>
<html>
<head>
<style>
#red {
	color: red;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<meta charset="utf-8">
</head>
<body>
	<div class="container">
	<br>
	<h3>비밀번호 찾기</h3>
	<br><br> <br>
		<form class="form-horizontal" action="passwd_FindProc.jsp" method="post"
			name="frm">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">아이디 입력</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="id"
						placeholder="Enter id" name="id" required="required" value="test">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">이메일 입력</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="email"
						placeholder="Enter email" name="email" required="required" value="test@test">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-8">
					<button class="btn btn-default">찾기</button>
					<button type="reset" class="btn btn-default"
						onclick="window.close()">취소</button>
				</div>
			</div>
		</form>

	</div>
</body>
</html>