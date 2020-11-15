package com.team.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.team.JDBC.JDBCConnection;
import com.team.dao.ProductDao;
import com.team.model.Product;

public class ProductDaoImpl extends JDBCConnection implements ProductDao<Product> {
	private Connection connect;
	private Statement statement;
	private PreparedStatement preparedStatement;
	private ResultSet result;

	@Override
	public List<Product> getAll() {
		connect = super.getConnectionJDBC();
		List<Product> listProduct = new ArrayList<Product>();
		String sql = "select p.product_id, p.catalog_id, p.name,c.name, p.price, p.status, p.description, p.discount, p.image_link, p.created, p.quantity from product as p "
				+ "inner join catalog as c " + "on p.catalog_id = c.catalog_id";

		try {
			statement = connect.createStatement();

			result = statement.executeQuery(sql);
			while (result.next()) {
				int product_id = result.getInt("p.product_id");
				int catalog_id = result.getInt("p.catalog_id");
				String name = result.getString("p.name");
				String nameTopic = result.getString("c.name");
				double price = result.getDouble("p.price");
				String status = result.getString("p.status");
				String description = result.getString("p.description");
				int discount = result.getInt("p.discount");
				String image_link = result.getString("p.image_link");
				LocalDateTime created = result.getTimestamp("p.created").toLocalDateTime();
				int quantity = result.getInt("p.quantity");
				Product product = new Product(product_id, catalog_id, name, nameTopic, price, status, description,
						discount, image_link, created, quantity);

				listProduct.add(product);
			}
			statement.close();
			result.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listProduct;
	}

	@Override
	public List<Product> getProductByKey(String keyword) {
		connect = super.getConnectionJDBC();
		List<Product> listProduct = new ArrayList<Product>();
		String sql = "select product_id, catalog_id, name, price, status, description, discount, image_link, created, quantity from product where name like ?;";
		try {
			preparedStatement = connect.prepareStatement(sql);
			preparedStatement.setString(1, keyword + "%");
			result = preparedStatement.executeQuery();
			while (result.next()) {
				int product_id = result.getInt("product_id");
				int catalog_id = result.getInt("catalog_id");
				String name = result.getString("name");
				double price = result.getDouble("price");
				String status = result.getString("status");
				String description = result.getString("description");
				int discount = result.getInt("discount");
				String image_link = result.getString("image_link");
				LocalDateTime created = result.getTimestamp("created").toLocalDateTime();
				int quantity = result.getInt("quantity");
				Product product = new Product(product_id, catalog_id, name, price, status, description, discount,
						image_link, created, quantity);

				listProduct.add(product);
			}
			preparedStatement.close();
			result.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listProduct;
	}

	@Override
	public void insert(Product t) {
		connect = super.getConnectionJDBC();
		String sql = "insert into product (product_id, catalog_id, name, price, status, description, discount, image_link, created, quantity) value(?,?,?,?,?,?,?,?,?, ?);";
		try {
			preparedStatement = connect.prepareStatement(sql);
			preparedStatement.setInt(1, t.getProduct_id());
			preparedStatement.setInt(2, t.getCatalog_id());
			preparedStatement.setString(3, t.getName());
			preparedStatement.setDouble(4, t.getPrice());
			preparedStatement.setString(5, t.getStatus());
			preparedStatement.setString(6, t.getDescription());
			preparedStatement.setInt(7, t.getDiscount());
			preparedStatement.setString(8, t.getImage_link());
			preparedStatement.setTimestamp(9, Timestamp.valueOf(t.getCreated()));
			preparedStatement.setInt(10, t.getQuantity());
			preparedStatement.executeUpdate();
			System.out.println("insert product successfull");
			preparedStatement.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public void edit(Product t) {
		connect = super.getConnectionJDBC();
		String sql = "update product set product_id = ?,catalog_id = ?, name = ?, price = ?, status = ? , description=?, discount = ? , image_link = ?, created = ?, quantity = ? where product_id = ?;";
		try {
			preparedStatement = connect.prepareStatement(sql);
			preparedStatement.setInt(1, t.getProduct_id());
			preparedStatement.setInt(2, t.getCatalog_id());
			preparedStatement.setString(3, t.getName());
			preparedStatement.setDouble(4, t.getPrice());
			preparedStatement.setString(5, t.getStatus());
			preparedStatement.setString(6, t.getDescription());
			preparedStatement.setInt(7, t.getDiscount());
			preparedStatement.setString(8, t.getImage_link());
			preparedStatement.setTimestamp(9, Timestamp.valueOf(t.getCreated()));
			preparedStatement.setInt(10, t.getQuantity());
			preparedStatement.setInt(11, t.getProduct_id());
			preparedStatement.executeUpdate();
			System.out.println("Edit product successfull");
			preparedStatement.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		connect = super.getConnectionJDBC();
		String sql = "delete from product where product_id = ?;";
		try {
			preparedStatement = connect.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			preparedStatement.executeUpdate();
			System.out.println("Delete Product successfully!");
			preparedStatement.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Product> searchByName(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product get(int id) {
		connect = super.getConnectionJDBC();
		String sql = "select * from product where product_id = ?";
		Product product = null;
		try {
			preparedStatement = connect.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			result = preparedStatement.executeQuery();
			while (result.next()) {
				int product_id = result.getInt("product_id");
				int catalog_id = result.getInt("catalog_id");
				String name = result.getString("name");
				double price = result.getDouble("price");
				String status = result.getString("status");
				String description = result.getString("description");
				int discount = result.getInt("discount");
				String image_link = result.getString("image_link");
				LocalDateTime created = result.getTimestamp("created").toLocalDateTime();
				int quantity = result.getInt("quantity");
				product = new Product(product_id, catalog_id, name, price, status, description, discount, image_link,
						created, quantity);
			}
			preparedStatement.close();
			result.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return product;
	}

	@Override
	public void updateQuantity(Product t) {
		connect = super.getConnectionJDBC();
		String sql = "update product set quantity = ? where product_id = ?;";
		try {
			preparedStatement = connect.prepareStatement(sql);
			preparedStatement.setInt(1, t.getQuantity());
			preparedStatement.setInt(2, t.getProduct_id());
			preparedStatement.executeUpdate();
			preparedStatement.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static void main(String[] args) {
		System.out.println(new ProductDaoImpl().getAll());
	}

	@Override
	public List<Product> searchByKeyTopic(String keyword, String topic) {
		connect = super.getConnectionJDBC();
		List<Product> listProduct = new ArrayList<Product>();
		String sql = "select p.product_id, p.catalog_id, p.name,c.name, p.price, p.status, p.description, p.discount, p.image_link, p.created, p.quantity from product as p "
				+ "inner join catalog as c " + "on p.catalog_id = c.catalog_id" + " where p.name like ? And c.name =?;";
		try {
			preparedStatement = connect.prepareStatement(sql);
			preparedStatement.setString(1, keyword + "%");
			preparedStatement.setString(2, topic);
			result = preparedStatement.executeQuery();
			while (result.next()) {
				int product_id = result.getInt("p.product_id");
				int catalog_id = result.getInt("p.catalog_id");
				String name = result.getString("p.name");
				String nameTopic = result.getString("c.name");
				double price = result.getDouble("p.price");
				String status = result.getString("p.status");
				String description = result.getString("p.description");
				int discount = result.getInt("p.discount");
				String image_link = result.getString("p.image_link");
				LocalDateTime created = result.getTimestamp("p.created").toLocalDateTime();
				int quantity = result.getInt("p.quantity");
				Product product = new Product(product_id, catalog_id, name, nameTopic, price, status, description,
						discount, image_link, created, quantity);

				listProduct.add(product);
			}
			preparedStatement.close();
			result.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listProduct;
	}

}
