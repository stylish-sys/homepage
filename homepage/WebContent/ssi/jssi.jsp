<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="join.*" %>
<%@ page import="java.util.*"%>
<%@ page import="utility.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>

<jsp:useBean id="dao" class="join.JoinDAO"/>
<jsp:useBean id="dto" class="join.JoinDTO" />


<link rel="stylesheet" href="../assetstest/css/main.css" />

<%

	String root = request.getContextPath();

	request.setCharacterEncoding("utf-8");

	List<JoinDTO> list = null;
	
	Iterator<JoinDTO> iter = null;
	
	boolean flag = false;
	
	String upDir = application.getRealPath("/join/storage");
	String tempDir = application.getRealPath("/join/temp");
	
%>
<html>
<body>
	<script src="../assetstest/js/jquery.min.js"></script>
	<script src="../assetstest/js/skel.min.js"></script>
	<script src="../assetstest/js/util.js"></script>
	<script src="../assetstest/js/main.js"></script>

</body>
</html>