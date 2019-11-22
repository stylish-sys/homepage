<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/bssi.jsp"%>
<jsp:setProperty property="*" name="dto" />
<%
	Map map = new HashMap();

	map.put("grpno", dto.getGrpno());
	map.put("ansnum", dto.getAnsnum());

	dao.reply_ansnum(map); //기존답변의 순설르 변경

	flag = dao.reply_create(dto); //답변등록
%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
function listb(){
	var url = "list.jsp";
	url += "?col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	url += "&nowPage=<%=request.getParameter("nowPage")%>";

		location.href = url;
	}
</script>
<head>
<title>guest</title>
<meta charset="utf-8">
</head>
<jsp:include page="/topnext01.jsp" />
<jsp:include page="/menu/top.jsp" />
<body>

	<div class="container">
		<div class="well well-lg">
			<%
				if (flag) {
					out.print("글 답변에 성공했습니다.");
				} else {
					out.print("글 답변에 실패했습니다.");
				}
			%>
		</div>
		<button class="btn btn-default" onclick="history.back()">다시
			시도</button>
		<button class="btn btn-default" onclick="listb()">목록</button>
	</div>
</body>
</html>