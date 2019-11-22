<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/noticessi.jsp"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	dto = dao.read(no);
	dao.upViewcnt(no);
	String content = dto.getContent().replaceAll("\r\n", "<br>");
%>
<!DOCTYPE html>

<html>
<head>
<title>notice</title>
<meta charset="utf-8">
<script type="text/javascript">
function listn(){
	var url = "list.jsp";
	url += "?col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	url += "&nowPage=<%=request.getParameter("nowPage")%>	";

	location.href = url;
}
function updaten(no){
	var url = "updateForm.jsp";
	url += "?no="+no;
	url += "&col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	url += "&nowPage=<%=request.getParameter("nowPage")%>";
			
	location.href=url;
}
function deleten(no){
	var url = "deleteForm.jsp";
	url += "?no="+no;
	url += "&col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	url += "&nowPage=<%=request.getParameter("nowPage")%>	";

		location.href = url;
	}
</script>
</head>
<body>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
	<div class="container">
		<h1>공지사항</h1>
		<div class="panel panel-default">
			<div class="panel panel-heading">번호</div>
			<div class="panel panel-body"><%=dto.getNo()%></div>

			<div class="panel panel-heading">제목</div>
			<div class="panel panel-body"><%=dto.getTitle()%></div>

			<div class="panel panel-heading">내용</div>
			<div class="panel panel-body" style="height: 100px"><%=content%></div>

			<div class="panel panel-heading">조회수</div>
			<div class="panel panel-body"><%=dto.getViewcnt()%></div>

			<div class="panel panel-heading">등록일</div>
			<div class="panel panel-body"><%=dto.getWdate()%></div>

			<button class="btn btn-default"
				onclick="location.href='./createForm.jsp'">등록</button>
			<button class="btn btn-default" onclick="updaten('<%=no%>')">수정</button>
			<button class="btn btn-default" onclick="deleten('<%=no%>')">삭제</button>
			<button class="btn btn-default" onclick="listn()">목록</button>

		</div>

	</div>
</body>
</html>