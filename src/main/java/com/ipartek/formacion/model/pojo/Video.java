package com.ipartek.formacion.model.pojo;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Video {
	
	private int id;
	
	@NotNull
	@Size(min=3, max=150, message="El título debe tener una longitud entre 3 y 150 caracteres.")
	private String nombre;
	
	@NotNull
	@Size(min=11, max=11, message="El código debe tener 11 caracteres.")
	private String codigo;
	
	public Video() {
		super();
		this.id = -1;
		this.nombre = "Sin nombre";
		this.codigo = "Sin codigo";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	@Override
	public String toString() {
		return "Youtube [id=" + id + ", nombre=" + nombre + ", codigo=" + codigo + "]";
	}
	
}
