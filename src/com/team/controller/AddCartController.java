package com.team.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.model.Item;
import com.team.model.Product;

/**
 * Servlet implementation class AddCartController
 */
public class AddCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Product product;

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
		List<Item> listItem = new ArrayList<Item>();
		int n = Integer.parseInt(request.getParameter("check-quanity"));
		int product_id = Integer.parseInt(request.getParameter("id"));
		if(product_id!=0) {
			this.product = 
		}
	}

}
