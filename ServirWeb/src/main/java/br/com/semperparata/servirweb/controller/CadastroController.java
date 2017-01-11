package br.com.semperparata.servirweb.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.semperparata.servirweb.dao.EstadoDao;
import br.com.semperparata.servirweb.dao.PaisDao;
import br.com.semperparata.servirweb.dao.PessoaDao;
import br.com.semperparata.servirweb.dao.UsuarioDao;
import br.com.semperparata.servirweb.enums.EstadoCivil;
import br.com.semperparata.servirweb.enums.Sexo;
import br.com.semperparata.servirweb.model.Pessoa;
import br.com.semperparata.servirweb.model.Usuario;

@Controller
public class CadastroController {
	
	private PessoaDao pessoaDao; 
	private UsuarioDao usuarioDao;
	private EstadoDao estadoDao;
	private PaisDao paisDao;
	
	private Result result;
	private Validator validator;

	@Inject
	public CadastroController(PessoaDao pessoaDao, UsuarioDao usuarioDao, EstadoDao estadoDao, PaisDao paisDao, Result result, Validator validator){
		this.pessoaDao = pessoaDao;
		this.usuarioDao = usuarioDao;
		this.estadoDao = estadoDao;
		this.paisDao = paisDao;
		this.result = result;
		this.validator = validator;
	}
	
	public CadastroController() {}
	
	private void incluirListasNoResult() {
		result.include("sexos", Sexo.values());
		result.include("estadosCivis", EstadoCivil.values());
		result.include("estados", estadoDao.lista());
		result.include("paises", paisDao.lista());
		
	}
	
	@Path(value={"/cadastro", "/cadastro/"})
	public void form(){
		incluirListasNoResult();
	}

	@Path(value={"/cadastro/{id}", "/cadastro/{id}/"})
	public void form(int id){
		Pessoa pessoa = pessoaDao.carrega(id);
		result.include("pessoa", pessoa);
		incluirListasNoResult();
	}
	
	@IncludeParameters
	public void salvar(@Valid Pessoa pessoa) {
		validator.onErrorRedirectTo(this).form();
		pessoaDao.persistir(pessoa);
		
		Usuario usuario = usuarioDao.carrega(pessoa);
		if (usuario == null) {
			usuario = new Usuario(pessoa);
		}
		usuarioDao.persistir(usuario);
		
		result.redirectTo(this).lista();
	}
	
	@Path("/cadastros")
	public void lista(){
		List<Pessoa> pessoas = pessoaDao.lista();
		result.include("pessoas", pessoas);
	}
}
