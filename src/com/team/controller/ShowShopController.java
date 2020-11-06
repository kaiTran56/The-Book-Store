package com.team.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.dao.impl.ProductDaoImpl;
import com.team.model.Product;

/**
 * Servlet implementation class ShowShopController
 */
@WebServlet("/ShowShopController")
public class ShowShopController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowShopController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Product> listPorduct = new ProductDaoImpl().getAll();
		System.out.println("TEst shop:" +listPorduct.get(1).getProduct_id());
		request.setAttribute("listproduct", listPorduct);
		request.getRequestDispatcher("/view/user/template/shop.jsp").forward(request, response);
	}

}
