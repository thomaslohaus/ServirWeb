package br.com.semperparata.servirweb.dao;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.Endereco;

@ApplicationScoped
public class EnderecoDao {
	private EntityManager manager;

	@Inject
	public EnderecoDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public EnderecoDao(){}
	
	public Endereco carregar(int id) {
		return manager.find(Endereco.class, id);
	}
	
	public Endereco salvar(Endereco endereco) {
		manager.getTransaction().begin();
		manager.persist(endereco);
		manager.getTransaction().commit();
		return endereco;
	}
}
