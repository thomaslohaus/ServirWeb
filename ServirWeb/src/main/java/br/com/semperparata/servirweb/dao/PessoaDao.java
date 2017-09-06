package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.model.Pessoa;
import br.com.semperparata.servirweb.model.Usuario;

@ApplicationScoped
public class PessoaDao {
	private EntityManager manager;

	@Inject
	public PessoaDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public PessoaDao(){}
	
	public Pessoa carregar(int id) {
		return manager.find(Pessoa.class, id);
	}
	
	public Pessoa salvar(Pessoa pessoa) {
		manager.getTransaction().begin();
		
		if (pessoa != null && pessoa.getId() > 0)
			manager.merge(pessoa);
		else
			manager.persist(pessoa);
		
		manager.getTransaction().commit();
		
		return pessoa;
	}
	
	public Pessoa salvarCascade(Pessoa pessoa, EnderecoDao enderecoDao, DocumentosDao documentosDao, FichaSaudeDao fichaSaudeDao) {
		enderecoDao.salvar(pessoa.getEndereco());
		documentosDao.salvar(pessoa.getDocumentos());
		fichaSaudeDao.salvar(pessoa.getFichaSaude());
		this.salvar(pessoa);
		
		return pessoa;
	}

	public List<Pessoa> listarPorUsuario(Usuario usuario) {
		TypedQuery<Pessoa> query = manager.createQuery("select p from Pessoa p", Pessoa.class);
		return query.getResultList();
	}
}
