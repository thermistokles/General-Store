package com.model;

/**
 * Model class which contains all the variables and methods required to maintain user information
 * @author Amey
 *
 */
public class User {
	//Variables
	private String uname;
	private String email;
	private int num;
	private String gender;
	private String city;
	private String pass;
	private int balance;
	
	/**
	 * Setter and getter methods which are used by other classes to set values to variables and receive values from them
	 * @return variable data type for getters and void for setters
	 */
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int number) {
		this.num = number;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	
	/**
	 * Method to print the values of all variables 
	 * return String
	 */
	@Override
	public String toString() {
		return getUname() + "\t" + getEmail() + "\t" + getNum() + "\t" + getGender() + "\t" + getCity() + "\t" + getPass() + "\t" + getBalance();
	}
	
}
