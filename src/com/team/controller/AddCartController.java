package com.team.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.dao.impl.ProductDaoImpl;
import com.team.model.Item;
import com.team.model.Order;
import com.team.model.Product;

/**
 * Servlet implementation class AddCartController
 */
public class AddCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Product product;
	private ProductDaoImpl productDao = new ProductDaoImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCartController() {
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
		List<Item> listItems = new ArrayList<Item>();
		int n = Integer.parseInt(request.getParameter("check-quanity"));
		int product_id = Integer.parseInt(request.getParameter("id"));
		int quantity = 1;

		if (product_id != 0) {
			this.product = productDao.get(product_id);
			System.out.println("Done1");
		}
		if (product != null) {
			quantity = Integer.parseInt(request.getParameter("check-quantity"));
			System.out.println("Done2");
		}

		if (session.getAttribute("order") == null) {

			Order order = new Order();

			Item item = new Item();
			item.setAmount(quantity);
			item.setProduct(product);
			item.setPrice(product.getPrice());

			order.setSumPrice(0);
			order.setSumPrice(order.getSumPrice() + item.getPrice());
			listItems.add(item);

			order.setItems(listItems);
			n = listItems.size();

			session.setAttribute("length-order", n);
			session.setAttribute("order", order);
			session.setAttribute("sumprice", order.getSumPrice());
		} else {
			Order order = (Order) session.getAttribute("order");
			listItem = order.getItems();
		}

	}

}
