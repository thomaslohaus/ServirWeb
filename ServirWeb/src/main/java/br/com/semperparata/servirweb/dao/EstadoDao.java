package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.enums.Estado;

@ApplicationScoped
public class EstadoDao {
	private EntityManager manager;

	@Inject
	public EstadoDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public EstadoDao(){}
	
	public List<Estado> lista() {
		TypedQuery<Estado> query = manager.createQuery("select e from Estado e", Estado.class);
		return query.getResultList();
	}
	
	public Estado carrega(int id) {
		return manager.find(Estado.class, id);
	}
}
