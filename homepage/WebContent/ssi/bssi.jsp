<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="guest.*"%>
<%@ page import="java.util.*"%>
<%@ page import="utility.*"%>
<jsp:useBean id="dao" class="guest.GuestDAO" />
<jsp:useBean id="dto" class="guest.GuestDTO" />

<link rel="stylesheet" href="../assetstest/css/main.css" />


<%
	String root = request.getContextPath();

	request.setCharacterEncoding("utf-8");

	List<GuestDTO> list = null;

	Iterator<GuestDTO> iter = null;

	boolean flag = false;
%>

<html>
<body>
	<script src="../assetstest/js/jquery.min.js"></script>
	<script src="../assetstest/js/skel.min.js"></script>
	<script src="../assetstest/js/util.js"></script>
	<script src="../assetstest/js/main.js"></script>

</body>
</html>