<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="dao" class="join.JoinDAO" />
<%
	String id = request.getParameter("id");
	
	boolean flag = dao.duplicateID(id);
	
	String str = "";
	
	/* if(flag){
		str = id + "는 사용이 불가능합니다.";
	}else{
		str = id + "는 사용 가능합니다.";
	}
	
	out.print(str);
	 */
	 if(flag){
		 	%>
			{ str : "<%=id%>는 중복되어 사용할수없음"}
		<% }else{%>
		
			{ str : "<%=id%>는 사용할수있음"}
		<%}
%>