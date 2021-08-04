<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<%@include file="header.jsp" %>
    <h3>Menu Page:</h3>
    
    <ol>
    <li> <a href="pages/add.jsp"> Add Employee</a> </li>
    <li> <a href="<%=request.getContextPath()%>/list"> List Employee</a> </li>
    <li><a href="pages/logout.jsp">Log Out</a> </li>
    </ol>