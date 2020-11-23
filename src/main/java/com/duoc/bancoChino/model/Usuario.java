package com.duoc.bancoChino.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Usuario {
	@Id
	private int id;
	private String user;
	private String pass;

	@Override
	public String toString() {
		return "Usuario [id=" + id + ", user=" + user + ", pass=" + pass + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
