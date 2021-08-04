package com.neo.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neo.model.Employee;
import com.neo.service.EmployeeService;
import com.neo.service.EmployeeServiceImpl;

/**
 * Servlet implementation class UpdateEmployeeServlet
 */
@WebServlet("/UpdateEmployeeServlet")
public class UpdateEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeService empService = new EmployeeServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateEmployeeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer eId = Integer.parseInt(request.getParameter("eId"));
		PrintWriter out = response.getWriter();
		out.print("From Post");

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		Double salary = Double.parseDouble(request.getParameter("salary"));
		// Integer age = Integer.parseInt(request.getParameter("age"));
		Integer age = Integer.parseInt(request.getParameter("age"));

		out.print(firstName);
		out.print(lastName);

		Employee e = new Employee();
		e.setFirstName(firstName);
		e.setLastName(lastName);
		e.setSalary(salary);
		e.setAge(age);
		e.setEmail(email);
		e.setId(eId);

		empService.updateEmployee(e);
		request.setAttribute("msg", "Data Updated Succcesfully");
		request.setAttribute("empList", empService.allEmployees());
		RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/list.jsp");
		dispatcher.forward(request, response);

	}

}
