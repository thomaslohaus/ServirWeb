package br.com.semperparata.servirweb.dao;

import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.Pais;

@ApplicationScoped
public class PaisDao {
	private EntityManager manager;

	@Inject
	public PaisDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public PaisDao(){}
	
	public List<Pais> lista() {
		/*
		TypedQuery<Pais> query = manager.createQuery("select p from Pais p", Pais.class);
		return query.getResultList();
		*/
		List<Pais> paises = new ArrayList<Pais>();
		
		Pais p = null;
		p = new Pais();
		p.setCodigo("BRA");
		p.setDescricao("Brasil");
		paises.add(p);
		
		p = new Pais();
		p.setCodigo("GER");
		p.setDescricao("Alemanha");
		paises.add(p);
		
		p = new Pais();
		p.setCodigo("SUI");
		p.setDescricao("Suiça");
		paises.add(p);
		
		return paises;
	}
	
	public Pais carrega(int id) {
		return manager.find(Pais.class, id);
	}
}
