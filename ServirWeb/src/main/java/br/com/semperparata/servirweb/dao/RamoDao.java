package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.model.Ramo;

@ApplicationScoped
public class RamoDao {
	private EntityManager manager;

	@Inject
	public RamoDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public RamoDao(){}
	
	public List<Ramo> listarTodos() {
		TypedQuery<Ramo> query = manager.createQuery("select r from RamoBandeirante r", Ramo.class);
		return query.getResultList();
	}
	
	public Ramo carregar(int id) {
		return manager.find(Ramo.class, id);
	}
	
	public Ramo salvar(Ramo ramo) {
		manager.persist(ramo);
		return ramo;
	}
}
