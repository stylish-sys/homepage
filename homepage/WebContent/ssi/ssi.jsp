<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="memo.*" %>
<%@ page import="utility.*" %>
<%@ page import="java.util.*"%>
<jsp:useBean id="dao" class="memo.MemoDAO" />
<jsp:useBean id="dto" class="memo.MemoDTO" />

<link rel="stylesheet" href="../assetstest/css/main.css" />


<%
	request.setCharacterEncoding("utf-8");

	List<MemoDTO> list = null;

	Iterator<MemoDTO> iter = null;
	
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