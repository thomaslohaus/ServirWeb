package br.com.semperparata.servirweb.db_load;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.semperparata.servirweb.model.Estado;
import br.com.semperparata.servirweb.model.NucleoBandeirante;

public class LoadNucleo {
	
	public static void load(EntityManager em) {
		
		TypedQuery<Estado> query = em.createQuery("select e from Estado e where e.uf = :uf", Estado.class);
		query.setParameter("uf", "SP");
		Estado e = query.getSingleResult();
				
		List<NucleoBandeirante> nucleos = new ArrayList<NucleoBandeirante>();
		
		NucleoBandeirante nucleo = null;
	
		nucleo = new NucleoBandeirante();
		nucleo.setNome("Acauã");
		nucleo.setCodigo("SP_ACA");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);

		nucleo = new NucleoBandeirante();
		nucleo.setNome("Alto de Pinheiros");
		nucleo.setCodigo("SP_API");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);

		nucleo = new NucleoBandeirante();
		nucleo.setNome("Avanhandava");
		nucleo.setCodigo("SP_AVA");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);

		nucleo = new NucleoBandeirante();
		nucleo.setNome("Bororos");
		nucleo.setCodigo("SP_BOR");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);

		nucleo = new NucleoBandeirante();
		nucleo.setNome("Cidade Azul");
		nucleo.setCodigo("SP_CAZ");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);

		nucleo = new NucleoBandeirante();
		nucleo.setNome("Conde de Prates");
		nucleo.setCodigo("SP_CPR");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);

		nucleo = new NucleoBandeirante();
		nucleo.setNome("Estação Mayrink");
		nucleo.setCodigo("SP_EMA");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);

		nucleo = new NucleoBandeirante();
		nucleo.setNome("Garou");
		nucleo.setCodigo("SP_GAR");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);
		
		nucleo = new NucleoBandeirante();
		nucleo.setNome("Itatiaia");
		nucleo.setCodigo("SP_ITA");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);

		nucleo = new NucleoBandeirante();
		nucleo.setNome("Jequitibá");
		nucleo.setCodigo("SP_JEQ");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);

		nucleo = new NucleoBandeirante();
		nucleo.setNome("Óikos");
		nucleo.setCodigo("SP_OIK");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);

		nucleo = new NucleoBandeirante();
		nucleo.setNome("Santos");
		nucleo.setCodigo("SP_SAN");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);

		nucleo = new NucleoBandeirante();
		nucleo.setNome("São Bernardo");
		nucleo.setCodigo("SP_SBC");
		nucleo.setEstado(e);
		nucleo.setAtivo(true);
		nucleos.add(nucleo);
		
		em.getTransaction().begin();
		for (NucleoBandeirante nucleoBandeirante: nucleos) {
			em.persist(nucleoBandeirante);
		}
		em.getTransaction().commit();

	}
}
