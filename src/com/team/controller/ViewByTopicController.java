package com.team.controller;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.dao.impl.ProductDaoImpl;
import com.team.model.Product;

/**
 * Servlet implementation class ViewBookByTopic
 */

public class ViewByTopicController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewByTopicController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// String author = request.getParameter("check-author");
		String topic = "Short story";
		List<Product> listTopic = new ProductDaoImpl().getAll().stream()
				.filter(p -> p.getTopic().equalsIgnoreCase(topic)).collect(Collectors.toList());
		request.setAttribute("listproductkey", listTopic);
		request.getRequestDispatcher("/view/user/template/search-result.jsp").forward(request, response);
	}

}
