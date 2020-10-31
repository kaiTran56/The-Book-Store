package com.team.model;

public class Ordered {
	private int ordered_id;
	private int product_id;
	private int transaction_id;
	private int amount;
	private String name;
	private double price;

	public Ordered(int ordered_id, int product_id, int transaction_id, int amount) {
		super();
		this.ordered_id = ordered_id;
		this.product_id = product_id;
		this.transaction_id = transaction_id;
		this.amount = amount;
	}

	public Ordered(int ordered_id, int product_id, int amount, String name, double price) {
		super();
		this.ordered_id = ordered_id;
		this.product_id = product_id;
		this.amount = amount;
		this.name = name;
		this.price = price;
	}
	

	public Ordered(int amount, String name) {
		super();
		this.amount = amount;
		this.name = name;
	}

	public int getOrdered_id() {
		return ordered_id;
	}

	public void setOrdered_id(int ordered_id) {
		this.ordered_id = ordered_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(int transaction_id) {
		this.transaction_id = transaction_id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return name + amount;
	}

}
