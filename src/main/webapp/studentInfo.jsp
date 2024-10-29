<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "errorPage.jsp"%>
<%@ page import="com.example.model.Student" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%@ include file="header.jsp" %>

    <% 
    String name = request.getParameter("name");
    String id = request.getParameter("id");

    // check if name and id is empty throw exception
    if (name.isEmpty() || id.isEmpty()) {
        throw new Exception("Student Name and ID is required");
    }

    //instatiate student object and set request scope
     Student student = new Student(name, id);
     request.setAttribute("student", student);

     int grade = student.getGrade();
     request.setAttribute("grade", grade);

    %>

    <p>Student Name: ${student.getName()}</p>
    <p>Student ID: ${student.getId()}</p>
    <p>Student Grade: ${grade}</p>


      <!-- Use c:choose to determine the grade status -->
<c:choose>
    <c:when test="${grade >= 85}">
        <p>Congratulations! You scored an A.</p>
    </c:when>
    <c:when test="${grade >= 70}">
        <p>Well done! You scored a B.</p>
    </c:when>
    <c:when test="${grade >= 50}">
        <p>Good job! You scored a C.</p>
    </c:when>
    <c:otherwise>
        <p>Keep trying! You scored below 50.</p>
    </c:otherwise>
</c:choose>


// 4/12/24 -> midterm test (wednesday) 8.00 - 10.00 pm BK 9/6

    <%@ include file="footer.jsp" %>
</body>
</html>