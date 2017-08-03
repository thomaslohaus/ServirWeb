package br.com.semperparata.servirweb.tests;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.semperparata.servirweb.dao.GrupoDao;
import br.com.semperparata.servirweb.dao.RamoDao;
import br.com.semperparata.servirweb.model.Grupo;
import br.com.semperparata.servirweb.model.Nucleo;
import br.com.semperparata.servirweb.model.Ramo;

public class TestDB {

	public static void main(String[] args) {

		EntityManagerFactory factory = Persistence.createEntityManagerFactory("default");
		EntityManager em = factory.createEntityManager();

		Nucleo bororos = em.find(Nucleo.class, 4);
		
		//LoadGrupo.load(em);
		
		RamoDao ramoDao = new RamoDao(em);
		GrupoDao grupoDao = new GrupoDao(em);
		
		for (Ramo r : ramoDao.listarTodos()) {
			System.out.println(r.getNome());
			for (Grupo g : grupoDao.listarAtivosPorNucleoRamo(bororos, r)) {
				System.out.println(g.getNome());
			}
		} 

		System.out.println("ok");
		em.close();
	}
}
