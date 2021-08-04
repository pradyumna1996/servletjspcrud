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
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeService empService = new EmployeeServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String action = "";
		Integer id = 0;
		if (request.getParameter("eId") != null) {
			id = Integer.parseInt(request.getParameter("eId"));
		}
		if (request.getParameter("action") != null) {
			action = request.getParameter("action");
			if (action.equals("delete")) {
				empService.deleteEmployee(id);
				request.setAttribute("msg", "Data Deleted Successfully");
				request.setAttribute("empList", empService.allEmployees());
				RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/list.jsp");
				dispatcher.forward(request, response);
			} else if (action.equals("edit")) {
				out.print("Edit ACtion..... " + id);
				Employee emp = empService.employeeById(id);
				request.setAttribute("empDetail", emp);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/edit.jsp");
				dispatcher.forward(request, response);
			}

		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		out.print("From Post");

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		Double salary = Double.parseDouble(request.getParameter("salary"));
		Integer age = Integer.parseInt(request.getParameter("age"));

		out.print(firstName);
		out.print(lastName);
		
		Employee e= new Employee();
		e.setFirstName(firstName);
		e.setLastName(lastName);
		e.setSalary(salary);
		e.setAge(age);
		e.setEmail(email);
		empService.saveEmployee(e);
	request.setAttribute("savemsg", "Data Added Succcesfully");
	RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/list.jsp");
	dispatcher.forward(request, response);
	}

}
