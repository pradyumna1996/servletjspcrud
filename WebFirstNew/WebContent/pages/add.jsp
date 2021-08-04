<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="../css/pageStyle.css" type="text/css">

<form action="<%=request.getContextPath()%>/saveEmpUrl" method="post">

	<table width=100%>
		<tr>
			<th colspan="3"><span class="labelStyle"> Add Employee::
					${msg}</span></th>
		</tr>
		<tr>
			<th>First Name</th>
			<th><input type="text" name="firstName"></th>
		</tr>
		<tr>
			<th>Last Name</th>
			<th><input type="text" name="lastName"></th>
		</tr>
		<tr>
			<th>Salary</th>
			<th><input type="text" name="salary"></th>
		</tr>
		<tr>
			<th>Age</th>
			<th><input type="text" name="age"></th>
		</tr>

		<tr>
			<th>Email</th>
			<th><input type="text" name="email"></th>
		</tr>
		<tr>
			<th>&nbsp;</th>
			<th><input type="submit" name="Submit" value="Save Employee"></th>
		</tr>
	</table>
</form>