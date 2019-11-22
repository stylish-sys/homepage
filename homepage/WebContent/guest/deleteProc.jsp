<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/bssi.jsp"%>
<%
	int guestno = Integer.parseInt(request.getParameter("guestno"));
	String passwd = request.getParameter("passwd");

	Map map = new HashMap();
	map.put("guestno", guestno);
	map.put("passwd", passwd);

	boolean pflag = dao.passCheck(map);

	if (pflag) {
		flag = dao.delete(guestno);
	}
%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function listb(){
	var url = "list.jsp";
	url += "?col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	url += "&nowPage=<%=request.getParameter("nowPage")%>";

	location.href = url;
	}
</script>
<title>guest</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>

	<div class="container">
		<div class="well well-lg">
			<%
				if (!pflag) {
					out.print("잘못된 비번");
				} else if (flag) {
					out.print("글 삭제 성공");
				} else
					out.print("글 삭제 실패");
			%><br> <br>
			<%
				if (!pflag) {
			%>
			<button class="btn btn-default" onclick="history.back()">다시
				시도</button>
			<%
				}
			%>
			<button class="btn btn-default"
				onclick="location.href='createForm.jsp'">다시 등록</button>
			<button class="btn btn-default" onclick="listb()">목록</button>
		</div>
	</div>
</body>
</html>