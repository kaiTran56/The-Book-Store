package com.team.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.dao.impl.OrderedDaoImpl;
import com.team.model.Ordered;

/**
 * Servlet implementation class ListBestSellerController
 */
@WebServlet("/ListBestSellerController")
public class ListBestSellerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListBestSellerController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Ordered> listBestSeller = new OrderedDaoImpl().getBestSeller();

		request.setAttribute("listproduct", listBestSeller);

		request.getRequestDispatcher("/view/user/template/shop.jsp").forward(request, response);

	}

}
