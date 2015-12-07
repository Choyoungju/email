<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.hanains.email.dao.EmailListDao"%>
<%@ page import="com.hanains.email.vo.EmailVo"%>

<%
request.setCharacterEncoding("UTF-8");
	String firstName = request.getParameter("fn");
String lastName = request.getParameter("ln");
String email = request.getParameter("email");

EmailVo vo = new EmailVo();
vo.setLastName(lastName);
vo.setEmail(email);
vo.setFirstName(firstName);

EmailListDao dao = new EmailListDao();
dao.insert(vo);

response.sendRedirect("/email/index.jsp");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= firstName %>
	<br>
	<%= lastName %>
	<br>
	<%= email %>
	<br>

</body>
</html>