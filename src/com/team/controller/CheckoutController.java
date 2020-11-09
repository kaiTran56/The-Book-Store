package com.team.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.dao.impl.UserDaoImpl;
import com.team.model.User;

/**
 * Servlet implementation class CheckoutController
 */

public class CheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckoutController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("username");
		if (email != null) {
			User user = new UserDaoImpl().get(email);
			request.setAttribute("createdDay", user.getCreated());
			request.setAttribute("userDetail", user);
			request.getRequestDispatcher("/view/user/template/check-out.jsp").forward(request, response);

		} else {
			request.getRequestDispatcher("/view/user/template/check-out.jsp").forward(request, response);
		}

	}

}
