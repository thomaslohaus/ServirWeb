package br.com.semperparata.servirweb.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.model.Pessoa;

@RequestScoped
public class PessoaDao {

	private EntityManager manager;

	@Inject
	public PessoaDao(EntityManager manager) {
		this.manager = manager;
	}
	
	public PessoaDao(){}
	
	public void persistir(Pessoa pessoa) {
		manager.getTransaction().begin();
		manager.merge(pessoa);
		manager.getTransaction().commit();
	}
	
	public List<Pessoa> lista() {
		TypedQuery<Pessoa> query = manager.createQuery("select p from Pessoa p", Pessoa.class);
		return query.getResultList();
	}
	
	public List<Pessoa> lista(String email, String cpf) {
		TypedQuery<Pessoa> query = manager.createQuery("select p from Pessoa p where p.email = :email or p.documentos.cpfNumero = :cpf", Pessoa.class);
		query.setParameter("email", email);
		query.setParameter("cpf", cpf);
		return query.getResultList();
	}
	
	public Pessoa carrega(int id) {
		return manager.find(Pessoa.class, id);
	}
}
