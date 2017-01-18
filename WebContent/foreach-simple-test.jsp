<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- scriptlet - sample data -->
<%
	// sample data ... normally provided by MVC system
	String[] cities = {"Mumbai", "Singapore", "Philadelphia"};
	
	// set a page context attribule
	pageContext.setAttribute("myCities", cities);
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSTL - forEach Simple Test</title>
</head>
<body>
	<c:forEach var="currentCity" items="${myCities}">
		${currentCity} <br/>
	</c:forEach>
</body>
</html>