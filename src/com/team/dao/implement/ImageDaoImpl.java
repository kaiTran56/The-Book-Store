package com.team.dao.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.team.JDBC.JDBCConnection;
import com.team.dao.ImageDao;
import com.team.model.Image;

public class ImageDaoImpl extends JDBCConnection implements ImageDao<Image> {
	private Connection connect;
	private Statement statement;
	private PreparedStatement prepared;
	private ResultSet result;

	@Override
	public List<Image> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Image get(int id) {
		connect = super.getConnectionJDBC();
		String sql = "select url from image where id = ?;";
		try {
			prepared = connect.prepareStatement(sql);
			prepared.setInt(1, id);
			result = prepared.executeQuery();
			while (result.next()) {

				return (new Image(result.getString("url")));
			}
			System.out.println("retrive url successfully1");
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	@Override
	public void insert(Image t) {
		connect = super.getConnectionJDBC();
		String sql = "insert into image (url)value (?);";
		try {
			prepared = connect.prepareStatement(sql);
			prepared.setString(1, t.getUrl());
			prepared.executeUpdate();
			System.out.println("insert url Successfuly!");
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public void delete(int id) {
		String sql = "delete from image where id = ?;";

	}

	@Override
	public void edit(Image t) {
		String sql = "update image set url = ? where id = ?;";

	}

}
