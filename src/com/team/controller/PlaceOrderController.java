package com.team.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.dao.impl.UserDaoImpl;
import com.team.model.Item;
import com.team.model.Order;
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

		HttpSession session = request.getSession();

		int maxTrans_id = (Integer) session.getAttribute("maxTransaction_id");
		int maxOrds_id = (Integer) session.getAttribute("maxOrdered_id");

		String email = (String) session.getAttribute("username");
		User user = new UserDaoImpl().get(email);
		int user_id = user.getUser_id();

		Order order = (Order) session.getAttribute("order");

		List<Item> listItems = order.getItems();
		List<Integer> product_id = new ArrayList<Integer>();

		listItems.forEach(p -> {
			product_id.add(p.getProduct().getProduct_id());
		});

		System.out.println("Max: " + maxTrans_id);

		response.sendRedirect(request.getContextPath() + "/view/user/checkout");

	}

}
