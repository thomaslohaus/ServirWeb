package br.com.semperparata.servirweb.db_load;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.semperparata.servirweb.dao.EstadoDao;
import br.com.semperparata.servirweb.model.Estado;

public class Run {

	public static void main(String[] args) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("default");
		EntityManager em = factory.createEntityManager();
		
		//LoadPais.load(em);
		//LoadEstado.load(em);
		
		EstadoDao dao = new EstadoDao(em);
		
		for (Estado e : dao.listarBrasil()) {
			System.out.println(e.getDescricao());
		}
		
		em.close();
	}

}
