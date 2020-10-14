package com.team.demo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.dao.implement.ImageDaoImpl;
import com.team.model.Image;

/**
 * Servlet implementation class ShowImage
 */
@WebServlet("/ShowImage")
public class ShowImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ImageDaoImpl imageDao;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	@Override
	public void init() throws ServletException {
		this.imageDao = new ImageDaoImpl();
	}

	public ShowImage() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Image img = imageDao.get(4);
		System.out.println(img.getUrl());
		String url = img.getUrl().substring(52, img.getUrl().length()).replace("\\","//");
		System.out.println(url);
		request.setAttribute("image", url);
		request.getRequestDispatcher("/show_image.jsp").forward(request, response);
	}
}
