<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>




<div style="float: left; background-color: #C2C2C2; width: 100%">
	<div
		style="float: left; border: solid 2px blue; align-content: center; width: 70%">
		<h1 style="text-align:center; justify-content: center;">Welcome To Employee
			Management System</h1>
	</div>
	<div
		style="float: left; border: solid 2px red;  width: 20% ; margin-left: 5px;">
		<p style="justify-content: center;align-content: center;">Logged In As:</p>
		<% ;
		out.print(session.getAttribute("suname").toString().toUpperCase()) ; 
%>
	</div>
	
</div>