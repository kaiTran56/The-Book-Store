package com.team.demo;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import com.team.dao.implement.ImageDaoImpl;
import com.team.model.Image;

/**
 * Servlet implementation class Uploader
 */
@WebServlet("/Uploader")
public class Uploader extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ImageDaoImpl imageDao;

	@Override
	public void init() throws ServletException {
		this.imageDao = new ImageDaoImpl();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Uploader() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		if (!ServletFileUpload.isMultipartContent(request)) {
			out.println("Nothing to upload");
			return;
		}
		FileItemFactory itemfactory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(itemfactory);
		try {
			List<FileItem> items = upload.parseRequest(new ServletRequestContext(request));
			for (FileItem item : items) {
				String contentType = item.getContentType();
				System.out.println("Type: " + contentType);

				/*
				 * @use: check type of file to upload to server
				 * 
				 * @result: Server just recieve the image which have types: png or jpeg
				 * 
				 */

				if (!contentType.equals("image/jpeg") && !contentType.equals("image/png")) {
					out.println("only png or jpeg format image files supported");
					continue;
				}
				
				String fileUrl = "C:\\Users\\Admin\\eclipse-workspace\\WebTest\\WebContent\\images";
				File uploadDir = new File(fileUrl);
				System.out.println("address: " + uploadDir.getAbsolutePath());
				File file = File.createTempFile("img", ".png", uploadDir);
				item.write(file);
				String url = file.getAbsolutePath();
				System.out.println("Address: " + url);
				out.println("File Saved Successfully");
				this.imageDao.insert(new Image(url));
			}
		} catch (FileUploadException e) {

			out.println("upload fail");
		} catch (Exception ex) {

			out.println("can't save");
		}
	}

}
