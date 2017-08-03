package br.com.semperparata.servirweb.db_load;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.Ramo;

public class LoadRamo {

public static void load(EntityManager em) {
		
		List<Ramo> ramos = new ArrayList<Ramo>();
		Ramo r = null;
		
		r = new Ramo();
		r.setNome("Ciranda");
		r.setTipoGrupo("Ciranda");
		ramos.add(r);

		r = new Ramo();
		r.setNome("B1");
		r.setTipoGrupo("Grupo");
		ramos.add(r);
		
		r = new Ramo();
		r.setNome("B2");
		r.setTipoGrupo("Grupo");
		ramos.add(r);
		
		r = new Ramo();
		r.setNome("Guia");
		r.setTipoGrupo("Clã");
		ramos.add(r);
		
		r = new Ramo();
		r.setNome("Guia Auxiliar");
		r.setTipoGrupo("Clã");
		ramos.add(r);
		
		em.getTransaction().begin();
		for (Ramo ramo : ramos) {
			em.persist(ramo);
		}
		em.getTransaction().commit();

	}
}
