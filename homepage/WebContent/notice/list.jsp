<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/noticessi.jsp"%>
<%
	String col = Utility.checkNull(request.getParameter("col"));
	String word = Utility.checkNull(request.getParameter("word"));
	
	if(col.equals("total"))
		word = "";
	
	int nowPage = 1;
	if(request.getParameter("nowPage")!=null)
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	
	int recordPage = 5;
	
	int sno = ((nowPage-1)*recordPage) + 1;
	int eno = nowPage*recordPage;
	
	Map map = new HashMap();
	map.put("col",col);
	map.put("word",word);
	map.put("sno",sno);
	map.put("eno",eno);
	
	list = dao.list(map);
	iter = list.iterator();
	
	int total = dao.total(map);

%>
<!DOCTYPE html>

<html>
<head>
<title>notice</title>
<meta charset="utf-8">
<script type="text/javascript">
function read(no){
	var url = "read.jsp";
	url +="?no="+no;
	url +="&col=<%=col%>";
	url +="&word=<%=word%>";
	url +="&nowPage=<%=nowPage%>";
	
	location.href=url;
}
</script>
</head>
<body>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
	<div class="container">
		<h1>공지사항</h1>
		<form action="./list.jsp" class="form-inline">
			<div class="form-group">
				<select class="form-control" name="col">
					<option value="title"
						<%if(col.equals("title")) out.print("selected"); %>>제목</option>
					<option value="title"
						<%if(col.equals("content")) out.print("selected"); %>>내용</option>
					<option value="title_content"
						<%if(col.equals("title_content")) out.print("selected"); %>>제목+내용</option>
					<option value="total"
						<%if(col.equals("total")) out.print("selected"); %>>전체출력</option>
				</select>
			</div>
			<div class="form-group">
				<input type="text" placeholder="Enter Keyword" class="form-control"
					name="word" value="<%=word%>">
				<button type="submit" class="btn btn-default">검색</button>
				<button type="button" class="btn btn-default"
					onclick="location.href='createForm.jsp'">등록</button>
			</div>
		</form>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>번호</th>
					<th colspan="3">제목</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<%if(list.size()==0){ %>
				<tr>
					<td colspan="3">등록된 공지사항이 없습니다.</td>
				</tr>

				<%}else{
				while(iter.hasNext()){
					dto = iter.next();
				
				%>
				<tr>
					<td><%=dto.getNo() %></td>
					<td colspan="3"><a href="javascript:read('<%=dto.getNo() %>')"><%=dto.getTitle() %></a>
						<%if(Utility.compareDAy(dto.getWdate())){ %> <img
						src="<%=root %>/images/new.gif"> <%} %></td>
					<td><%=dto.getWdate() %></td>
				</tr>


				<%}} %>

			</tbody>
		</table>
		<div>
			<%=Utility.paging(total, nowPage, recordPage, col, word)%>
		</div>
	</div>

</body>
</html>