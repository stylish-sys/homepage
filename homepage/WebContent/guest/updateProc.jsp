<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/bssi.jsp"%>
<jsp:setProperty property="*" name="dto" />
<%
	Map map = new HashMap();

	map.put("guestno", dto.getGuestno());
	map.put("passwd", dto.getPasswd());

	boolean pflag = dao.passCheck(map);

	if (pflag) {
		flag = dao.update(dto);
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
<title>Guest</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp"/>
<jsp:include page="/menu/top.jsp" />
<body>

	<div class="container">
		<div class="well well-lg">
			<%
				if (!pflag) {
					out.print("비밀번호 오류");
				} else if (flag) {
					out.print("글 수정 성공");
				} else {
					out.print("실패");
				}
			%>
		</div>
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
</body>
</html>