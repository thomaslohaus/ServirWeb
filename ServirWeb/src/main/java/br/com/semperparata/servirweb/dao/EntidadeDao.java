package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.enums.TipoEntidade;
import br.com.semperparata.servirweb.model.Entidade;

public class EntidadeDao {

	private EntityManager manager;

	@Inject
	public EntidadeDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public EntidadeDao(){}
	
	public List<Entidade> lista() {
		TypedQuery<Entidade> query = manager.createQuery("select e from Entidade e", Entidade.class);
		return query.getResultList();
	}
	
	public List<Entidade> nucleos() {
		TypedQuery<Entidade> query = manager.createQuery("select e from Entidade e where e.tipo = :tipo order by e.descricao", Entidade.class);
		query.setParameter("tipo", TipoEntidade.NUCLEO);
		return query.getResultList();
	}
	
	public List<Entidade> grupos() {
		TypedQuery<Entidade> query = manager.createQuery("select e from Entidade e where e.tipo = :tipo order by e.descricao", Entidade.class);
		query.setParameter("tipo", TipoEntidade.GRUPO);
		return query.getResultList();
	}
	
	public List<Entidade> equipes() {
		TypedQuery<Entidade> query = manager.createQuery("select e from Entidade e where e.tipo = :tipo order by e.descricao", Entidade.class);
		query.setParameter("tipo", TipoEntidade.EQUIPE);
		return query.getResultList();
	}
	
	public Entidade carrega(int id) {
		return manager.find(Entidade.class, id);
	}
}
