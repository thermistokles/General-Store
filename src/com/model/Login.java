package com.model;

/**
 * Model class which contains all variables and methods required for login module
 * @author Amey
 *
 */
public class Login {
	//Variables
	private String uname;
	private String pass;
	
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
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
}
