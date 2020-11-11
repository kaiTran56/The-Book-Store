package com.team.controller;

import java.io.IOException;
import java.time.LocalDateTime;
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
 * Servlet implementation class CheckoutController
 */

public class CheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private int transaction_id;
	private int ordered_id;

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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Hello!");
		String message = request.getParameter("message");

		HttpSession session = request.getSession();

		String email = (String) session.getAttribute("username");
		User user = new UserDaoImpl().get(email);

		String status = "Not Finish!";

		Order order = (Order) session.getAttribute("order");

		List<Item> listItems = order.getItems();

		LocalDateTime created = LocalDateTime.now();
		double payment = order.getSumPrice();

		Transactions transaction = new Transactions(user, message, payment, status, created);
		new TransactionDaoImpl().insert(transaction);

		transaction_id = new TransactionDaoImpl().getTheLastest().getTransaction_id();
		System.out.println("MAXXXXX: " + transaction_id);
		ordered_id = new OrderedDaoImpl().getMaxId().getOrdered_id();

		listItems.forEach(p -> {
			ordered_id++;
			Ordered orderTemp = new Ordered(ordered_id, p.getProduct().getProduct_id(), transaction_id, p.getAmount());
			new OrderedDaoImpl().insert(orderTemp);
		});

		System.out.println("Max: " + transaction_id);

		session.removeAttribute("order");
		System.out.println("Successfully!");

		response.sendRedirect(request.getContextPath() + "/view/user/homepage");

	}

}
