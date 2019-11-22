<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>

<!DOCTYPE html>
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
<script type="text/javascript">
	var result = [];
	function idcheck(jname, email) {
		url = "fid_Find.jsp";

		var param = "email=" + $("#email").val() + "&jname="
				+ $("#jname").val();

		$
				.get(
						url,
						param,
						function(data, textStatus) {
							if (data != null) {
								$("#idcheck").text(data);
								$("#idcheck")
										.append(
												"<button type='button' class='btn btn-default' onclick='use()'>사용</button><br><br>");
								result = data.split("'");
							}
						})
	}
	function use() {
		opener.frm.id.value = result[1];
		self.close();
	}
</script>
<title>id 중복확인</title>
<meta charset="utf-8">
</head>
<body>
	<div class="container">
		<br>
		<h3>아이디 찾기</h3>
		<br> <br> <br>
		<form class="form-horizontal" action="" method="post" name="frm">
			<div class="form-group">
				<label class="control-label col-sm-2" for="jname">이름 입력</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="jname"
						placeholder="Enter jname" name="jname" required="required"
						value="test">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">이메일 입력</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="email"
						placeholder="Enter email" name="email" required="required"
						value="test@test">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-8">
					<button type="button" class="btn btn-default"
						onclick="idcheck(document.frm.jname.value, document.frm.email.value)">찾기</button>
					<button type="reset" class="btn btn-default"
						onclick="window.close()">취소</button>
					<br>
					<br>
					<div id="idcheck"></div>
				</div>
			</div>
		</form>

	</div>
</body>
</html>