package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.model.Estado;

@ApplicationScoped
public class EstadoDao {
	private EntityManager manager;

	@Inject
	public EstadoDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public EstadoDao(){}
	
	public List<Estado> listarTodos() {
		TypedQuery<Estado> query = manager.createQuery("select e from Estado e", Estado.class);
		return query.getResultList();
	}
	
	public List<Estado> listarBrasil() {
		TypedQuery<Estado> query = manager.createQuery("select e from Estado e where e.pais.codigo = :brasil", Estado.class);
		query.setParameter("brasil", "BRA");
		return query.getResultList();
	}
	
	public List<Estado> listarFBB() {
		TypedQuery<Estado> query = manager.createQuery("select e from Estado e where e.fbb = :fbb", Estado.class);
		query.setParameter("fbb", true);
		return query.getResultList();
	}
	
	public Estado carregar(int id) {
		return manager.find(Estado.class, id);
	}
	
	
	public Estado carregaExterior() {
		TypedQuery<Estado> query = manager.createQuery("select e from Estado e where e.pais is null", Estado.class);
		return query.getSingleResult();
	}
	
	public Estado salvar(Estado estado) {
		manager.persist(estado);
		return estado;
	}
}
