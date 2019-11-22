<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/jssi.jsp"%>
<%
	String c_id = "";
	String c_id_val = "";

	Cookie[] cookies = request.getCookies();
	Cookie cookie = null;

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			cookie = cookies[i];

			if (cookie.getName().equals("c_id")) {
				c_id = cookie.getValue();
			} else if (cookie.getName().equals("c_id_val")) {
				c_id_val = cookie.getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function idCheck() {
	var url = "fid_FindForm.jsp";
				
	wr=window.open(url, "id_FindForm", "width=500, height=500");
	wr.moveTo((window.screen.width-500)/2,(window.screen.height-350)/2);
}


function passwdCheck(){
	var url = "fpasswd_FindForm.jsp";
	
	wr=window.open(url,"email중복확인","width=500, height=500");
	wr.moveTo((window.screen.width-500)/2,(window.screen.height-350)/2);
}
</script>
<title>Login</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>
	<div class="container">
		<h1 class="col-sm-offset-2 col-sm-10">로그인</h1>
		<form name="frm" class="form-horizontal"
			action="<%=request.getContextPath()%>/join/loginProc.jsp"
			method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">아이디</label>
				<div class="col-sm-6">
					<input type="text" name="id" id="id" class="form-control"
						placeholder="Enter ID" required="required" value='<%=c_id_val%>'>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">비밀번호</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="pwd"
						placeholder="Enter password" name="passwd">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-8">
					<div class="checkbox">
						<%
							if (c_id.equals("Y")) {
						%>
						<input id="c_id" type="checkbox" name="c_id" value="Y"
							checked="checked"> <label for="c_id"> Remember me</label>
						<%
							} else {
						%>
						<input id="c_id" type="checkbox" name="c_id" value="Y"> <label
							for="c_id"> Remember me</label>
						<%
							}
						%>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-8">
					<button type="submit" class="btn btn-default">로그인</button>
					<button type="button" class="btn btn-default" onclick="idCheck()">아이디
						찾기</button>
					<button type="button" class="btn btn-default"
						onclick="passwdCheck()">비밀번호 찾기</button>
					<button type="button" class="btn btn-default"
						onclick="location.href='agreement.jsp'">회원가입</button>
				</div>
				<div id="findid"></div>
				<div id="passwdcheck"></div>
			</div>
		</form>

	</div>
</body>
</html>