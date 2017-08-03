package br.com.semperparata.servirweb.db_load;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import br.com.semperparata.servirweb.model.Pais;

public class LoadPais {
	
	public static void load(EntityManager em) {
		
		List<Pais> paises = new ArrayList<Pais>();
		Pais p = null;
		
		p = new Pais();
		p.setCodigo("BRA");
		p.setDescricao("Brasil");
		paises.add(p);

		p = new Pais();
		p.setCodigo("AFG");
		p.setDescricao("Afeganistão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ZAF");
		p.setDescricao("África do Sul");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ALB");
		p.setDescricao("Albânia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("DEU");
		p.setDescricao("Alemanha");
		paises.add(p);

		p = new Pais();
		p.setCodigo("AND");
		p.setDescricao("Andorra");
		paises.add(p);

		p = new Pais();
		p.setCodigo("AGO");
		p.setDescricao("Angola");
		paises.add(p);

		p = new Pais();
		p.setCodigo("AIA");
		p.setDescricao("Anguilla");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ATA");
		p.setDescricao("Antárctida");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ATG");
		p.setDescricao("Antígua e Barbuda");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ANT");
		p.setDescricao("Antilhas Holandesas");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SAU");
		p.setDescricao("Arábia Saudita");
		paises.add(p);

		p = new Pais();
		p.setCodigo("DZA");
		p.setDescricao("Argélia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ARG");
		p.setDescricao("Argentina");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ARM");
		p.setDescricao("Arménia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ABW");
		p.setDescricao("Aruba");
		paises.add(p);

		p = new Pais();
		p.setCodigo("AUS");
		p.setDescricao("Austrália");
		paises.add(p);

		p = new Pais();
		p.setCodigo("AUT");
		p.setDescricao("Austria");
		paises.add(p);

		p = new Pais();
		p.setCodigo("AZE");
		p.setDescricao("Azerbaijão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BHS");
		p.setDescricao("Bahamas");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BHR");
		p.setDescricao("Bahrein");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BGD");
		p.setDescricao("Bangladesh");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BRB");
		p.setDescricao("Barbados");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BEL");
		p.setDescricao("Bélgica");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BLZ");
		p.setDescricao("Belize");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BEN");
		p.setDescricao("Benim");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BMU");
		p.setDescricao("Bermudas");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BLR");
		p.setDescricao("Bielorrússia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BTN");
		p.setDescricao("Butão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BOL");
		p.setDescricao("Bolívia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BIH");
		p.setDescricao("Bósnia e Herzegovina");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BWA");
		p.setDescricao("Botsuana");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BRN");
		p.setDescricao("Brunei");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BGR");
		p.setDescricao("Bulgária");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BFA");
		p.setDescricao("Burkina Faso");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BDI");
		p.setDescricao("Burundi");
		paises.add(p);

		p = new Pais();
		p.setCodigo("KHM");
		p.setDescricao("Camboja");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CMR");
		p.setDescricao("Camarões");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CAN");
		p.setDescricao("Canadá");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CPV");
		p.setDescricao("Cabo Verde");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CYM");
		p.setDescricao("Ilhas Cayman");
		paises.add(p);

		p = new Pais();
		p.setCodigo("KAZ");
		p.setDescricao("Cazaquistão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TCD");
		p.setDescricao("Chade");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CHL");
		p.setDescricao("Chile");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CHN");
		p.setDescricao("China");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CYP");
		p.setDescricao("Chipre");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CXR");
		p.setDescricao("Ilha Christmas");
		paises.add(p);

		p = new Pais();
		p.setCodigo("COL");
		p.setDescricao("Colômbia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("COM");
		p.setDescricao("Comores");
		paises.add(p);

		p = new Pais();
		p.setCodigo("COG");
		p.setDescricao("Congo");
		paises.add(p);

		p = new Pais();
		p.setCodigo("COK");
		p.setDescricao("Ilhas Cook");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PPK");
		p.setDescricao("Coreia do Norte");
		paises.add(p);

		p = new Pais();
		p.setCodigo("KOR");
		p.setDescricao("Coreia do Sul");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CRI");
		p.setDescricao("Costa Rica");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CIV");
		p.setDescricao("Costa do Marfim");
		paises.add(p);

		p = new Pais();
		p.setCodigo("HRV");
		p.setDescricao("Croácia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CUB");
		p.setDescricao("Cuba");
		paises.add(p);

		p = new Pais();
		p.setCodigo("DNK");
		p.setDescricao("Dinamarca");
		paises.add(p);

		p = new Pais();
		p.setCodigo("DJI");
		p.setDescricao("Djibouti");
		paises.add(p);

		p = new Pais();
		p.setCodigo("DMA");
		p.setDescricao("Dominica");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ECU");
		p.setDescricao("Equador");
		paises.add(p);

		p = new Pais();
		p.setCodigo("EGY");
		p.setDescricao("Egito");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SLV");
		p.setDescricao("El Salvador");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ARE");
		p.setDescricao("Emirados Árabes Unidos");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ERI");
		p.setDescricao("Eritreia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SCO");
		p.setDescricao("Escócia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SVK");
		p.setDescricao("Eslováquia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ESP");
		p.setDescricao("Espanha");
		paises.add(p);

		p = new Pais();
		p.setCodigo("USA");
		p.setDescricao("Estados Unidos");
		paises.add(p);

		p = new Pais();
		p.setCodigo("EST");
		p.setDescricao("Estônia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ETH");
		p.setDescricao("Etiópia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("FRO");
		p.setDescricao("Ilhas Feroé");
		paises.add(p);

		p = new Pais();
		p.setCodigo("FJI");
		p.setDescricao("Fiji");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PHL");
		p.setDescricao("Filipinas");
		paises.add(p);

		p = new Pais();
		p.setCodigo("FIN");
		p.setDescricao("Finlândia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("FRA");
		p.setDescricao("França");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GAB");
		p.setDescricao("Gabão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GHA");
		p.setDescricao("Gana");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GMB");
		p.setDescricao("Gâmbia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GEO");
		p.setDescricao("Geórgia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GIB");
		p.setDescricao("Gibraltar");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GRD");
		p.setDescricao("Granada");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GRC");
		p.setDescricao("Grécia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GRL");
		p.setDescricao("Gronelândia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GLP");
		p.setDescricao("Guadalupe");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GUM");
		p.setDescricao("Guam");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GTM");
		p.setDescricao("Guatemala");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GIN");
		p.setDescricao("Guiné");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GNB");
		p.setDescricao("Guiné-Bissau");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GNQ");
		p.setDescricao("Guiné Equatorial");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GUY");
		p.setDescricao("Guiana");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GUF");
		p.setDescricao("Guiana Francesa");
		paises.add(p);

		p = new Pais();
		p.setCodigo("HTI");
		p.setDescricao("Haiti");
		paises.add(p);

		p = new Pais();
		p.setCodigo("HND");
		p.setDescricao("Honduras");
		paises.add(p);

		p = new Pais();
		p.setCodigo("HKG");
		p.setDescricao("Hong Kong");
		paises.add(p);

		p = new Pais();
		p.setCodigo("HUN");
		p.setDescricao("Hungria");
		paises.add(p);

		p = new Pais();
		p.setCodigo("YEM");
		p.setDescricao("Iémen");
		paises.add(p);

		p = new Pais();
		p.setCodigo("IND");
		p.setDescricao("Índia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("IDN");
		p.setDescricao("Indonésia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ENG");
		p.setDescricao("Inglaterra");
		paises.add(p);

		p = new Pais();
		p.setCodigo("IRN");
		p.setDescricao("Irão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("IRQ");
		p.setDescricao("Iraque");
		paises.add(p);

		p = new Pais();
		p.setCodigo("IRL");
		p.setDescricao("Irlanda");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NIR");
		p.setDescricao("Irlanda do Norte");
		paises.add(p);

		p = new Pais();
		p.setCodigo("IMN");
		p.setDescricao("Ilha de Man");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ISL");
		p.setDescricao("Islândia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ISR");
		p.setDescricao("Israel");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ITA");
		p.setDescricao("Itália");
		paises.add(p);

		p = new Pais();
		p.setCodigo("JAM");
		p.setDescricao("Jamaica");
		paises.add(p);

		p = new Pais();
		p.setCodigo("JPN");
		p.setDescricao("Japão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("JOR");
		p.setDescricao("Jordânia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("KIR");
		p.setDescricao("Kiribati");
		paises.add(p);

		p = new Pais();
		p.setCodigo("KWT");
		p.setDescricao("Kuwait");
		paises.add(p);

		p = new Pais();
		p.setCodigo("LAO");
		p.setDescricao("Laos");
		paises.add(p);

		p = new Pais();
		p.setCodigo("LVA");
		p.setDescricao("Letônia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("LSO");
		p.setDescricao("Lesoto");
		paises.add(p);

		p = new Pais();
		p.setCodigo("LBN");
		p.setDescricao("Líbano");
		paises.add(p);

		p = new Pais();
		p.setCodigo("LBR");
		p.setDescricao("Libéria");
		paises.add(p);

		p = new Pais();
		p.setCodigo("LBY");
		p.setDescricao("Líbia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("LIE");
		p.setDescricao("Liechtenstein");
		paises.add(p);

		p = new Pais();
		p.setCodigo("LTU");
		p.setDescricao("Lituânia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("LUX");
		p.setDescricao("Luxemburgo");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MAC");
		p.setDescricao("Macau");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MKD");
		p.setDescricao("Macedónia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MDG");
		p.setDescricao("Madagáscar");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MYS");
		p.setDescricao("Malásia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MWI");
		p.setDescricao("Malaui");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MDV");
		p.setDescricao("Maldivas");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MLI");
		p.setDescricao("Mali");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MLT");
		p.setDescricao("Malta");
		paises.add(p);

		p = new Pais();
		p.setCodigo("FLK");
		p.setDescricao("Ilhas Malvinas");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MHL");
		p.setDescricao("Ilhas Marshall");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MNP");
		p.setDescricao("Marianas Setentrionais");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MAR");
		p.setDescricao("Marrocos");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MTQ");
		p.setDescricao("Martinica");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MRT");
		p.setDescricao("Mauritânia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MUS");
		p.setDescricao("Maurícia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MYT");
		p.setDescricao("Mayotte");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MEX");
		p.setDescricao("México");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MMR");
		p.setDescricao("Mianmar");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MDA");
		p.setDescricao("Moldávia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MCO");
		p.setDescricao("Mónaco");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MNG");
		p.setDescricao("Mongólia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MNE");
		p.setDescricao("Montenegro");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MSR");
		p.setDescricao("Montserrat");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MOZ");
		p.setDescricao("Moçambique");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NAM");
		p.setDescricao("Namíbia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NRU");
		p.setDescricao("Nauru");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NPL");
		p.setDescricao("Nepal");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NCL");
		p.setDescricao("Nova Caledônia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NZL");
		p.setDescricao("Nova Zelândia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NIC");
		p.setDescricao("Nicarágua");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NER");
		p.setDescricao("Níger");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NGA");
		p.setDescricao("Nigéria");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NIU");
		p.setDescricao("Niue");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NFK");
		p.setDescricao("Ilha Norfolk");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NOR");
		p.setDescricao("Noruega");
		paises.add(p);

		p = new Pais();
		p.setCodigo("OMN");
		p.setDescricao("Omã");
		paises.add(p);

		p = new Pais();
		p.setCodigo("WAL");
		p.setDescricao("País de Gales");
		paises.add(p);

		p = new Pais();
		p.setCodigo("NLD");
		p.setDescricao("Países Baixos");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PLW");
		p.setDescricao("Palau");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PSE");
		p.setDescricao("Palestina");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PAN");
		p.setDescricao("Panamá");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PNG");
		p.setDescricao("Papua-Nova Guiné");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PAK");
		p.setDescricao("Paquistão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PRY");
		p.setDescricao("Paraguai");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PER");
		p.setDescricao("Peru");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PYF");
		p.setDescricao("Polinésia Francesa");
		paises.add(p);

		p = new Pais();
		p.setCodigo("POL");
		p.setDescricao("Polónia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PRT");
		p.setDescricao("Portugal");
		paises.add(p);

		p = new Pais();
		p.setCodigo("PRI");
		p.setDescricao("Porto Rico");
		paises.add(p);

		p = new Pais();
		p.setCodigo("QAT");
		p.setDescricao("Qatar");
		paises.add(p);

		p = new Pais();
		p.setCodigo("KEN");
		p.setDescricao("Quênia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("KGZ");
		p.setDescricao("Quirguistão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("GBR");
		p.setDescricao("Reino Unido");
		paises.add(p);

		p = new Pais();
		p.setCodigo("VGB");
		p.setDescricao("Ilhas Virgens Britânicas");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CAF");
		p.setDescricao("República Centro-Africana");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CZE");
		p.setDescricao("República Checa");
		paises.add(p);

		p = new Pais();
		p.setCodigo("COD");
		p.setDescricao("República Democrática do Congo");
		paises.add(p);

		p = new Pais();
		p.setCodigo("DOM");
		p.setDescricao("República Dominicana");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TWN");
		p.setDescricao("Taiwan");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ROU");
		p.setDescricao("Romênia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("RUS");
		p.setDescricao("Rússia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("RWA");
		p.setDescricao("Ruanda");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ESH");
		p.setDescricao("Saara Ocidental");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SLB");
		p.setDescricao("Ilhas Salomão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("WSM");
		p.setDescricao("Samoa");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ASM");
		p.setDescricao("Samoa Americana");
		paises.add(p);

		p = new Pais();
		p.setCodigo("BLM");
		p.setDescricao("Saint-Barthélemy");
		paises.add(p);

		p = new Pais();
		p.setCodigo("LCA");
		p.setDescricao("Santa Lúcia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("MAF");
		p.setDescricao("Saint Martin");
		paises.add(p);

		p = new Pais();
		p.setCodigo("KNA");
		p.setDescricao("São Cristóvão e Névis");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SPM");
		p.setDescricao("São Pedro e Miquelão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("VCT");
		p.setDescricao("São Vicente e Granadinas");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SMR");
		p.setDescricao("São Marinho");
		paises.add(p);

		p = new Pais();
		p.setCodigo("STP");
		p.setDescricao("São Tomé e Príncipe");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SEN");
		p.setDescricao("Senegal");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SLE");
		p.setDescricao("Serra Leoa");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SRB");
		p.setDescricao("Sérvia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SYC");
		p.setDescricao("Seychelles");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SGP");
		p.setDescricao("Singapura");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SYR");
		p.setDescricao("Síria");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SOM");
		p.setDescricao("Somália");
		paises.add(p);

		p = new Pais();
		p.setCodigo("LKA");
		p.setDescricao("Sri Lanka");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SDN");
		p.setDescricao("Sudão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SWE");
		p.setDescricao("Suécia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SWZ");
		p.setDescricao("Suazilândia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("CHE");
		p.setDescricao("Suíça");
		paises.add(p);

		p = new Pais();
		p.setCodigo("SUR");
		p.setDescricao("Suriname");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TJK");
		p.setDescricao("Tadjiquistão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("THA");
		p.setDescricao("Tailândia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TZA");
		p.setDescricao("Tanzânia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TLS");
		p.setDescricao("Timor-Leste");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TGO");
		p.setDescricao("Togo");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TKL");
		p.setDescricao("Toquelau");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TON");
		p.setDescricao("Tonga");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TTO");
		p.setDescricao("Trinidad e Tobago");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TUN");
		p.setDescricao("Tunísia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TKM");
		p.setDescricao("Turcomenistão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TUR");
		p.setDescricao("Turquia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TCA");
		p.setDescricao("Turcas e Caicos");
		paises.add(p);

		p = new Pais();
		p.setCodigo("TUV");
		p.setDescricao("Tuvalu");
		paises.add(p);

		p = new Pais();
		p.setCodigo("UKR");
		p.setDescricao("Ucrânia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("UGA");
		p.setDescricao("Uganda");
		paises.add(p);

		p = new Pais();
		p.setCodigo("VIR");
		p.setDescricao("Ilhas Virgens Americanas");
		paises.add(p);

		p = new Pais();
		p.setCodigo("URY");
		p.setDescricao("Uruguai");
		paises.add(p);

		p = new Pais();
		p.setCodigo("UZB");
		p.setDescricao("Uzbequistão");
		paises.add(p);

		p = new Pais();
		p.setCodigo("VUT");
		p.setDescricao("Vanuatu");
		paises.add(p);

		p = new Pais();
		p.setCodigo("VAT");
		p.setDescricao("Vaticano");
		paises.add(p);

		p = new Pais();
		p.setCodigo("VEN");
		p.setDescricao("Venezuela");
		paises.add(p);

		p = new Pais();
		p.setCodigo("VNM");
		p.setDescricao("Vietname");
		paises.add(p);

		p = new Pais();
		p.setCodigo("WLF");
		p.setDescricao("Wallis e Futuna");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ZMB");
		p.setDescricao("Zâmbia");
		paises.add(p);

		p = new Pais();
		p.setCodigo("ZWE");
		p.setDescricao("Zimbábue");
		paises.add(p);
		
		em.getTransaction().begin();
		for (Pais pais : paises) {
			em.persist(pais);
		}
		em.getTransaction().commit();

	}
}
