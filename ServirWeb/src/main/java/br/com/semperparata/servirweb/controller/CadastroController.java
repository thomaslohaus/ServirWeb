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
import br.com.semperparata.servirweb.dao.EstadoDao;
import br.com.semperparata.servirweb.dao.GrupoBandeiranteDao;
import br.com.semperparata.servirweb.dao.NucleoBandeiranteDao;
import br.com.semperparata.servirweb.dao.PaisDao;
import br.com.semperparata.servirweb.dao.PessoaDao;
import br.com.semperparata.servirweb.dao.RamoBandeiranteDao;
import br.com.semperparata.servirweb.model.Estado;
import br.com.semperparata.servirweb.model.NucleoBandeirante;
import br.com.semperparata.servirweb.model.Pais;
import br.com.semperparata.servirweb.model.Pessoa;
import br.com.semperparata.servirweb.model.RamoBandeirante;

@Controller
public class CadastroController {

	private Result result;
	private PaisDao paisDao;
	private EstadoDao estadoDao;
	private PessoaDao pessoaDao;
	private RamoBandeiranteDao ramoBandeiranteDao;
	private NucleoBandeiranteDao nucleoBandeiranteDao;
	private GrupoBandeiranteDao grupoBandeiranteDao;
	
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
	public CadastroController(Result result, PaisDao paisDao, EstadoDao estadoDao, PessoaDao pessoaDao, 
			RamoBandeiranteDao ramoBandeiranteDao, NucleoBandeiranteDao nucleoBandeiranteDao, GrupoBandeiranteDao grupoBandeiranteDao) {
		this.result = result;
		this.paisDao = paisDao;
		this.estadoDao = estadoDao;
		this.pessoaDao = pessoaDao;
		this.ramoBandeiranteDao = ramoBandeiranteDao;
		this.nucleoBandeiranteDao = nucleoBandeiranteDao;
		this.grupoBandeiranteDao = grupoBandeiranteDao;
	}
	
	@Path(value={"/bandeirante", "/bandeirante/"})
	public void bandeirante(){
		result.include("paises", getPaises());
		result.include("estados", getEstadosBrasil());
		result.include("estado_exterior", getEstadoExterior());
		result.include("estadosFBB", getEstadosFBB());
	}

	@Path(value={"/bandeirante/{id}", "/bandeirante/{id}/"})
	public void bandeirante(int id) {
		result.include("pessoa", pessoaDao.carregar(id));
		bandeirante();
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
		System.out.println("ok");

		InputStream is = foto34.getFile();
		byte[] buffer = new byte[is.available()];
	    is.read(buffer);
	    
	    File targetFile = new File("C:\\java\\teste.jpg");
	    OutputStream outStream = new FileOutputStream(targetFile);
	    outStream.write(buffer);
	    outStream.close();
	    is.close();
	    
//		result.redirectTo(this).bandeirante();
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
		NucleoBandeirante nucleo = nucleoBandeiranteDao.carregar(nucleo_id);
		RamoBandeirante ramo = ramoBandeiranteDao.carregar(ramo_id);
		result.use(Results.json()).withoutRoot().from(grupoBandeiranteDao.listarAtivosPorNucleoRamo(nucleo, ramo)).serialize();
	}
	
}
