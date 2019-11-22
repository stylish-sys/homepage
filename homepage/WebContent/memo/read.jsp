<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>

<%
	int memono = Integer.parseInt(request.getParameter("memono"));

	dao.upViewcnt(memono);
	dto = dao.read(memono);

	String content = "";

	content = dto.getContent();
	content = content.replaceAll("\r\n", "<br>");
%>
<!DOCTYPE html>
<html>
<head>
<title>memo</title>
<meta charset="utf-8">

<script type="text/javascript">
function updateM(){
    var url = "updateForm.jsp";
    url += "?memono=<%=dto.getMemono()%>";
	url += "&col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	url += "&nowPage=<%=request.getParameter("nowPage")%>";
	
    location.href=url;
  }
function deleteM(){
    var url = "deleteForm.jsp";
    url += "?memono=<%=dto.getMemono()%>";
	url += "&col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	url += "&nowPage=<%=request.getParameter("nowPage")%>";
	
	location.href = url;
	}
	
function listb(){
	var url = "list.jsp";
	url += "?col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	url += "&nowPage=<%=request.getParameter("nowPage")%>";
		
	location.href = url;
	
}
</script>
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>

	<div class="container">
		<h2>조회</h2>
		<div class="panel panel-default">
			<div class="panel-heading">제목</div>
			<div class="panel-body"><%=dto.getTitle()%></div>

			<div class="panel-heading">내용</div>
			<div class="panel-body"><%=content%></div>

			<div class="panel-heading">조회수</div>
			<div class="panel-body"><%=dto.getViewcnt()%></div>

			<div class="panel-heading">등록일</div>
			<div class="panel-body"><%=dto.getWdate()%></div>
		</div>

		<div>
			<button type="button" class="btn"
				onclick="location.href='./createForm.jsp'">등록</button>
			<button type="button" class="btn btn-default" onclick="updateM()">수정</button>
			<button type="button" class="btn btn-default" onclick="deleteM()">삭제</button>
			<button type="button" class="btn btn-default" onclick="listb()">목록</button>
		</div>
	</div>
</body>
</html>
