package br.com.semperparata.servirweb.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.observer.upload.UploadedFile;
import br.com.caelum.vraptor.view.Results;
import br.com.semperparata.servirweb.dao.DocumentosDao;
import br.com.semperparata.servirweb.dao.EnderecoDao;
import br.com.semperparata.servirweb.dao.EstadoDao;
import br.com.semperparata.servirweb.dao.FichaSaudeDao;
import br.com.semperparata.servirweb.dao.GrupoDao;
import br.com.semperparata.servirweb.dao.NucleoDao;
import br.com.semperparata.servirweb.dao.PaisDao;
import br.com.semperparata.servirweb.dao.PessoaDao;
import br.com.semperparata.servirweb.dao.RamoDao;
import br.com.semperparata.servirweb.dao.UsuarioDao;
import br.com.semperparata.servirweb.model.Estado;
import br.com.semperparata.servirweb.model.Nucleo;
import br.com.semperparata.servirweb.model.Pais;
import br.com.semperparata.servirweb.model.Pessoa;
import br.com.semperparata.servirweb.model.Ramo;
import br.com.semperparata.servirweb.model.Usuario;

/**
 * Controla o cadastro de pessoas
 * @author Thomas Lohaus
 *
 */
@Controller
public class CadastroController {

	private Result result;
	
	private PaisDao paisDao;
	private EstadoDao estadoDao;
	
	private PessoaDao pessoaDao;
	private EnderecoDao enderecoDao;
	private DocumentosDao documentosDao;
	private FichaSaudeDao fichaSaudeDao;
	private UsuarioDao usuarioDao;
	
	private RamoDao ramoBandeiranteDao;
	private NucleoDao nucleoBandeiranteDao;
	private GrupoDao grupoBandeiranteDao;
	
	@SessionScoped
	private List<Pais> paises;
	@SessionScoped
	private List<Estado> estados;
	@SessionScoped
	private Estado exterior;
	@SessionScoped
	private List<Estado> estadosFBB;

	public CadastroController() {
	}
	
	@Inject
	public CadastroController(Result result,
			PaisDao paisDao, EstadoDao estadoDao,
			PessoaDao pessoaDao, EnderecoDao enderecoDao, DocumentosDao documentosDao, FichaSaudeDao fichaSaudeDao, UsuarioDao usuarioDao,
			RamoDao ramoBandeiranteDao, NucleoDao nucleoBandeiranteDao, GrupoDao grupoBandeiranteDao) {
		this.result = result;
		this.paisDao = paisDao;
		this.estadoDao = estadoDao;
		this.pessoaDao = pessoaDao;
		this.enderecoDao = enderecoDao;
		this.documentosDao = documentosDao;
		this.fichaSaudeDao = fichaSaudeDao;
		this.usuarioDao = usuarioDao;
		this.ramoBandeiranteDao = ramoBandeiranteDao;
		this.nucleoBandeiranteDao = nucleoBandeiranteDao;
		this.grupoBandeiranteDao = grupoBandeiranteDao;
	}
	
	@Path(value={"/cadastro", "/cadastro/"})
	public void cadastro(){
		result.include("paises", getPaises());
		result.include("estados", getEstadosBrasil());
		result.include("estado_exterior", getEstadoExterior());
		result.include("estadosFBB", getEstadosFBB());
	}

	@Path(value={"/cadastro/{id}", "/cadastro/{id}/"})
	public void cadastro(int id) {
		Pessoa p = pessoaDao.carregar(id);
		if (p != null) {
			result.include("pessoa", p);
			cadastro();
		} else {
			result.redirectTo(this).cadastro();
		}
	}
	
	private List<Pais> getPaises() {
		if (paises == null)
			paises = paisDao.listarTodos();
		return paises;
	}
	
	private List<Estado> getEstadosBrasil() {
		if (estados == null)
			estados = estadoDao.listarBrasil();
		return estados;
	}
	
	private Estado getEstadoExterior() {
		if (exterior == null)
			exterior = estadoDao.carregaExterior();
		return exterior;
	}
	
	private List<Estado> getEstadosFBB() {
		if (estadosFBB == null)
			estadosFBB = estadoDao.listarFBB();
		return estadosFBB;
	}
	
	@Post
	public void salvar(Pessoa pessoa, UploadedFile foto34) throws IOException {
		if (foto34 != null) {
			InputStream is = foto34.getFile();
			byte[] buffer = new byte[is.available()];
		    is.read(buffer);
		    
		    File foto = new File("foto34");
		    
		    OutputStream outStream = new FileOutputStream(foto);
		    outStream.write(buffer);
		    outStream.close();
		    is.close();
		    
		    pessoa.setFoto(foto);
		}
		
		pessoaDao.salvarCascade(pessoa, enderecoDao, documentosDao, fichaSaudeDao);
		
		result.redirectTo(this).cadastro(pessoa.getId());
	}
	
	@Path(value={"/cadastros", "/cadastros/"})
	public void lista(){
		Usuario usuario = null;
		result.include("pessoas", pessoaDao.listarPorUsuario(usuario));
	}
	
	@Get("/cadastro/religioes")
	public void religioes() {
		result.use(Results.json()).from(paisDao.listarTodos()).exclude("id").serialize();
	}
	
	@Get("/cadastro/estadosFBB")
	public void estadosFBB() {
		result.use(Results.json()).from(getEstadosFBB()).exclude("id").exclude("pais").serialize();
	}
	
	@Get("/cadastro/listaNucleos")
	public void nucleosPorEstado(int uf_id) {
		Estado e = estadoDao.carregar(uf_id);
		result.use(Results.json()).withoutRoot().from(nucleoBandeiranteDao.listarAtivosPorEstado(e)).exclude("endereco").serialize();
	}
	
	@Get("/cadastro/listaGrupos")
	public void gruposPorNucleoRamo(int nucleo_id, int ramo_id) {
		Nucleo nucleo = nucleoBandeiranteDao.carregar(nucleo_id);
		Ramo ramo = ramoBandeiranteDao.carregar(ramo_id);
		result.use(Results.json()).withoutRoot().from(grupoBandeiranteDao.listarAtivosPorNucleoRamo(nucleo, ramo)).serialize();
	}
}
