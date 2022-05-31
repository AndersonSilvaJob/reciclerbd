package classes;

public class FaleConosco {

	private int idFaleconosco;
	private String assunto;
	private String mensagem;
	private Afiliado afiliado = new Afiliado();
	private Usuario usuario = new Usuario();

	public int getIdFaleconosco() {
		return idFaleconosco;
	}

	public void setIdFaleconosco(int idFaleconosco) {
		this.idFaleconosco = idFaleconosco;
	}

	public String getAssunto() {
		return assunto;
	}

	public void setAssunto(String assunto) {
		this.assunto = assunto;
	}

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}

	public Afiliado getAfiliado() {
		return afiliado;
	}

	public void setAfiliado(Afiliado afiliado) {
		this.afiliado = afiliado;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}
