package com.devSenai1A.site.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SiteController {

	@PostMapping("/logar")
	@ResponseBody
	
	public Map<String, Object> logarJson(
			@RequestParam String login,
			@RequestParam String senha){
		
		String resultado = null;
		String erro = null;
		
		String senha1 = "senha123";
		String login1 = "gabi@gmail.com";
		
		if (login.equals(login1)) {
		} else {
			erro = "erro";
		} if (senha.equals(senha1)) {
				resultado = ("Logado com sucesso!");
		} else {
			erro = ("Usuário ou senha incorretos");
		}
				
		Map <String, Object> resp = new HashMap<>();
		resp.put("resultado", resultado);
		resp.put("erro", erro);
		return resp;
	}
	
	
}
