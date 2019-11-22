<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="notice.NoticeDTO"%>
<%@ page import="utility.Utility"%>
<jsp:useBean id="dao" class="notice.NoticeDAO" />
<jsp:useBean id="dto" class="notice.NoticeDTO" />
<%@ page import="java.util.*"%>

<link rel="stylesheet" href="../assetstest/css/main.css" />

<%
	String root = request.getContextPath();
	request.setCharacterEncoding("utf-8");
	List<NoticeDTO> list = null;
	Iterator<NoticeDTO> iter = null;

	boolean flag = false;
%>

<body>
	<script src="../assetstest/js/jquery.min.js"></script>
	<script src="../assetstest/js/skel.min.js"></script>
	<script src="../assetstest/js/util.js"></script>
	<script src="../assetstest/js/main.js"></script>
</body>
