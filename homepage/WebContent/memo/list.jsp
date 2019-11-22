<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>

<%
	String word = Utility.checkNull(request.getParameter("word"));

	String col = Utility.checkNull(request.getParameter("col"));

	if (col.equals("total"))
		word = "";

	int nowPage = 1;
	if (request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}

	int recordPerPage = 5;
	int sno = ((nowPage - 1) * recordPerPage) + 1;
	int eno = nowPage * recordPerPage;

	Map map = new HashMap();
	map.put("col", col);
	map.put("word", word);
	map.put("sno", sno);
	map.put("eno", eno);

	list = dao.list(map);
	iter = list.iterator();
	int total = dao.total(map);
%>
<!DOCTYPE html>
<html>
<head>
<title>memo</title>
<meta charset="utf-8">
<script type="text/javascript">
	function read(memono) {
		var url = "read.jsp";
		url += "?memono=" + memono;
		url += "&col=<%=col%>";
		url += "&word=<%=word%>";
		url += "&nowPage=<%=nowPage%>";

		location.href = url;
	}
</script>
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>
	<div class="container">
		<h2>메모 목록</h2>
		<form class="form-inline" action="./list.jsp">
			<div class="form-group">
				<select class="form-control" name="col">
					<option value="title"
						<%if (col.equals("title"))
				out.print("selected");%>>제목</option>
					<option value="content"
						<%if (col.equals("content"))
				out.print("selected");%>>내용</option>
					<option value="title_content"
						<%if (col.equals("title_content"))
				out.print("selected");%>>제목+내용</option>
					<option value="total"
						<%if (col.equals("total"))
				out.print("selected");%>>전체출력</option>
				</select>
			</div>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter 검색어"
					name="word" value="<%=word%>">
			</div>
			<button class="btn btn-default">검색</button>
			<button type="button" class="btn btn-default"
				onclick="location.href='createForm.jsp'">등록</button>
		</form>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<%
					if (list.size() == 0) {
				%>
				<tr>
					<td colspan="4">등록된 메모가 없습니다.</td>
					<%
						} else {
							iter = list.iterator();

							while (iter.hasNext()) {
								dto = iter.next();
					%>
				
				<tr>
					<td><%=dto.getMemono()%></td>
					<td><a href="javascript:read('<%=dto.getMemono()%>')"><%=dto.getTitle()%></a></td>
					<td><%=dto.getWdate()%></td>
					<td><%=dto.getViewcnt()%></td>
				</tr>
				<%
					}
					}
				%>
			</tbody>
		</table>
		<div>
			<%=Utility.paging(total, nowPage, recordPerPage, col, word)%>
		</div>
	</div>
</body>
</html>
