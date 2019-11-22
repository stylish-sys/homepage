<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="dao" class="join.JoinDAO" />
<%@ page import="java.util.*"%>

<%
	Map map = new HashMap();

	String id = request.getParameter("id");
	String email = request.getParameter("email");

	map.put("id", id);
	map.put("email", email);

	String passwd = dao.passwd_find(map);

	String str = "";

	if (passwd == null) {
		str = "찾으시는 비밀번호는" + passwd + "는 없습니다.";
	} else {
		str = "찾으시는 비밀번호는 " + passwd + " 입니다.";
	}

	out.print(str);
%>