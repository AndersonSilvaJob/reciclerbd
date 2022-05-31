package classes;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;

public class UsuarioDAO {

	public void cadastrarUsuario(Usuario Usuario) {

		/*
		 * Isso é uma sql comum, os ? são os parâmetros que nós vamos adicionar na base
		 * de dados
		 */

		String sql = "INSERT INTO Usuario(Email,Telefone,CPF,Senha,Nome,Celular)" + " VALUES(?,?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco
			conn = ConexaoMySQL.getConexaoMySQL();

			// Cria um PreparedStatment, classe usada para executar a query
			pstm =  conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			

			// Adiciona o valor do primeiro parâmetro da sql
			pstm.setString(1, Usuario.getEmail());
			pstm.setString(2, Usuario.getTelefone());
			pstm.setString(3, Usuario.getCpf());
			pstm.setString(4, Usuario.getSenha());
			pstm.setString(5, Usuario.getNome());
			pstm.setString(6, Usuario.getCelular());
			

			// Executa a sql para inserção dos dados
			pstm.executeUpdate();
			
			ResultSet rs = pstm.getGeneratedKeys();
	        rs.next();
	        int idGerado = rs.getInt(1);
	        Usuario.setId(idGerado);


		} catch (Exception e) {

			e.printStackTrace();
		} finally {

			// Fecha as conexões

			try {
				if (pstm != null) {

					pstm.close();
				}

				if (conn != null) {
					conn.close();
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
		}
	}

	public void removerUsuario(int id) {

		String sql = "DELETE FROM Usuarios WHERE id = ?";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			conn = ConexaoMySQL.getConexaoMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setInt(1, id);

			pstm.execute();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (pstm != null) {

					pstm.close();
				}

				if (conn != null) {
					conn.close();
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
		}
	}

	public void atualizarUsuario(Usuario Usuario) {

		String sql = "UPDATE usuario SET Nome=?,CPF=?,Email=?,Telefone=?,Celular=? WHERE Id_usuário=?";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco
			conn = ConexaoMySQL.getConexaoMySQL();

			// Cria um PreparedStatment, classe usada para executar a query
			pstm = conn.prepareStatement(sql);

			// Adiciona o valor do primeiro parâmetro da sql
			pstm.setString(1, Usuario.getNome());
			pstm.setString(2, Usuario.getCpf());
			pstm.setString(3, Usuario.getEmail());
			pstm.setString(4, Usuario.getTelefone());
			pstm.setString(5, Usuario.getCelular());
			pstm.setInt(6, Usuario.getId());
			
			// Adicionar o valor do segundo parâmetro da sql
			// pstm.setInt(2, Usuario.getIdade());
			// Adiciona o valor do terceiro parâmetro da sql
			// pstm.setDate(3, new Date(Usuario.getDataCadastro().getTime()));

			// pstm.setInt(4, Usuario.getId());

			// Executa a sql para inserção dos dados
			pstm.execute();

		} catch (Exception e) {

			e.printStackTrace();
		} finally {

			// Fecha as conexões

			try {
				if (pstm != null) {

					pstm.close();
				}

				if (conn != null) {
					conn.close();
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
		}
	}

	public List<Usuario> selectUsuarios() {
		

		//usando no listar aluno
		String sql = "SELECT * FROM usuario";
		//sql += "WHERE usuario.id_usuário = ? ";

		List<Usuario> Usuarios = new ArrayList<Usuario>();

		Connection conn = null;
		PreparedStatement pstm = null;
		// Classe que vai recuperar os dados do banco de dados
		ResultSet rset = null;

		try {
			conn = ConexaoMySQL.getConexaoMySQL();

			pstm = conn.prepareStatement(sql);

			rset = pstm.executeQuery();

			// Enquanto existir dados no banco de dados, faça
			while (rset.next()) {

				Usuario usuario = new Usuario();

				usuario.setId(rset.getInt("Id_usuário"));
				usuario.setNome(rset.getString("Nome"));
				usuario.setCpf(rset.getString("CPF"));
				usuario.setEmail(rset.getString("Email"));
				usuario.setSenha(rset.getString("Senha"));
				usuario.setTelefone(rset.getString("Telefone"));
				usuario.setCelular(rset.getString("Celular"));
				usuario.getEndereco().setIdEndereco(rset.getInt("Id_endereço"));
				usuario.getEndereco().setIdUsuario(rset.getInt("Id_usuário"));
				usuario.getEndereco().setCep(rset.getString("CEP"));
				usuario.getEndereco().setEstado(rset.getString("Estado"));
				usuario.getEndereco().setBairro(rset.getString("Bairro"));
				usuario.getEndereco().setCidade(rset.getString("Cidade"));
				usuario.getEndereco().setNumero(rset.getString("Numero"));
				usuario.getEndereco().setLogradouro(rset.getString("Logradouro"));
				

				Usuarios.add(usuario);
			}
		} catch (Exception e) {

			e.printStackTrace();
		} finally {

			try {

				if (rset != null) {

					rset.close();
				}

				if (pstm != null) {

					pstm.close();
				}

				if (conn != null) {
					conn.close();
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
		}

		return Usuarios;
	}
	public List<Usuario> getUsuarios() {

		String sql = "SELECT usuario.Id_usuário, Nome, CPF, Email, Senha, Telefone, Celular, ";
		sql += "Id_endereço, CEP, Estado, Bairro, Cidade, Numero, Logradouro ";
		sql += "FROM usuario INNER join endereco ON usuario.Id_usuário = endereco.Id_usuário ";
		//sql += "WHERE usuario.id_usuário = ? ";

		List<Usuario> Usuarios = new ArrayList<Usuario>();

		Connection conn = null;
		PreparedStatement pstm = null;
		// Classe que vai recuperar os dados do banco de dados
		ResultSet rset = null;

		try {
			conn = ConexaoMySQL.getConexaoMySQL();

			pstm = conn.prepareStatement(sql);

			rset = pstm.executeQuery();

			// Enquanto existir dados no banco de dados, faça
			while (rset.next()) {

				Usuario usuario = new Usuario();

				usuario.setId(rset.getInt("Id_usuário"));
				usuario.setNome(rset.getString("Nome"));
				usuario.setCpf(rset.getString("CPF"));
				usuario.setEmail(rset.getString("Email"));
				usuario.setSenha(rset.getString("Senha"));
				usuario.setTelefone(rset.getString("Telefone"));
				usuario.setCelular(rset.getString("Celular"));
				usuario.getEndereco().setIdEndereco(rset.getInt("Id_endereço"));
				usuario.getEndereco().setIdUsuario(rset.getInt("Id_usuário"));
				usuario.getEndereco().setCep(rset.getString("CEP"));
				usuario.getEndereco().setEstado(rset.getString("Estado"));
				usuario.getEndereco().setBairro(rset.getString("Bairro"));
				usuario.getEndereco().setCidade(rset.getString("Cidade"));
				usuario.getEndereco().setNumero(rset.getString("Numero"));
				usuario.getEndereco().setLogradouro(rset.getString("Logradouro"));
				

				Usuarios.add(usuario);
			}
		} catch (Exception e) {

			e.printStackTrace();
		} finally {

			try {

				if (rset != null) {

					rset.close();
				}

				if (pstm != null) {

					pstm.close();
				}

				if (conn != null) {
					conn.close();
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
		}

		return Usuarios;
	}
	
	public Usuario getUsuario(int id) {

		String sql = "SELECT usuario.Id_usuário, Nome, CPF, Email, Senha, Telefone, Celular, ";
		sql += "Id_endereço, CEP, Estado, Bairro, Cidade, Numero, Logradouro ";
		sql += "FROM usuario INNER join endereco ON usuario.Id_usuário = endereco.Id_usuário ";
		sql += "WHERE usuario.id_usuário = ? ";


		Usuario usuario = new Usuario();

		Connection conn = null;
		PreparedStatement pstm = null;
		// Classe que vai recuperar os dados do banco de dados
		ResultSet rset = null;

		try {
			conn = ConexaoMySQL.getConexaoMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setInt(1, id);
			rset = pstm.executeQuery();

			// Enquanto existir dados no banco de dados, faça
			while (rset.next()) {


			//SELECT Id_usuário, Nome, CPF, Email, Senha, Telefone, Celular FROM usuario WHERE 1
				usuario.setId(rset.getInt("Id_usuário"));
				usuario.setNome(rset.getString("Nome"));
				usuario.setCpf(rset.getString("CPF"));
				usuario.setEmail(rset.getString("Email"));
				usuario.setSenha(rset.getString("Senha"));
				usuario.setTelefone(rset.getString("Telefone"));
				usuario.setCelular(rset.getString("Celular"));
				usuario.getEndereco().setIdEndereco(rset.getInt("Id_endereço"));
				usuario.getEndereco().setIdUsuario(rset.getInt("Id_usuário"));
				usuario.getEndereco().setCep(rset.getString("CEP"));
				usuario.getEndereco().setEstado(rset.getString("Estado"));
				usuario.getEndereco().setBairro(rset.getString("Bairro"));
				usuario.getEndereco().setCidade(rset.getString("Cidade"));
				usuario.getEndereco().setNumero(rset.getString("Numero"));
				usuario.getEndereco().setLogradouro(rset.getString("Logradouro"));
				

				
			}
		} catch (Exception e) {

			e.printStackTrace();
		} finally {

			try {

				if (rset != null) {

					rset.close();
				}

				if (pstm != null) {

					pstm.close();
				}

				if (conn != null) {
					conn.close();
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
		}

		return usuario;
	}
	
	
	public Usuario login(String email,String senha) {

		String sql = "SELECT Id_usuário, Nome, CPF, Email, Senha, Telefone, Celular FROM usuario WHERE EMAIL = ?  AND SENHA = ? ";

		Usuario usuario = new Usuario();
		

		Connection conn = null;
		PreparedStatement pstm = null;
		// Classe que vai recuperar os dados do banco de dados
		ResultSet rset = null;

		try {
			conn = ConexaoMySQL.getConexaoMySQL();

			pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, email);
			pstm.setString(2, senha);
			rset = pstm.executeQuery();

			// Enquanto existir dados no banco de dados, faça
			while (rset.next()) {

				usuario.setId(rset.getInt("Id_usuário"));
				usuario.setNome(rset.getString("Nome"));
				usuario.setCpf(rset.getString("CPF"));
				usuario.setEmail(rset.getString("Email"));
				usuario.setSenha(rset.getString("Senha"));
				usuario.setTelefone(rset.getString("Telefone"));
				usuario.setCelular(rset.getString("Celular"));

			}
		} catch (Exception e) {

			e.printStackTrace();
		} finally {

			try {

				if (rset != null) {

					rset.close();
				}

				if (pstm != null) {

					pstm.close();
				}

				if (conn != null) {
					conn.close();
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
		}

		return usuario;
	}

}
