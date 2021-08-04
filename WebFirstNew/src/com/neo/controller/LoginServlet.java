package com.neo.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println(".....Message");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		out.println(".....Message.....");

		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		if (userName.equals("prad") && password.equals("prad")) {
			out.println("......Welcome........" + userName);
			HttpSession session = request.getSession();
			session.setAttribute("suname", userName);
			RequestDispatcher rd = request.getRequestDispatcher("pages/menu.jsp");
			rd.forward(request, response);
		} else {
			request.setAttribute("msg", "Invalid Login Detetced .Use Your Own password");
			RequestDispatcher rd = request.getRequestDispatcher("/");
			rd.forward(request, response);
		}
	}
}
