<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<link rel="stylesheet" href="../css/pageStyle.css" type="text/css">
<form action="<%=request.getContextPath()%>/editEmpUrl" method="POST">
	<table width=100%>
		<tr>
			<th colspan="3"><span class="labelStyle">Edit Employee::</span>
					<input type="hidden" name="eId" value="${empDetail.getId()}"></th>
		</tr>
		<tr>
			<th>First Name</th>
			<th><input type="text" name="firstName"
				value="${empDetail.getFirstName()}"></th>
		</tr>
		<tr>
			<th>Last Name</th>
			<th><input type="text" name="lastName" value="${empDetail.getLastName()}"></th>
		</tr>
		<tr>
			<th>Salary</th>
			<th><input type="text" name="salary"
				value="${empDetail.getSalary()}"></th>
		</tr>
		<tr>
			<th>Age</th>
			<th><input type="text" name="age" value="${empDetail.getAge()}"></th>
		</tr>

		<tr>
			<th>Email</th>
			<th><input type="text" name="email"
				value="${empDetail.getEmail()}"></th>
		</tr>
		<tr>
			<th>&nbsp;</th>
			<th><input type="submit" name="Submit" value="Submit"></th>
		</tr>
	</table>
</form>