package br.com.semperparata.servirweb.db_load;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.Estado;

public class LoadEstado {
	
	public static void load(EntityManager em) {
		
		List<Estado> estados = new ArrayList<Estado>();
		Estado e = null;
		
		e = new Estado();
		e.setUf("AC");
		e.setDescricao("Acre");
		estados.add(e);

		e = new Estado();
		e.setUf("AL");
		e.setDescricao("Alagoas");
		estados.add(e);

		e = new Estado();
		e.setUf("AP");
		e.setDescricao("Amapá");
		estados.add(e);

		e = new Estado();
		e.setUf("AM");
		e.setDescricao("Amazonas");
		estados.add(e);

		e = new Estado();
		e.setUf("BA");
		e.setDescricao("Bahia");
		estados.add(e);

		e = new Estado();
		e.setUf("CE");
		e.setDescricao("Ceará");
		estados.add(e);

		e = new Estado();
		e.setUf("DF");
		e.setDescricao("Distrito Federal");
		estados.add(e);

		e = new Estado();
		e.setUf("ES");
		e.setDescricao("Espírito Santo");
		estados.add(e);

		e = new Estado();
		e.setUf("GO");
		e.setDescricao("Goiás");
		estados.add(e);

		e = new Estado();
		e.setUf("MA");
		e.setDescricao("Maranhão");
		estados.add(e);

		e = new Estado();
		e.setUf("MT");
		e.setDescricao("Mato Grosso");
		estados.add(e);

		e = new Estado();
		e.setUf("MS");
		e.setDescricao("Mato Grosso do Sul");
		estados.add(e);

		e = new Estado();
		e.setUf("MG");
		e.setDescricao("Minas Gerais");
		estados.add(e);

		e = new Estado();
		e.setUf("PA");
		e.setDescricao("Pará");
		estados.add(e);

		e = new Estado();
		e.setUf("PB");
		e.setDescricao("Paraíba");
		estados.add(e);

		e = new Estado();
		e.setUf("PR");
		e.setDescricao("Paraná");
		estados.add(e);

		e = new Estado();
		e.setUf("PE");
		e.setDescricao("Pernambuco");
		estados.add(e);

		e = new Estado();
		e.setUf("PI");
		e.setDescricao("Piauí");
		estados.add(e);

		e = new Estado();
		e.setUf("RJ");
		e.setDescricao("Rio de Janeiro");
		estados.add(e);

		e = new Estado();
		e.setUf("RN");
		e.setDescricao("Rio Grande do Norte");
		estados.add(e);

		e = new Estado();
		e.setUf("RS");
		e.setDescricao("Rio Grande do Sul");
		estados.add(e);

		e = new Estado();
		e.setUf("RO");
		e.setDescricao("Rondônia");
		estados.add(e);

		e = new Estado();
		e.setUf("RR");
		e.setDescricao("Roraima");
		estados.add(e);

		e = new Estado();
		e.setUf("SC");
		e.setDescricao("Santa Catarina");
		estados.add(e);

		e = new Estado();
		e.setUf("SP");
		e.setDescricao("São Paulo");
		estados.add(e);

		e = new Estado();
		e.setUf("SE");
		e.setDescricao("Sergipe");
		estados.add(e);

		e = new Estado();
		e.setUf("TO");
		e.setDescricao("Tocantins");
		estados.add(e);

		e = new Estado();
		e.setUf("EXT");
		e.setDescricao("Exterior");
		estados.add(e);
		
		em.getTransaction().begin();
		for (Estado estado : estados) {
			em.persist(estado);
		}
		em.getTransaction().commit();

	}
}
