<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, com.luv2code.jsp.tagdemo.Student" %>

<!-- Scriptlet - Sample Data - Normally created by MVC-->
<%
	// create empty list of Students
	List<Student> data = new ArrayList<>();
	
	// add new Students to list
	data.add(new Student("John", "Doe", false));
	data.add(new Student("Barry", "Allen", true));
	data.add(new Student("Jessica", "Jones", false));
	data.add(new Student("Misty", "Knight", true));
	data.add(new Student("Luke", "Cage", false));

	// set a page context attribule
	pageContext.setAttribute("myStudents", data);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSTL - forEach Student Test</title>
</head>
<body>
	<table border=1>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gold Customer</th>
		</tr>
		<c:forEach var="student" items="${myStudents}">
		<tr>
			<td>${student.firstName}</td>
			<td>${student.lastName}</td>
			<td>${student.goldCustomer}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>