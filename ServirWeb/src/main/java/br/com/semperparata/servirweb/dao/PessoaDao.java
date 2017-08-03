package br.com.semperparata.servirweb.dao;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.Pessoa;

@ApplicationScoped
public class PessoaDao {
	private EntityManager manager;

	@Inject
	public PessoaDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public PessoaDao(){}
	
	public Pessoa carregar(int id) {
		return manager.find(Pessoa.class, id);
		/*
		Pessoa p = new Pessoa();
		p.setId(id);
		p.setNome("Thomas Alexnader Haegeli Lohaus");
		p.setDataNascimento("20 Ago 1986");
		p.setNacionalidade("BRA");
		p.setNaturalidade("SP");
		p.setSexo("M");
		p.setEstadoCivil("C");
		p.setReligiao("Ateu");
		p.setEmail("thomas.lohaus@gmail.com");
		p.setCelular("11981417345");
		return p;
		*/
	}
	
	public Pessoa salvar(Pessoa pessoa) {
		manager.getTransaction().begin();
		manager.persist(pessoa);
		manager.getTransaction().commit();
		return pessoa;
	}
}
