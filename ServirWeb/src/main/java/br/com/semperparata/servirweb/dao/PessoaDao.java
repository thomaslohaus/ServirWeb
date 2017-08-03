package br.com.semperparata.servirweb.dao;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.Pessoa;

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
}
