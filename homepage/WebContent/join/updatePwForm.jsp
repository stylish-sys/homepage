<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>

<%
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<title>join</title>
<meta charset="utf-8">
<script type="text/javascript">
	function inCheck(f) {
		if (f.passwd.value.length == 0) {
			alert("비밀번호를 입력하세요");
			f.passwd.focus();
			return false;
		}
		if (f.repasswd.value.length == 0) {
			alert("비밀번호 확인을 입력하세요");
			f.repasswd.focus();
			return false;
		}
		if (f.passwd.value != f.repasswd.value) {
			alert("비밀번호가 일치하지 않습니다");
			f.passwd.value = "";
			f.repasswd.value = "";
			f.passwd.focus();
			return false;
		}
	}
</script>
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>
	<div class="container">
		<h1 class="col-sm-offset-2 col-sm-10">비밀번호 수정</h1>
		<form class="form-horizontal" action="updatePwProc.jsp" method="post"
			onsubmit="return inCheck(this)">
			<input type="hidden" name="id" value="<%=id%>">
			<div class="form-group">
				<label class="control-label col-sm-2" for="passwd">비밀번호</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="passwd"
						name="passwd" placeholder="Enter passwd">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="repasswd">비밀번호 확인</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="repasswd"
						name="repasswd" placeholder="Enter repasswd">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-8">
					<button type="submit" class="btn btn-default">수정 완료</button>
					<button type="button" class="btn btn-default"
						onclick="history.back()">취소</button>
				</div>
			</div>
		</form>

	</div>
</body>
</html>