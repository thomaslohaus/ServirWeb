package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.model.Estado;
import br.com.semperparata.servirweb.model.Nucleo;

@ApplicationScoped
public class NucleoDao {
	private EntityManager manager;

	@Inject
	public NucleoDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public NucleoDao(){}
	
	public List<Nucleo> listarTodos() {
		TypedQuery<Nucleo> query = manager.createQuery("select n from NucleoBandeirante n", Nucleo.class);
		return query.getResultList();
	}
	
	public List<Nucleo> listarAtivosPorEstado(Estado estado) {
		TypedQuery<Nucleo> query = manager.createQuery("select n from NucleoBandeirante n where n.ativo = :ativo and n.estado = :estado", Nucleo.class);
		query.setParameter("ativo", true);
		query.setParameter("estado", estado);
		return query.getResultList();
	}
	
	public Nucleo carregar(int id) {
		return manager.find(Nucleo.class, id);
	}
	
	public Nucleo salvar(Nucleo nucleo) {
		manager.persist(nucleo);
		return nucleo;
	}
}
