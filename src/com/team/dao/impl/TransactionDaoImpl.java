package com.team.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.team.JDBC.JDBCConnection;
import com.team.dao.TransactionDao;
import com.team.model.Ordered;
import com.team.model.Transactions;
import com.team.model.User;

public class TransactionDaoImpl extends JDBCConnection implements TransactionDao<Transactions> {
	private Connection connect;
	private PreparedStatement statement;
	private ResultSet result;

	@Override
	public List<Transactions> getAll() {
		connect = super.getConnectionJDBC();
		List<Transactions> listTransaction = new ArrayList<Transactions>();
		String sql = "select t.transaction_id, u.name, u.email, u.phone, u.address, t.message, t.payment, t.status, p.name, o.amount, t.created from user as u "
				+ " inner join transactions as t " + " on u.user_id = t.user_id " + " inner join ordered as o "
				+ " on o.transaction_id = t.transaction_id " + " inner join product as p "
				+ " on p.product_id = o.product_id;";
		try {
			statement = connect.prepareStatement(sql);
			result = statement.executeQuery();
			while (result.next()) {
				int transaction_id = result.getInt("transaction_id");
				String name = result.getString("name");
				String email = result.getString("email");
				String phone = result.getString("phone");
				String address = result.getString("address");
				String message = result.getString("message");
				double payment = result.getDouble("payment");
				String status = result.getString("status");
				String nameProduct = result.getString("name");
				int amount = result.getInt("amount");
				LocalDateTime created = result.getTimestamp("created").toLocalDateTime();
				User user = new User(name, email, phone, address);
				Ordered ordered = new Ordered(amount, nameProduct);
				Transactions transactions = new Transactions(transaction_id, user, message, payment, status, ordered,
						created);
				listTransaction.add(transactions);
			}
			System.out.println("List transactions successfully!");
			result.close();
			statement.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listTransaction;
	}

	@Override
	public void insert(Transactions t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void edit(Transactions t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int id) {
		connect = super.getConnectionJDBC();
		String sql = "delete from transactions where transaction_id = ?";
		try {
			statement = connect.prepareStatement(sql);
			statement.setInt(1, id);
			statement.executeUpdate();
			System.out.println("Delete transaction successfully!");
			statement.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static void main(String[] args) {
		System.out.println("Run");
		System.out.println("Test: " + new TransactionDaoImpl().getAll().toString());
	}
}
