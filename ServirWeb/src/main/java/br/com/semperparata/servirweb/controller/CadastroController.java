package br.com.semperparata.servirweb.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import br.com.semperparata.servirweb.dao.EstadoDao;
import br.com.semperparata.servirweb.dao.PaisDao;
import br.com.semperparata.servirweb.dao.PessoaDao;

@Controller
public class CadastroController {

	private Result result;
	private PaisDao paisDao;
	private EstadoDao estadoDao;
	private PessoaDao pessoaDao;
	
	public CadastroController() {
	}
	
	@Inject
	public CadastroController(Result result, PaisDao paisDao, EstadoDao estadoDao, PessoaDao pessoaDao) {
		this.result = result;
		this.paisDao = paisDao;
		this.estadoDao = estadoDao;
		this.pessoaDao = pessoaDao;
	}
	
	@Path("/")
	public void bandeirante(){
		result.include("paises", paisDao.lista());
		result.include("estados", estadoDao.lista());
	}

	@Path(value={"/{id}", "/{id}/"})
	public void bandeirante(int id) {
		result.include("pessoa", pessoaDao.carrega(id));
		bandeirante();
	}
	
	@Get("/cadastro/religioes")
	public void religioes() {
		result.use(Results.json()).from(paisDao.lista()).exclude("id").serialize();
	}
}
