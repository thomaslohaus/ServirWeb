package br.com.semperparata.servirweb.tests;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.semperparata.servirweb.dao.GrupoBandeiranteDao;
import br.com.semperparata.servirweb.dao.RamoBandeiranteDao;
import br.com.semperparata.servirweb.model.GrupoBandeirante;
import br.com.semperparata.servirweb.model.NucleoBandeirante;
import br.com.semperparata.servirweb.model.RamoBandeirante;

public class TestDB {

	public static void main(String[] args) {

		EntityManagerFactory factory = Persistence.createEntityManagerFactory("default");
		EntityManager em = factory.createEntityManager();

		NucleoBandeirante bororos = em.find(NucleoBandeirante.class, 4);
		
		//LoadGrupo.load(em);
		
		RamoBandeiranteDao ramoDao = new RamoBandeiranteDao(em);
		GrupoBandeiranteDao grupoDao = new GrupoBandeiranteDao(em);
		
		for (RamoBandeirante r : ramoDao.listarTodos()) {
			System.out.println(r.getNome());
			for (GrupoBandeirante g : grupoDao.listarAtivosPorNucleoRamo(bororos, r)) {
				System.out.println(g.getNome());
			}
		} 

		System.out.println("ok");
		em.close();
	}
}
