<%@page import="com.klef.jfsd.model.Faculty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Faculty f = (Faculty)session.getAttribute("faculty");
if(f == null) {
    response.sendRedirect("facultysessionfail");
    return;
}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Home</title>
</head>
<body>
<%@include file="facultynavbar.jsp" %>
</body>
</html>
