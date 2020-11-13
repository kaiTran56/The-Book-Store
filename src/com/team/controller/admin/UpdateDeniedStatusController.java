package com.team.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.dao.impl.TransactionDaoImpl;
import com.team.model.Transactions;

/**
 * Servlet implementation class UpdateDeniedStatusController
 */

public class UpdateDeniedStatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateDeniedStatusController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String status = "Denied!";
		int transaction_id = Integer.parseInt(request.getParameter("id"));
		new TransactionDaoImpl().changeStatus(new Transactions(transaction_id, status));
		response.sendRedirect(request.getContextPath() + "/admin/list-order");
	}

}
