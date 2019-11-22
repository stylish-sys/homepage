<%@ page contentType="text/html; charset=UTF-8"%>
<%
	session.removeAttribute("id");

	response.sendRedirect("../index.jsp");
%>