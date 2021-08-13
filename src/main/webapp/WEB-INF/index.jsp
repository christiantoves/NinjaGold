<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>My Ninja Gold</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	</head>
	<body>
		<h1>Ninja Gold</h1>
        <h2>Your Gold <c:out value="${gold}"/></h2>
        <form action="/gold" method="POST">
        	<h3>Donkey Farm</h3>
        	<p>(earns 10-20 gold)</p>
        	<input type="hidden" name="type" value="farm"/>
        	<input type="submit" value="Find Gold!"/>
        </form>
        <form action="/gold" method="POST">
        	<h3>My Man Cave</h3>
        	<p>(earns 5-10 gold)</p>
        	<input type="hidden" name="type" value="cave"/>
        	<input type="submit" value="Find Gold!"/>
        </form>
        <form action="/gold" method="POST">
        	<h3>Your Mom's House</h3>
        	<p>(earns 2-5 gold)</p>
        	<input type="hidden" name="type" value="house"/>
        	<input type="submit" value="Find Gold!"/>
        </form>
        <form action="/gold" method="POST">
        	<h3>Your Mom's Casino</h3>
        	<p>(earns/takes 0-50 gold)</p>
        	<input type="hidden" name="type" value="casino"/>
        	<input type="submit" value="Find Gold!"/>
        </form>
        <div>
        	<c:forEach var="activity" items="${activities}">
        		<c:choose>
       				<c:when test="${activity.contains('gained')}">
		        		<p style="color:green;"><c:out value="${activity}"/></p>       				
       				</c:when>
       				<c:otherwise>
		        		<p style="color:red;"><c:out value="${activity}"/></p>       				
       				</c:otherwise>
       			</c:choose>
        	</c:forEach>
        </div>
	</body>
</html>