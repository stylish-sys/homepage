<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/noticessi.jsp"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	dto = dao.read(no);
%>

<!DOCTYPE html>
<html>
<head>
<title>notice</title>
<meta charset="utf-8">
<script type="text/javascript">
function input(f){
	if(f.wname.value==''){
		alert("작성자를 입력하세요");
		f.wname.focus();
		return false;
	}
	if(f.title.value==''){
		alert("제목을 입력하세요");
		f.title.focus();
		return false;
	}
	if(f.content.value==''){
		alert("내용을 입력하세요");
		f.content.focus();
		return false;
	}
	if(f.passwd.value==''){
		alert("비밀번호를 입력하세요");
		f.passwd.focus();
		return false;
	}
}
function listn(){
	var url ="list.jsp";
	url += "?col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	url += "&nowPage=<%=request.getParameter("nowPage")%>";

	location.href = url;
	}
</script>
</head>
<body>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
	<div class="container">

		<h1 class="col-sm-offset-2 col-sm-10">공지사항 수정</h1>
		<form class="form-horizontal" action="updateProc.jsp" method="post"
			onsubmit="return input(this)">

			<input type="hidden" name="no" value="<%=no%>"> <input
				type="hidden" name="word" value="<%=request.getParameter("word")%>">
			<input type="hidden" name="col"
				value="<%=request.getParameter("col")%>"> <input
				type="hidden" name="nowPage"
				value="<%=request.getParameter("nowPage")%>">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">작성자:</label>
				<div class="col-sm-6">
					<label class="control-label col-sm-2" for="id">admin</label>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="title">제목</label>
				<div class="col-sm-8">
					<input type="text" name="title" id="title" class="form-control"
						value="<%=dto.getTitle()%>">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="content">내용</label>
				<div class="col-sm-8">
					<textarea rows="12" cols="7" id="content" name="content"
						class="form-control"><%=dto.getContent()%></textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="passwd">비밀번호</label>
				<div class="col-sm-6">
					<input type="password" name="passwd" id="passwd"
						class="form-control">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-5">
					<button class="btn btn-default">수정</button>
					<button type="button" class="btn btn-default"
						onclick="history.back()">취소</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
