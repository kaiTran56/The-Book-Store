package com.team.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.dao.impl.TransactionDaoImpl;
import com.team.dao.impl.UserDaoImpl;
import com.team.model.Transactions;
import com.team.model.User;

/**
 * Servlet implementation class ProfileUser
 */

public class ProfileUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDaoImpl userDao;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfileUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		this.userDao = new UserDaoImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("username");
		if (email != null) {
			User user = userDao.get(email);
			request.setAttribute("createdDay", user.getCreated());
			request.setAttribute("userDetail", user);
			request.getRequestDispatcher("/view/user/template/profile.jsp").forward(request, response);
			int user_id = user.getUser_id();
			List<Transactions> transaction = new TransactionDaoImpl().get(user_id);
			request.setAttribute("listtran", transaction);

		} else {
			request.getRequestDispatcher("/view/user/template/profile.jsp").forward(request, response);
		}
	}

}
