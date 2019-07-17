package com.ipartek.formacion.model.pojo;

public class Youtube {

	public static final int LONGITUD_CODIGO = 11;
	public static final String URL = "https://www.youtube.com/watch?v=";
	public static final int LONGITUD_MIN_TITULO = 2;
	public static final int LONGITUD_MAX_TITULO = 150;
	// https://www.youtube.com/watch?v=

	// atributos
	private int id; // Índice de los registros.
	private String titulo; // minimo 2 letras & m�ximo 150 letras
	private String codigo; // exactamente 11 d�gitos
	private int reproducciones; // >=0

	// constructores

	public Youtube() {
		super();
		this.id=0;
		this.titulo = "Sin t�tulo";
		this.codigo = "XXXXXXXXXXX";
		this.reproducciones = 0;
	}

	public Youtube(String titulo, String codigo) throws Exception {
		this();
		// this.titulo = titulo;
		// this.codigo = codigo;
		this.setTitulo(titulo);
		this.setCodigo(codigo);
	}

	// getters & setters
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id=id;
	}

	public String getTitulo() {
		return titulo;
	}

	/**
	 * Cambia titulo
	 * 
	 * @param titulo (String) - Nuevo t�tulo
	 * @throws Exception titulo NULL, >= LONGITUD_MIN_TITULO, <= LONGITUD_MAX_TITULO
	 */
	public void setTitulo(String titulo) throws Exception {
		if ((titulo != null) && (titulo.length() >= LONGITUD_MIN_TITULO) && (titulo.length() <= LONGITUD_MAX_TITULO)) {
			this.titulo = titulo;
		} else {
			throw new Exception("La longitud del t�tulo debe estar entre " + LONGITUD_MIN_TITULO + " y "
					+ LONGITUD_MAX_TITULO + ".");
		}
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) throws Exception {
		if ((codigo != null) && (codigo.length() == LONGITUD_CODIGO)) {
			this.codigo = codigo;
		} else {
			throw new Exception("La longitud del c�digo debe ser " + LONGITUD_CODIGO + ".");
		}
	}

	public int getReproducciones() {
		return reproducciones;
	}

	public void setReproducciones(int reproducciones) throws Exception {

		if (reproducciones >= 0) {
			this.reproducciones = reproducciones;
		} else {
			throw new Exception("Las reproducciones no pueden ser negativas.");
		}

	}

	// resto de funciones

	@Override
	public String toString() {
		return "Youtube [#" + id + "titulo=" + titulo + ", codigo=" + codigo + ", reproducciones=" + reproducciones + "]";
	}

	public String getUrl() {
		return URL + this.codigo;
	}
}
