package br.com.semperparata.servirweb.dao;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.FichaSaude;

@ApplicationScoped
public class FichaSaudeDao {
	private EntityManager manager;

	@Inject
	public FichaSaudeDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public FichaSaudeDao(){}
	
	public FichaSaude carregar(int id) {
		return manager.find(FichaSaude.class, id);
	}
	
	public FichaSaude salvar(FichaSaude saude) {
		manager.getTransaction().begin();
		
		if (saude != null && saude.getId() > 0)
			manager.merge(saude);
		else
			manager.persist(saude);
		
		manager.getTransaction().commit();
		
		return saude;
	}
}
