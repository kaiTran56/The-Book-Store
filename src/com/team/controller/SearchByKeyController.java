package com.team.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.dao.impl.ProductDaoImpl;
import com.team.model.Product;

/**
 * Servlet implementation class SearchByKeyController
 */

public class SearchByKeyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchByKeyController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String searchKey = request.getParameter("search-key");
		List<Product> listProductByKey = new ProductDaoImpl().getProductByKey(searchKey);
		if (listProductByKey.size() == 0) {
			request.setAttribute("no-result", "Nothing to show!");
		}
		request.setAttribute("listproductkey", listProductByKey);
		request.getRequestDispatcher("/view/user/template/search-result.jsp").forward(request, response);
	}

}
