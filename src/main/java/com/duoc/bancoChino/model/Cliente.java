package com.duoc.bancoChino.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.sun.istack.NotNull;

@Entity
public class Cliente {
	@Id
	@NotNull()
	@Column(length = 8, nullable = false)
	private int rut;

	@NotEmpty(message = "El campo no debe venir vacio")
	@Column(length = 1, nullable = false)
	private String dig;

	@NotEmpty(message = "El campo no debe venir vacio")
	@Size(min = 3, max = 30, message = "Nombre debe tener entre 3 y 30 caracteres")
	@Column(length = 30, nullable = false)
	private String nombre;

	@NotEmpty(message = "El campo no debe venir vacio")
	@Size(min = 1, max = 30, message = "Apellido debe contener mas caracteres")
	@Column(length = 30, nullable = false)
	private String apellido;

	@NotEmpty(message = "El campo no debe venir vacio")
	@Size(min = 1, max = 50)
	@Column(length = 50, nullable = false)
	private String direccion;

	@NotEmpty(message = "El campo no debe venir vacio")
	@Size(min = 1, max = 50)
	@Column(length = 50, nullable = false)
	private String ciudad;

	public Cliente() {
		super();

	}

	public Cliente(int rut, String apellido, String direccion, String ciudad) {
		this.rut = rut;
		this.apellido = apellido;
		this.direccion = direccion;
		this.ciudad = ciudad;
	}

	public Cliente(int rut, String dig, String nombre, String apellido, String direccion, String ciudad) {
		this.rut = rut;
		this.dig = dig;
		this.nombre = nombre;
		this.apellido = apellido;
		this.direccion = direccion;
		this.ciudad = ciudad;
	}

	public int getRut() {
		return rut;
	}

	public void setRut(int rut) {
		this.rut = rut;
	}

	public String getDig() {
		return dig;
	}

	public void setDig(String dig) {
		this.dig = dig;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	@Override
	public String toString() {
		return "Cliente [rut=" + rut + ", dig=" + dig + ", nombre=" + nombre + ", apellido=" + apellido + ", direccion="
				+ direccion + ", ciudad=" + ciudad + "]";
	}

}
