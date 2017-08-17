package br.com.semperparata.servirweb.dao;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.Documentos;

@ApplicationScoped
public class DocumentosDao {
	private EntityManager manager;

	@Inject
	public DocumentosDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public DocumentosDao(){}
	
	public Documentos carregar(int id) {
		return manager.find(Documentos.class, id);
	}
	
	public Documentos salvar(Documentos documentos) {
		manager.getTransaction().begin();
		
		if (documentos != null && documentos.getId() > 0)
			manager.merge(documentos);
		else
			manager.persist(documentos);
		
		manager.getTransaction().commit();
		
		return documentos;
	}
}
