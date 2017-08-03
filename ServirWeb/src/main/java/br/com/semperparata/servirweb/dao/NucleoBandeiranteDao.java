package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.model.Estado;
import br.com.semperparata.servirweb.model.NucleoBandeirante;

@ApplicationScoped
public class NucleoBandeiranteDao {
	private EntityManager manager;

	@Inject
	public NucleoBandeiranteDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public NucleoBandeiranteDao(){}
	
	public List<NucleoBandeirante> listarTodos() {
		TypedQuery<NucleoBandeirante> query = manager.createQuery("select n from NucleoBandeirante n", NucleoBandeirante.class);
		return query.getResultList();
	}
	
	public List<NucleoBandeirante> listarAtivosPorEstado(Estado estado) {
		TypedQuery<NucleoBandeirante> query = manager.createQuery("select n from NucleoBandeirante n where n.ativo = :ativo and n.estado = :estado", NucleoBandeirante.class);
		query.setParameter("ativo", true);
		query.setParameter("estado", estado);
		return query.getResultList();
	}
	
	public NucleoBandeirante carregar(int id) {
		return manager.find(NucleoBandeirante.class, id);
	}
	
	public NucleoBandeirante salvar(NucleoBandeirante nucleo) {
		manager.persist(nucleo);
		return nucleo;
	}
}
