package br.com.semperparata.servirweb.tests;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.semperparata.servirweb.dao.DocumentosDao;
import br.com.semperparata.servirweb.dao.PessoaDao;
import br.com.semperparata.servirweb.model.Documentos;
import br.com.semperparata.servirweb.model.Pessoa;

public class TestDB {

	public static void main(String[] args) {

		EntityManagerFactory factory = Persistence.createEntityManagerFactory("default");
		EntityManager em = factory.createEntityManager();

		PessoaDao pessoaDao = new PessoaDao(em);
		DocumentosDao documentosDao = new DocumentosDao(em);
		
		Pessoa pessoa = pessoaDao.carregar(1);
		
		Documentos d = new Documentos();
		d.setCpfNumero("123.456.789-00");
		pessoa.setDocumentos(d);
		
		documentosDao.salvar(d);
		pessoaDao.salvar(pessoa);
		
		
		
		System.out.println("ok");
		em.close();
	}
}
