package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.model.RamoBandeirante;

@ApplicationScoped
public class RamoBandeiranteDao {
	private EntityManager manager;

	@Inject
	public RamoBandeiranteDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public RamoBandeiranteDao(){}
	
	public List<RamoBandeirante> listarTodos() {
		TypedQuery<RamoBandeirante> query = manager.createQuery("select r from RamoBandeirante r", RamoBandeirante.class);
		return query.getResultList();
	}
	
	public RamoBandeirante carregar(int id) {
		return manager.find(RamoBandeirante.class, id);
	}
	
	public RamoBandeirante salvar(RamoBandeirante ramo) {
		manager.persist(ramo);
		return ramo;
	}
}
