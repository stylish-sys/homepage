<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file ="/ssi/noticessi.jsp" %>
<!DOCTYPE html>

<html>
<head>
<title>guest</title>
<meta charset="utf-8">
<script type="text/javascript">
function input(f){
	if(f.title.value==0){
		alert("제목을 입력하세요");
		f.title.focus();
		return false;
	}
	if(f.content.value==0){
		alert("내용을 입력하세요");
		f.content.focus();
		return false;
	}
	if(f.passwd.value==0){
		alert("비밀번호를 입력하세요");
		f.passwd.focus();
		return false;
	}
}
</script>
</head>
<body>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<div class="container">
	<h1>방명록 등록</h1>
		<form action="createProc.jsp" class="form-horizontal" method="post"
				onsubmit="return input(this)">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">글쓴이:</label>
					<div class="col-sm-6">
						<label class="control-label col-sm-2">admin</label>
					</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">제목:</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="title"
							placeholder="제목을 입력하세요~" name="title">
					</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">내용:</label>
					<div class="col-sm-6">
						<textarea rows="12" cols="6"class="form-control" name="content"
							placeholder="내용일 입력하세요~"></textarea>
					</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">비밀번호:</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="passwd"
							placeholder="비밀번호을 입력하세요~" name="passwd">
					</div>
			</div>
		<div class="form-group">
		<div class="col-sm-offset col-sm-4">
		<button class="btn btn-default">등록</button>
		<button class="btn btn-default" type="button" onclick="location.href='list.jsp'" >취소</button>	
		</div>
		</div>
		</form>
		
		
		</div>
</body>
</html>