package com.zensar.models;

//Model
public class LoginBean {

	private String username;
	private String passwd;

	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	// business logic method
	public boolean validateUser() {
		if (username != null && passwd != null && username.equals("Akansha") && passwd.equals("hi"))
			return true;
		else
			return false;
	}

}
