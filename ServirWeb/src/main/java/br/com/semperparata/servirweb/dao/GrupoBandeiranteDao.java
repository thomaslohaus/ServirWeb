package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.model.GrupoBandeirante;
import br.com.semperparata.servirweb.model.NucleoBandeirante;
import br.com.semperparata.servirweb.model.RamoBandeirante;

@ApplicationScoped
public class GrupoBandeiranteDao {
	private EntityManager manager;

	@Inject
	public GrupoBandeiranteDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public GrupoBandeiranteDao(){}
	
	public List<GrupoBandeirante> listarTodos() {
		TypedQuery<GrupoBandeirante> query = manager.createQuery("select n from GrupoBandeirante n", GrupoBandeirante.class);
		return query.getResultList();
	}
	
	public List<GrupoBandeirante> listarAtivosPorNucleoRamo(NucleoBandeirante nucleo, RamoBandeirante ramo) {
		TypedQuery<GrupoBandeirante> query = manager.createQuery("select g from GrupoBandeirante g where g.ativo = :ativo and g.nucleo = :nucleo and g.ramo = :ramo order by g.nome", GrupoBandeirante.class);
		query.setParameter("ativo", true);
		query.setParameter("nucleo", nucleo);
		query.setParameter("ramo", ramo);
		return query.getResultList();
	}
	
	public GrupoBandeirante carregar(int id) {
		return manager.find(GrupoBandeirante.class, id);
	}
	
	public GrupoBandeirante salvar(GrupoBandeirante grupo) {
		manager.persist(grupo);
		return grupo;
	}
}
