package com.team.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.dao.impl.OrderedDaoImpl;
import com.team.dao.impl.TransactionDaoImpl;
import com.team.dao.impl.UserDaoImpl;
import com.team.model.Item;
import com.team.model.Order;
import com.team.model.Ordered;
import com.team.model.Transactions;
import com.team.model.User;

/**
 * Servlet implementation class PlaceOrderController
 */

public class PlaceOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PlaceOrderController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String message = request.getParameter("message");

		HttpSession session = request.getSession();

		int maxOrds_id = (Integer) session.getAttribute("maxOrdered_id");

		String email = (String) session.getAttribute("username");
		User user = new UserDaoImpl().get(email);
		int user_id = user.getUser_id();
		String status = "Not Finish!";

		Order order = (Order) session.getAttribute("order");

		List<Item> listItems = order.getItems();
		List<Integer> product_id = new ArrayList<Integer>();

		listItems.forEach(p -> {
			product_id.add(p.getProduct().getProduct_id());
		});
		double payment = order.getSumPrice();
		int maxTrans_id = (Integer) session.getAttribute("maxTransaction_id");
		maxTrans_id++;
		Transactions transaction = new Transactions(maxTrans_id, user, message, payment, status, created);
		new TransactionDaoImpl().insert(transaction);

		Ordered orderTemp = new Ordered(ordered_id, product_id, transaction_id, amount);
		new OrderedDaoImpl().insert(orderTemp);

		System.out.println("Max: " + maxTrans_id);

		response.sendRedirect(request.getContextPath() + "/view/user/checkout");

	}

}
