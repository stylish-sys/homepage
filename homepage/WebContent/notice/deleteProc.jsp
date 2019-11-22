<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/noticessi.jsp"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	String passwd = request.getParameter("passwd");

	Map map = new HashMap();
	map.put("no", no);
	map.put("passwd", passwd);

	boolean pflag = dao.passCheck(map);
	if (pflag) {
		flag = dao.delete(no);
	}
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
	url += "&nowPage=<%=request.getParameter("nowPage")%>
	";

		location.href = url;
	}
</script>
</head>
<body>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
	<div class="container">
		<form action="list.jsp">
			<div class="well well-lg">
				<%
					if (!pflag) {
						out.print("비밀번호가 잘못되었습니다.");
					} else if (!flag) {
						out.print("글 등록에 실패하였습니다.");
					} else
						out.print("삭제되었습니다.");
				%>

			</div>
			<div>
				<%
					if (!pflag) {
				%>
				<button class="btn btn-default" type="button"
					onclick="history.back()">다시시도</button>
				<button class="btn btn-default">목록</button>
				<%
					} else {
				%>
				<button class="btn btn-default">목록</button>
				<%
					}
				%>
			</div>
		</form>

	</div>
</body>
</html>