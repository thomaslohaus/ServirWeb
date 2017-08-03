package br.com.semperparata.servirweb.db_load;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.Grupo;
import br.com.semperparata.servirweb.model.Nucleo;
import br.com.semperparata.servirweb.model.Ramo;

public class LoadGrupo {

	public static void load(EntityManager em) {

		Nucleo bororos = em.find(Nucleo.class, 4);
		Ramo ciranda = em.find(Ramo.class, 1);
		Ramo b1 = em.find(Ramo.class, 2);
		Ramo b2 = em.find(Ramo.class, 3);
		Ramo guia = em.find(Ramo.class, 4);
		Ramo guiaAux = em.find(Ramo.class, 5);
		
		
		List<Grupo> grupos = new ArrayList<Grupo>();
		Grupo g = null;

		g = new Grupo();
		g.setNome("Terra do Nunca");
		g.setRamo(ciranda);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);

		g = new Grupo();
		g.setNome("Wunderland");
		g.setRamo(ciranda);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);

		g = new Grupo();
		g.setNome("Bartira");
		g.setRamo(b1);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		g = new Grupo();
		g.setNome("Kanassa");
		g.setRamo(b1);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		g = new Grupo();
		g.setNome("May Mackenzie");
		g.setRamo(b2);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		g = new Grupo();
		g.setNome("Jeronyma Mesquita");
		g.setRamo(b2);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		g = new Grupo();
		g.setNome("Martha König");
		g.setRamo(guia);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		g = new Grupo();
		g.setNome("Chafe Dauch");
		g.setRamo(guiaAux);
		g.setNucleo(bororos);
		g.setAtivo(true);
		grupos.add(g);
		
		em.getTransaction().begin();
		for (Grupo grupo : grupos) {
			em.persist(grupo);
		}
		em.getTransaction().commit();

	}
}
