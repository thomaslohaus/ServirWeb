package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.model.Grupo;
import br.com.semperparata.servirweb.model.Nucleo;
import br.com.semperparata.servirweb.model.Ramo;

@ApplicationScoped
public class GrupoDao {
	private EntityManager manager;

	@Inject
	public GrupoDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public GrupoDao(){}
	
	public List<Grupo> listarTodos() {
		TypedQuery<Grupo> query = manager.createQuery("select n from GrupoBandeirante n", Grupo.class);
		return query.getResultList();
	}
	
	public List<Grupo> listarAtivosPorNucleoRamo(Nucleo nucleo, Ramo ramo) {
		TypedQuery<Grupo> query = manager.createQuery("select g from GrupoBandeirante g where g.ativo = :ativo and g.nucleo = :nucleo and g.ramo = :ramo order by g.nome", Grupo.class);
		query.setParameter("ativo", true);
		query.setParameter("nucleo", nucleo);
		query.setParameter("ramo", ramo);
		return query.getResultList();
	}
	
	public Grupo carregar(int id) {
		return manager.find(Grupo.class, id);
	}
	
	public Grupo salvar(Grupo grupo) {
		manager.persist(grupo);
		return grupo;
	}
}
