package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.model.Pessoa;
import br.com.semperparata.servirweb.model.Usuario;

public class UsuarioDao {
	private EntityManager manager;

	@Inject
	public UsuarioDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public UsuarioDao(){}
	
	public void persistir(Usuario usuario) {
		manager.getTransaction().begin();
		manager.merge(usuario);
		manager.getTransaction().commit();
	}
	
	public List<Usuario> lista() {
		TypedQuery<Usuario> query = manager.createQuery("select u from Usuario u", Usuario.class);
		return query.getResultList();
	}
	
	public Usuario carrega(int id) {
		return manager.find(Usuario.class, id);
	}
	
	public Usuario carrega(Pessoa pessoa) {
		TypedQuery<Usuario> query = manager.createQuery("select u from Usuario u where u.pessoa = :pessoa", Usuario.class);
		query.setParameter("pessoa", pessoa);
		
		try {
			return query.getSingleResult();
		} catch (NoResultException nre) {
			return null;
		}
	}

	public Usuario buscar(String login, String senha) {
		TypedQuery<Usuario> query = manager.createQuery("select u from Usuario u where u.login = :login and u.senha = :senha", Usuario.class);
		query.setParameter("login", login);
		query.setParameter("senha", senha);
		
		try {
			return query.getSingleResult();
		} catch (NoResultException nre) {
			return null;
		}
	}
}
