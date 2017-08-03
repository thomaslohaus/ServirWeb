package br.com.semperparata.servirweb.db_load;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.GrupoBandeirante;
import br.com.semperparata.servirweb.model.NucleoBandeirante;
import br.com.semperparata.servirweb.model.RamoBandeirante;

public class LoadGrupo {

	public static void load(EntityManager em) {

		NucleoBandeirante bororos = em.find(NucleoBandeirante.class, 4);
		RamoBandeirante ciranda = em.find(RamoBandeirante.class, 1);
		RamoBandeirante b1 = em.find(RamoBandeirante.class, 2);
		RamoBandeirante b2 = em.find(RamoBandeirante.class, 3);
		RamoBandeirante guia = em.find(RamoBandeirante.class, 4);
		RamoBandeirante guiaAux = em.find(RamoBandeirante.class, 5);
		
		
		List<GrupoBandeirante> grupos = new ArrayList<GrupoBandeirante>();
		GrupoBandeirante g = null;

		g = new GrupoBandeirante();
		g.setNome("Terra do Nunca");
		g.setRamo(ciranda);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);

		g = new GrupoBandeirante();
		g.setNome("Wunderland");
		g.setRamo(ciranda);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);

		g = new GrupoBandeirante();
		g.setNome("Bartira");
		g.setRamo(b1);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		g = new GrupoBandeirante();
		g.setNome("Kanassa");
		g.setRamo(b1);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		g = new GrupoBandeirante();
		g.setNome("May Mackenzie");
		g.setRamo(b2);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		g = new GrupoBandeirante();
		g.setNome("Jeronyma Mesquita");
		g.setRamo(b2);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		g = new GrupoBandeirante();
		g.setNome("Martha König");
		g.setRamo(guia);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		g = new GrupoBandeirante();
		g.setNome("Chafe Dauch");
		g.setRamo(guiaAux);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		em.getTransaction().begin();
		for (GrupoBandeirante grupo : grupos) {
			em.persist(grupo);
		}
		em.getTransaction().commit();

	}
}
