package com.team.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.team.JDBC.JDBCConnection;
import com.team.dao.OrderedDao;
import com.team.model.Ordered;

public class OrderedDaoImpl extends JDBCConnection implements OrderedDao<Ordered> {
	private Connection connect;
	private PreparedStatement statement;
	private ResultSet result;

	@Override
	public List<Ordered> getAll() {
		connect = super.getConnectionJDBC();
		List<Ordered> listOrdered = new ArrayList<Ordered>();
		String sql = "select o.ordered_id, p.product_id, p.name, p.price, o.amount from ordered as o inner join product as p on o.ordered_id = p.product_id;";
		try {
			statement = connect.prepareStatement(sql);
			result = statement.executeQuery();
			while (result.next()) {
				int ordered_id = result.getInt("ordered_id");
				int product_id = result.getInt("product_id");
				String name = result.getString("name");
				double price = result.getDouble("price");
				int amount = result.getInt("amount");
				listOrdered.add(new Ordered(ordered_id, product_id, amount, name, price));
			}
			statement.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listOrdered;
	}

	@Override
	public Ordered get(int id) {

		return null;
	}

	@Override
	public void insert(Ordered t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void edit(Ordered t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub

	}

	public static void main(String[] args) {
		System.out.println("Test: "+ new OrderedDaoImpl().getAll().toString());
	}

}
