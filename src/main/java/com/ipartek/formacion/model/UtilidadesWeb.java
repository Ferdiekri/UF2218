package com.ipartek.formacion.model;

public class UtilidadesWeb {

	public static String escapeHtml(String cadena) {

		String retorno = "";

		if (cadena != null) {

			for (int i = 0; i < cadena.length(); i++) {
				if (cadena.charAt(i) == '<') {
					retorno += "&lt";
				} else if (cadena.charAt(i) == '>') {
					retorno += "&gt";
				} else if (cadena.charAt(i) == '$') {
					retorno += "&dollar;";
				} else {
					retorno += cadena.charAt(i);
				}
			}
		}

		return retorno;
	}

}

