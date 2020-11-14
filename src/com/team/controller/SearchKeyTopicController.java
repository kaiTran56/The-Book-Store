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
 * Servlet implementation class SearchKeyTopicController
 */

public class SearchKeyTopicController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchKeyTopicController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String keyword = request.getParameter("check-keyword");
		String topic = request.getParameter("check-topic");

		List<Product> listProductKeyTopic = new ProductDaoImpl().searchByKeyTopic(keyword, topic);
		if (listProductKeyTopic.size() == 0) {
			request.setAttribute("noresult", "Nothing to show!");
		}
		request.setAttribute("listproductkey", listProductKeyTopic);
		request.getRequestDispatcher("/view/user/template/search-key-topic").forward(request, response);
	}

}
