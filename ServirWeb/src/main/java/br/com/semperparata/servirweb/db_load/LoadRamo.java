package br.com.semperparata.servirweb.db_load;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.RamoBandeirante;

public class LoadRamo {

public static void load(EntityManager em) {
		
		List<RamoBandeirante> ramos = new ArrayList<RamoBandeirante>();
		RamoBandeirante r = null;
		
		r = new RamoBandeirante();
		r.setNome("Ciranda");
		r.setTipoGrupo("Ciranda");
		ramos.add(r);

		r = new RamoBandeirante();
		r.setNome("B1");
		r.setTipoGrupo("Grupo");
		ramos.add(r);
		
		r = new RamoBandeirante();
		r.setNome("B2");
		r.setTipoGrupo("Grupo");
		ramos.add(r);
		
		r = new RamoBandeirante();
		r.setNome("Guia");
		r.setTipoGrupo("Clã");
		ramos.add(r);
		
		r = new RamoBandeirante();
		r.setNome("Guia Auxiliar");
		r.setTipoGrupo("Clã");
		ramos.add(r);
		
		em.getTransaction().begin();
		for (RamoBandeirante ramo : ramos) {
			em.persist(ramo);
		}
		em.getTransaction().commit();

	}
}
