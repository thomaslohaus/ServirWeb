package br.com.semperparata.servirweb.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class FichaSaude {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@OneToOne(mappedBy="fichaSaude")
	private Pessoa pessoa;
	
	private Calendar dataPreenchimento;
	private Calendar dataConfirmacao;
	
	private boolean convenio;
	private String convenioNome;
	private String convenioNumero;
	private Calendar convenioValidade;
	private String convenioHospital;
	private String convenioTelefone;
	
	private String grupoSanguineo;
	private String peso;
	
	private boolean alergiaMedicamentos;
	private String alergiaMedicamentosDescricao;
	private boolean alergiaGeral;
	private String alergiaGeralDescricao;
	private boolean fratura;
	private String fraturaDescricao;
	private boolean impedimentoCronico;
	private String impedimentoCronicoDescricao;
	private boolean problemaMotor;
	private String problemaMotorDescricao;
	private boolean problemaCardiaco;
	private String problemaCardiacoDescricao;
	private boolean cirurgia;
	private String cirurgiaDescricao;
	private boolean diabetes;
	private String diabetesDescricao;
	
	private boolean catapora;
	private boolean caxumba;
	private boolean coqueluche;
	private boolean hepatite;
	private boolean meningite;
	private boolean rubeola;
	private boolean sarampo;
	private String doencas;
	
	private boolean vacinaDifteria;
	private Calendar vacinaDifteriaValidade;
	private boolean vacinaFebreAmarela;
	private Calendar vacinaFebreAmarelaValidade;
	private boolean vacinaHepatiteA;
	private Calendar vacinaHepatiteAValidade;
	private boolean vacinaHepatiteB;
	private Calendar vacinaHepatiteBValidade;
	private boolean vacinaMeningite;
	private Calendar vacinaMeningiteValidade;
	private boolean vacinaPoliomelite;
	private Calendar vacinaPoliomeliteValidade;
	private boolean vacinaTetano;
	private Calendar vacinaTetanoValidade;
	private boolean vacinaTifo;
	private Calendar vacinaTifoValidade;
	
	private boolean soroAntiofidico;
	private boolean soroAntitetanico;
	private String soro;
	
	private boolean remedioNenhum;
	private boolean remedioAlopatico;
	private boolean remedioHomeopatico;
	
	//remédios
	
	private boolean sabeNadar;
	private boolean cuidadoEspecial;
	private String cuidadoEspecialDetalhes;
	private boolean restricaoCaminhadas;
	private boolean restricaoEsportes;
	private boolean restricaoExerciciosPesados;
	private String restricaoDetalhes;
	private String observacoes;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}

	public Calendar getDataPreenchimento() {
		return dataPreenchimento;
	}

	public void setDataPreenchimento(Calendar dataPreenchimento) {
		this.dataPreenchimento = dataPreenchimento;
	}

	public Calendar getDataConfirmacao() {
		return dataConfirmacao;
	}

	public void setDataConfirmacao(Calendar dataConfirmacao) {
		this.dataConfirmacao = dataConfirmacao;
	}

	public boolean isConvenio() {
		return convenio;
	}

	public void setConvenio(boolean convenio) {
		this.convenio = convenio;
	}

	public String getConvenioNome() {
		return convenioNome;
	}

	public void setConvenioNome(String convenioNome) {
		this.convenioNome = convenioNome;
	}

	public String getConvenioNumero() {
		return convenioNumero;
	}

	public void setConvenioNumero(String convenioNumero) {
		this.convenioNumero = convenioNumero;
	}

	public Calendar getConvenioValidade() {
		return convenioValidade;
	}

	public void setConvenioValidade(Calendar convenioValidade) {
		this.convenioValidade = convenioValidade;
	}

	public String getConvenioHospital() {
		return convenioHospital;
	}

	public void setConvenioHospital(String convenioHospital) {
		this.convenioHospital = convenioHospital;
	}

	public String getConvenioTelefone() {
		return convenioTelefone;
	}

	public void setConvenioTelefone(String convenioTelefone) {
		this.convenioTelefone = convenioTelefone;
	}

	public String getGrupoSanguineo() {
		return grupoSanguineo;
	}

	public void setGrupoSanguineo(String grupoSanguineo) {
		this.grupoSanguineo = grupoSanguineo;
	}

	public String getPeso() {
		return peso;
	}

	public void setPeso(String peso) {
		this.peso = peso;
	}

	public boolean isAlergiaMedicamentos() {
		return alergiaMedicamentos;
	}

	public void setAlergiaMedicamentos(boolean alergiaMedicamentos) {
		this.alergiaMedicamentos = alergiaMedicamentos;
	}

	public String getAlergiaMedicamentosDescricao() {
		return alergiaMedicamentosDescricao;
	}

	public void setAlergiaMedicamentosDescricao(String alergiaMedicamentosDescricao) {
		this.alergiaMedicamentosDescricao = alergiaMedicamentosDescricao;
	}

	public boolean isAlergiaGeral() {
		return alergiaGeral;
	}

	public void setAlergiaGeral(boolean alergiaGeral) {
		this.alergiaGeral = alergiaGeral;
	}

	public String getAlergiaGeralDescricao() {
		return alergiaGeralDescricao;
	}

	public void setAlergiaGeralDescricao(String alergiaGeralDescricao) {
		this.alergiaGeralDescricao = alergiaGeralDescricao;
	}

	public boolean isFratura() {
		return fratura;
	}

	public void setFratura(boolean fratura) {
		this.fratura = fratura;
	}

	public String getFraturaDescricao() {
		return fraturaDescricao;
	}

	public void setFraturaDescricao(String fraturaDescricao) {
		this.fraturaDescricao = fraturaDescricao;
	}

	public boolean isImpedimentoCronico() {
		return impedimentoCronico;
	}

	public void setImpedimentoCronico(boolean impedimentoCronico) {
		this.impedimentoCronico = impedimentoCronico;
	}

	public String getImpedimentoCronicoDescricao() {
		return impedimentoCronicoDescricao;
	}

	public void setImpedimentoCronicoDescricao(String impedimentoCronicoDescricao) {
		this.impedimentoCronicoDescricao = impedimentoCronicoDescricao;
	}

	public boolean isProblemaMotor() {
		return problemaMotor;
	}

	public void setProblemaMotor(boolean problemaMotor) {
		this.problemaMotor = problemaMotor;
	}

	public String getProblemaMotorDescricao() {
		return problemaMotorDescricao;
	}

	public void setProblemaMotorDescricao(String problemaMotorDescricao) {
		this.problemaMotorDescricao = problemaMotorDescricao;
	}

	public boolean isProblemaCardiaco() {
		return problemaCardiaco;
	}

	public void setProblemaCardiaco(boolean problemaCardiaco) {
		this.problemaCardiaco = problemaCardiaco;
	}

	public String getProblemaCardiacoDescricao() {
		return problemaCardiacoDescricao;
	}

	public void setProblemaCardiacoDescricao(String problemaCardiacoDescricao) {
		this.problemaCardiacoDescricao = problemaCardiacoDescricao;
	}

	public boolean isCirurgia() {
		return cirurgia;
	}

	public void setCirurgia(boolean cirurgia) {
		this.cirurgia = cirurgia;
	}

	public String getCirurgiaDescricao() {
		return cirurgiaDescricao;
	}

	public void setCirurgiaDescricao(String cirurgiaDescricao) {
		this.cirurgiaDescricao = cirurgiaDescricao;
	}

	public boolean isDiabetes() {
		return diabetes;
	}

	public void setDiabetes(boolean diabetes) {
		this.diabetes = diabetes;
	}

	public String getDiabetesDescricao() {
		return diabetesDescricao;
	}

	public void setDiabetesDescricao(String diabetesDescricao) {
		this.diabetesDescricao = diabetesDescricao;
	}

	public boolean isCatapora() {
		return catapora;
	}

	public void setCatapora(boolean catapora) {
		this.catapora = catapora;
	}

	public boolean isCaxumba() {
		return caxumba;
	}

	public void setCaxumba(boolean caxumba) {
		this.caxumba = caxumba;
	}

	public boolean isCoqueluche() {
		return coqueluche;
	}

	public void setCoqueluche(boolean coqueluche) {
		this.coqueluche = coqueluche;
	}

	public boolean isHepatite() {
		return hepatite;
	}

	public void setHepatite(boolean hepatite) {
		this.hepatite = hepatite;
	}

	public boolean isMeningite() {
		return meningite;
	}

	public void setMeningite(boolean meningite) {
		this.meningite = meningite;
	}

	public boolean isRubeola() {
		return rubeola;
	}

	public void setRubeola(boolean rubeola) {
		this.rubeola = rubeola;
	}

	public boolean isSarampo() {
		return sarampo;
	}

	public void setSarampo(boolean sarampo) {
		this.sarampo = sarampo;
	}

	public String getDoencas() {
		return doencas;
	}

	public void setDoencas(String doencas) {
		this.doencas = doencas;
	}

	public boolean isVacinaDifteria() {
		return vacinaDifteria;
	}

	public void setVacinaDifteria(boolean vacinaDifteria) {
		this.vacinaDifteria = vacinaDifteria;
	}

	public Calendar getVacinaDifteriaValidade() {
		return vacinaDifteriaValidade;
	}

	public void setVacinaDifteriaValidade(Calendar vacinaDifteriaValidade) {
		this.vacinaDifteriaValidade = vacinaDifteriaValidade;
	}

	public boolean isVacinaFebreAmarela() {
		return vacinaFebreAmarela;
	}

	public void setVacinaFebreAmarela(boolean vacinaFebreAmarela) {
		this.vacinaFebreAmarela = vacinaFebreAmarela;
	}

	public Calendar getVacinaFebreAmarelaValidade() {
		return vacinaFebreAmarelaValidade;
	}

	public void setVacinaFebreAmarelaValidade(Calendar vacinaFebreAmarelaValidade) {
		this.vacinaFebreAmarelaValidade = vacinaFebreAmarelaValidade;
	}

	public boolean isVacinaHepatiteA() {
		return vacinaHepatiteA;
	}

	public void setVacinaHepatiteA(boolean vacinaHepatiteA) {
		this.vacinaHepatiteA = vacinaHepatiteA;
	}

	public Calendar getVacinaHepatiteAValidade() {
		return vacinaHepatiteAValidade;
	}

	public void setVacinaHepatiteAValidade(Calendar vacinaHepatiteAValidade) {
		this.vacinaHepatiteAValidade = vacinaHepatiteAValidade;
	}

	public boolean isVacinaHepatiteB() {
		return vacinaHepatiteB;
	}

	public void setVacinaHepatiteB(boolean vacinaHepatiteB) {
		this.vacinaHepatiteB = vacinaHepatiteB;
	}

	public Calendar getVacinaHepatiteBValidade() {
		return vacinaHepatiteBValidade;
	}

	public void setVacinaHepatiteBValidade(Calendar vacinaHepatiteBValidade) {
		this.vacinaHepatiteBValidade = vacinaHepatiteBValidade;
	}

	public boolean isVacinaMeningite() {
		return vacinaMeningite;
	}

	public void setVacinaMeningite(boolean vacinaMeningite) {
		this.vacinaMeningite = vacinaMeningite;
	}

	public Calendar getVacinaMeningiteValidade() {
		return vacinaMeningiteValidade;
	}

	public void setVacinaMeningiteValidade(Calendar vacinaMeningiteValidade) {
		this.vacinaMeningiteValidade = vacinaMeningiteValidade;
	}

	public boolean isVacinaPoliomelite() {
		return vacinaPoliomelite;
	}

	public void setVacinaPoliomelite(boolean vacinaPoliomelite) {
		this.vacinaPoliomelite = vacinaPoliomelite;
	}

	public Calendar getVacinaPoliomeliteValidade() {
		return vacinaPoliomeliteValidade;
	}

	public void setVacinaPoliomeliteValidade(Calendar vacinaPoliomeliteValidade) {
		this.vacinaPoliomeliteValidade = vacinaPoliomeliteValidade;
	}

	public boolean isVacinaTetano() {
		return vacinaTetano;
	}

	public void setVacinaTetano(boolean vacinaTetano) {
		this.vacinaTetano = vacinaTetano;
	}

	public Calendar getVacinaTetanoValidade() {
		return vacinaTetanoValidade;
	}

	public void setVacinaTetanoValidade(Calendar vacinaTetanoValidade) {
		this.vacinaTetanoValidade = vacinaTetanoValidade;
	}

	public boolean isVacinaTifo() {
		return vacinaTifo;
	}

	public void setVacinaTifo(boolean vacinaTifo) {
		this.vacinaTifo = vacinaTifo;
	}

	public Calendar getVacinaTifoValidade() {
		return vacinaTifoValidade;
	}

	public void setVacinaTifoValidade(Calendar vacinaTifoValidade) {
		this.vacinaTifoValidade = vacinaTifoValidade;
	}

	public boolean isSoroAntiofidico() {
		return soroAntiofidico;
	}

	public void setSoroAntiofidico(boolean soroAntiofidico) {
		this.soroAntiofidico = soroAntiofidico;
	}

	public boolean isSoroAntitetanico() {
		return soroAntitetanico;
	}

	public void setSoroAntitetanico(boolean soroAntitetanico) {
		this.soroAntitetanico = soroAntitetanico;
	}

	public String getSoro() {
		return soro;
	}

	public void setSoro(String soro) {
		this.soro = soro;
	}

	public boolean isRemedioNenhum() {
		return remedioNenhum;
	}

	public void setRemedioNenhum(boolean remedioNenhum) {
		this.remedioNenhum = remedioNenhum;
	}

	public boolean isRemedioAlopatico() {
		return remedioAlopatico;
	}

	public void setRemedioAlopatico(boolean remedioAlopatico) {
		this.remedioAlopatico = remedioAlopatico;
	}

	public boolean isRemedioHomeopatico() {
		return remedioHomeopatico;
	}

	public void setRemedioHomeopatico(boolean remedioHomeopatico) {
		this.remedioHomeopatico = remedioHomeopatico;
	}

	public boolean isSabeNadar() {
		return sabeNadar;
	}

	public void setSabeNadar(boolean sabeNadar) {
		this.sabeNadar = sabeNadar;
	}

	public boolean isCuidadoEspecial() {
		return cuidadoEspecial;
	}

	public void setCuidadoEspecial(boolean cuidadoEspecial) {
		this.cuidadoEspecial = cuidadoEspecial;
	}

	public String getCuidadoEspecialDetalhes() {
		return cuidadoEspecialDetalhes;
	}

	public void setCuidadoEspecialDetalhes(String cuidadoEspecialDetalhes) {
		this.cuidadoEspecialDetalhes = cuidadoEspecialDetalhes;
	}

	public boolean isRestricaoCaminhadas() {
		return restricaoCaminhadas;
	}

	public void setRestricaoCaminhadas(boolean restricaoCaminhadas) {
		this.restricaoCaminhadas = restricaoCaminhadas;
	}

	public boolean isRestricaoEsportes() {
		return restricaoEsportes;
	}

	public void setRestricaoEsportes(boolean restricaoEsportes) {
		this.restricaoEsportes = restricaoEsportes;
	}

	public boolean isRestricaoExerciciosPesados() {
		return restricaoExerciciosPesados;
	}

	public void setRestricaoExerciciosPesados(boolean restricaoExerciciosPesados) {
		this.restricaoExerciciosPesados = restricaoExerciciosPesados;
	}

	public String getRestricaoDetalhes() {
		return restricaoDetalhes;
	}

	public void setRestricaoDetalhes(String restricaoDetalhes) {
		this.restricaoDetalhes = restricaoDetalhes;
	}

	public String getObservacoes() {
		return observacoes;
	}

	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}

}
