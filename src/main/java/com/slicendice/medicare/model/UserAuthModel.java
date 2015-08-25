package com.slicendice.medicare.model;

public class UserAuthModel {
public String username;
public String password;

public UserAuthModel()
{
	
}

public UserAuthModel(String username, String password) {
	super();
	this.username = username;
	this.password = password;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}


}
