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
	private boolean check = false;
	private int quantity = 1;

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
	protected void doPos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Item> listItems = new ArrayList<Item>();
		int n = 1;
		int product_id = Integer.parseInt(request.getParameter("id"));

		if (product_id != 0) {
			this.product = productDao.get(product_id);
			System.out.println("Done1");
		}
		if (product != null) {
			quantity = n;
			System.out.println("Done2");
		}

		if (session.getAttribute("order") == null) {

			Order order = new Order();

			Item item = new Item();
			item.setAmount(quantity);
			item.setId(product.getProduct_id() + "");
			item.setProduct(product);
			item.setPrice(product.getPrice() - (product.getPrice() * product.getDiscount()) / 100);

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
			listItems = order.getItems();

			if (check == false) {
				Item item = new Item();
				item.setAmount(quantity);
				item.setId(product.getProduct_id() + "");
				item.setProduct(product);
				item.setPrice(product.getPrice() - (product.getPrice() * product.getDiscount()) / 100);
				order.setSumPrice(order.getSumPrice() + (item.getProduct().getPrice()
						- (item.getProduct().getPrice() * item.getProduct().getDiscount() / 100)));
				listItems.add(item);
			}
			n = listItems.size();

			session.setAttribute("length-order", n);
			session.setAttribute("order", order);
			session.setAttribute("sumprice", order.getSumPrice());
		}
		int sizeTemp = listItems.size();
		session.setAttribute("length", sizeTemp);
		System.out.println("check List: " + listItems.toString());
		System.out.println("check List: " + (Order) session.getAttribute("order"));

		System.out.println("Number: " + n);
		System.out.println("Successfully Done add to cart!");
		response.sendRedirect(request.getContextPath() + "/view/user/shop");

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int n = 0;
		int quantity = 1;
		int product_id;
		if (request.getParameter("id") != null) {
			product_id = Integer.parseInt(request.getParameter("id"));
			this.product = productDao.get(product_id);
			if (product != null) {
				if (request.getParameter("quantity") != null) {
					quantity = Integer.parseInt(request.getParameter("quantity"));
				}
				HttpSession session = request.getSession();
				if (session.getAttribute("order") == null) {
					Order order = new Order();
					List<Item> listItems = new ArrayList<Item>();
					Item item = new Item();
					item.setAmount(quantity);
					item.setId(product.getProduct_id() + "");
					item.setProduct(product);
					item.setPrice(product.getPrice() - (product.getPrice() * product.getDiscount()) / 100);

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
					List<Item> listItems = order.getItems();
					boolean check = false;
					for (Item item : listItems) {
						if (item.getProduct().getProduct_id() == product.getProduct_id()) {
							item.setAmount(item.getAmount() + quantity);
							order.setSumPrice(order.getSumPrice() + item.getPrice());
							item.setPrice(product.getPrice() - (product.getPrice() * product.getDiscount()) / 100);
							check = true;
						}
					}
					if (check == false) {
						Item item = new Item();
						item.setAmount(quantity);
						item.setId(product.getProduct_id() + "");
						item.setProduct(product);
						item.setPrice(product.getPrice() - (product.getPrice() * product.getDiscount()) / 100);
						order.setSumPrice(order.getSumPrice() + (item.getProduct().getPrice()
								- (item.getProduct().getPrice() * item.getProduct().getDiscount() / 100)));
						listItems.add(item);
					}

					int sizeTemp = listItems.size();
					session.setAttribute("length", sizeTemp);

					session.setAttribute("order", order);
					session.setAttribute("sumprice", order.getSumPrice());
				}
			}

			response.sendRedirect(request.getContextPath() + "/view/user/shop");

		} else {
			response.sendRedirect(request.getContextPath() + "/view/user/shop");

		}

	}

}
