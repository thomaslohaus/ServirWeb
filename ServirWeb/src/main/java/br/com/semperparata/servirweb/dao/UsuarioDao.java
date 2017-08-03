package br.com.semperparata.servirweb.dao;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.Usuario;

@ApplicationScoped
public class UsuarioDao {
	private EntityManager manager;

	@Inject
	public UsuarioDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public UsuarioDao(){}
	
	public Usuario carregar(int id) {
		return manager.find(Usuario.class, id);
	}
	
	public Usuario salvar(Usuario usuario) {
		manager.getTransaction().begin();
		manager.persist(usuario);
		manager.getTransaction().commit();
		return usuario;
	}
}
