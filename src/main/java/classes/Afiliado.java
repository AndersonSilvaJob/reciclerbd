package classes;

public class Afiliado {
	
	private int idCooperativa;
	private String nome;
	private String email;
	private String senha;
	private String telefone;
	private String tipoAfiliado;
	private String CnpjCpf;
	private String descricao;
	private Endereco endereco = new Endereco();
	
	public int getIdCooperativa() {
		return idCooperativa;
	}
	public void setIdCooperativa(int idCooperativa) {
		this.idCooperativa = idCooperativa;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getTipoAfiliado() {
		return tipoAfiliado;
	}
	public void setTipoAfiliado(String tipoAfiliado) {
		this.tipoAfiliado = tipoAfiliado;
	}
	public String getCnpjCpf() {
		return CnpjCpf;
	}
	public void setCnpjCpf(String cnpjCpf) {
		CnpjCpf = cnpjCpf;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Endereco getEndereco() {
		return endereco;
	}
	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	


}
