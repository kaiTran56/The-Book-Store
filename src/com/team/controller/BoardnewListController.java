package com.team.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.dao.impl.BoardnewDaoImpl;
import com.team.model.Boardnew;

/**
 * Servlet implementation class BoardnewListController
 */

public class BoardnewListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardnewListController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Boardnew> listBoardnew = new BoardnewDaoImpl().getAll();
		request.setAttribute("boardnewlist", listBoardnew);
		request.getRequestDispatcher("").forward(request, response);
	}

}
