<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/noticessi.jsp"%>
<jsp:setProperty name="dto" property="*" />
<%
	Map map = new HashMap();
	map.put("no", dto.getNo());
	map.put("passwd", dto.getPasswd());

	flag = false;
	boolean pflag = dao.passCheck(map);
	if (pflag) {
		flag = dao.update(dto);
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>게시판생성</title>
<meta charset="utf-8">
<script type="text/javascript">
  function listn(){
		var url = "list.jsp";
		url += "?col=<%=request.getParameter("col")%>";
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
		<div class="well well-lg">
			<%
				if (!pflag) {
					out.print("잘못된 비밀번호 입니다.");
				} else if (flag) {
					out.print("글 수정을 성공했습니다.");
				} else {
					out.print("글 수정을 실패했습니다.");
				}
			%>


		</div>
		<%
			if (!pflag) {
		%>
		<button class="btn btn-default" onclick="history.back()">다시시도</button>
		<%
			}
		%>
		<button class="btn btn-default" onclick="listn()">목록</button>

	</div>


</body>
</html>
