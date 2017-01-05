package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.enums.Pais;

@ApplicationScoped
public class PaisDao {
	private EntityManager manager;

	@Inject
	public PaisDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public PaisDao(){}
	
	public List<Pais> lista() {
		TypedQuery<Pais> query = manager.createQuery("select p from Pais p", Pais.class);
		return query.getResultList();
	}
	
	public Pais carrega(int id) {
		return manager.find(Pais.class, id);
	}
}
