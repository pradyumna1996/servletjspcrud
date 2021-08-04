<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>

<%-- <a href="<%=request.getContextPath() %>/pages/menu.jsp">Back</a> --%>

<h2>${savemsg}</h2>

<table border="1" width="100%" cellpadding="5" bgcolor="F5F7EE">
	<tr>
	<th colspan="8">Employee Count: <c:out value="${fn:length(empList) }" />
					Employee List:: <c:out value="${ msg}"/></th>
	</tr>
	<tr>
	<th>S.No</th>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Salary</th>
	<th>Age</th>
	<th>Email</th>
	<th colspan="2">Action</th>
	</tr>
	<c:forEach items="${empList }" var="emp" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td>${emp.firstName }</td>
			<td>${ emp.lastName}</td>
			<td>${ emp.salary}</td>
			<td>${emp.age }</td>
			<td>${ emp.email}</td>
			<td><a href="<%=request.getContextPath() %>/empUrl?action=edit&eId=${emp.id }">Update</a></td>
			<td><a href="<%=request.getContextPath() %>/empUrl?action=delete&eId=${emp.id }">Delete</a></td>
		
		</tr>
		
	</c:forEach>
	
</table>
    