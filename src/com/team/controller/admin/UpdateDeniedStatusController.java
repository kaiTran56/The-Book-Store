package com.team.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.dao.impl.OrderedDaoImpl;
import com.team.dao.impl.ProductDaoImpl;
import com.team.dao.impl.TransactionDaoImpl;
import com.team.model.Ordered;
import com.team.model.Product;
import com.team.model.Transactions;

/**
 * Servlet implementation class UpdateDeniedStatusController
 */

public class UpdateDeniedStatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Product productTemp;
	private ProductDaoImpl productDao;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateDeniedStatusController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
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

		List<Ordered> listQuantityOrder = new OrderedDaoImpl().getQuantityOrdered(transaction_id);

		listQuantityOrder.forEach(p -> {
			productTemp = new ProductDao;

			new ProductDaoImpl().updateQuantity(productTemp);
		});

		response.sendRedirect(request.getContextPath() + "/admin/list-order");
	}

}
