<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>
<%
	int memono = Integer.parseInt(request.getParameter("memono"));
	dto = dao.read(memono);
%><!DOCTYPE html>
<html>
<head>
<title>memo</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>
	<div class="container">
		<h1 class="col-sm-offset-2 col-sm-10">메모 수정</h1>
		<form class="form-horizontal" action="updateProc.jsp" method="post">
			<input type="hidden" name="memono" value="<%=memono%>"> <input
				type="hidden" name="col" value="<%=request.getParameter("col")%>">
			<input type="hidden" name="word"
				value="<%=request.getParameter("word")%>"> <input
				type="hidden" name="nowPage"
				value="<%=request.getParameter("nowPage")%>">

			<div class="form-group">
				<label class="control-label col-sm-2" for="title">제목</label>
				<div class="col-sm-6">
					<input type="text" name="title" id="title" class="form-control"
						value="<%=dto.getTitle()%>">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="content">내용</label>
				<div class="col-sm-6">
					<textarea rows="5" cols="5" id="content" name="content"
						class="form-control"><%=dto.getContent()%></textarea>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-5">
					<button class="btn">수정</button>
					<button type="reset" class="btn"
						onclick="location.href='./list.jsp'">취소</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>