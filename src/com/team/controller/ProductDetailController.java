package com.team.controller;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

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
 * Servlet implementation class ProductDetailController
 */

public class ProductDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String check_id;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductDetailController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*
		 * show the detail information about product by product_id
		 */

		check_id = request.getParameter("id");

		Product product = new ProductDaoImpl().get(Integer.parseInt(check_id));
		request.setAttribute("productdetail", product);

		/*
		 * show the related book
		 * 
		 */
		List<Product> listRelate = new ProductDaoImpl().getAll().stream().limit(3).collect(Collectors.toList());
		request.setAttribute("listrelate", listRelate);

		request.getRequestDispatcher("/view/user/template/product.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int checkQuantity = Integer.parseInt(request.getParameter("purchase-quantity"));
		int product_id = Integer.parseInt(check_id);
		HttpSession session = request.getSession();
		Order order = (Order) session.getAttribute("order");
		List<Item> listItems = order.getItems();
		order.setSumPrice(0);
		listItems.stream().filter(p -> p.getProduct().getProduct_id() == product_id).forEach(p -> {
			p.setAmount(checkQuantity);

			p.setPrice(p.getProduct().getPrice());

			System.out.println("Check Quantity and Price: " + p.getAmount() + " : " + p.getPrice());

			order.setSumPrice(order.getSumPrice() + p.getPrice());
		});
		System.out.println("Quantity: " + checkQuantity);
		order.setItems(listItems);
		session.setAttribute("order", order);
		session.setAttribute("sumprice", order.getSumPrice());

		request.getRequestDispatcher("/view/user/template/product.jsp").forward(request, response);

	}

}
