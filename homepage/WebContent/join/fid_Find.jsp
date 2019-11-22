<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="dao" class="join.JoinDAO" />
<%@ page import="java.util.*"%>

<%
	Map map = new HashMap();

	String jname = request.getParameter("jname");
	String email = request.getParameter("email");

	map.put("jname", jname);
	map.put("email", email);

	String id = dao.id_find(map);

	String str = "";

	if (id == null) {
		str = "찾으시는 아이디는 '" + id + "' 는 없습니다.";
	} else {
		str = "찾으시는 아이디는 '" + id + "' 입니다.";
	}

	out.print(str);
%>