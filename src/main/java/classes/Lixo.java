package classes;

public class Lixo {

	private int idLixo;
	private String tipo;
	private int idUsuario;
	private int idEndereco;
	private int idCooperativa;
	private Afiliado afiliado = new Afiliado();
	
	public int getIdLixo() {
		return idLixo;
	}
	public void setIdLixo(int idLixo) {
		this.idLixo = idLixo;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public int getIdEndereco() {
		return idEndereco;
	}
	public void setIdEndereco(int idEndereco) {
		this.idEndereco = idEndereco;
	}
	public int getIdCooperativa() {
		return idCooperativa;
	}
	public void setIdCooperativa(int idCooperativa) {
		this.idCooperativa = idCooperativa;
	}
	public Afiliado getAfiliado() {
		return afiliado;
	}
	public void setAfiliado(Afiliado afiliado) {
		this.afiliado = afiliado;
	}	
	
}
