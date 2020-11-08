package com.team.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.dao.impl.ProductDaoImpl;
import com.team.model.Item;
import com.team.model.Order;
import com.team.model.Product;

/**
 * Servlet implementation class DeleteProductIntCartController
 */
@WebServlet("/DeleteProductIntCartController")
public class DeleteProductInCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteProductInCartController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		Product product = new ProductDaoImpl().get(id);
		Order order = (Order) session.getAttribute("order");
		List<Item> listItems = order.getItems();
		/*
		 * listItems.stream().forEach(p -> { if (p.getProduct().getProduct_id() ==
		 * product.getProduct_id()) { order.setSumPrice(order.getSumPrice() -
		 * p.getPrice()); listItems.remove(p);
		 * System.out.println("Delete cart successfully!"); } });
		 */
		listItems.stream().filter(p -> p.getProduct().getProduct_id() == product.getProduct_id())
				.forEach(p -> listItems.remove(p));

		order.setItems(listItems);
		session.setAttribute("order", order);
		response.sendRedirect(request.getContextPath() + "/view/user/shopping-cart");

		if (order.getSumPrice() == 0) {
			session.setAttribute("sumprice", "0");
		} else {
			session.setAttribute("sumprice", order.getSumPrice());
		}
	}
}
