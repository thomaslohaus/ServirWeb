package br.com.semperparata.servirweb.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.semperparata.servirweb.dao.PessoaDao;
import br.com.semperparata.servirweb.model.Usuario;

/**
 * Controla o cadastro de pessoas
 * @author Thomas Lohaus
 *
 */
@Controller
public class DashboardController {

	private Result result;
	
	private PessoaDao pessoaDao;
	
	
	public DashboardController() {
	}
	
	@Inject
	public DashboardController(Result result,
			PessoaDao pessoaDao) {
		this.result = result;
		this.pessoaDao = pessoaDao;
	}
	
	@Path(value={"/cadastros", "/cadastros/"})
	public void cadastros(){
		Usuario usuario = null;
		result.include("pessoas", pessoaDao.listarPorUsuario(usuario));
	}
	
}
