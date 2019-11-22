<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="dao" class="join.JoinDAO"/>
<%
	String email = request.getParameter("email");
	
	boolean flag = dao.duplicateEmail(email);
	
	String str = "";
	
	if(flag){
		str = email + "는 사용이 불가능합니다.";
	}else{
		str = email + "는 사용 가능합니다.";
	}
	
	out.print(str);
%>