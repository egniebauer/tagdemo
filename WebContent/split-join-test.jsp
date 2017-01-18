<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<c:set var="data" value="Singapore,Toyko,Mumbai,London" />

<h3>Split Demo</h3>

<c:set var="citiesArray" value="${fn:split(data, ',')}" />

<c:forEach var="city" items="${citiesArray}">
	${city} <br/>
</c:forEach>

<br/><br/>

<h3>Join Demo</h3>

<c:set var="fun" value="${fn:join(citiesArray, '*')}" />

Result of joining: ${fun}
</body>
</html>