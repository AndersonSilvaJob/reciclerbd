package classes;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;

public class AfiliadoDAO {
	
	public void cadastrarAfiliado(Afiliado afiliado) {

		/*
		 * Isso é uma sql comum, os ? são os parâmetros que nós vamos adicionar na base
		 * de dados
		 */

		String sql = "INSERT INTO cooperativa(Nome, Email, Senha, Telefone, tipoAfiliado, CnpjCpf, Descricao)" + "VALUES(?,?,?,?,?,?,?)";
		
		
		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco
			conn = ConexaoMySQL.getConexaoMySQL();

			// Cria um PreparedStatment, classe usada para executar a query
			pstm =  conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			

			// Adiciona o valor do primeiro parâmetro da sql
			pstm.setString(1, afiliado.getNome());
			pstm.setString(2, afiliado.getEmail());
			pstm.setString(3, afiliado.getSenha());
			pstm.setString(4, afiliado.getTelefone());
			pstm.setString(5, afiliado.getTipoAfiliado());
			pstm.setString(6, afiliado.getCnpjCpf());
			pstm.setString(7, afiliado.getDescricao());
			
			

			// Executa a sql para inserção dos dados
			pstm.executeUpdate();
			
			ResultSet rs = pstm.getGeneratedKeys();
	        rs.next();
	        int idGerado = rs.getInt(1);
	        afiliado.setIdCooperativa(idGerado);


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

	public void UpdateAfiliado(Afiliado afiliado) {

		/*
		 * Isso é uma sql comum, os ? são os parâmetros que nós vamos adicionar na base
		 * de dados
		 */

		//String sql = "INSERT INTO cooperativa(Nome, Email, Senha, Telefone, tipoAfiliado, CnpjCpf, Descricao)" + "VALUES(?,?,?,?,?,?,?)";
		String sql = "UPDATE cooperativa SET Nome=?,Email=?,Telefone=?,CnpjCpf=?,Descricao=? WHERE Id_cooperativa = ?";
		
		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco
			conn = ConexaoMySQL.getConexaoMySQL();

			// Cria um PreparedStatment, classe usada para executar a query
			pstm =  conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			

			// Adiciona o valor do primeiro parâmetro da sql
			pstm.setString(1, afiliado.getNome());
			pstm.setString(2, afiliado.getEmail());
			pstm.setString(3, afiliado.getTelefone());
			pstm.setString(4, afiliado.getCnpjCpf());
			pstm.setString(5, afiliado.getDescricao());
			pstm.setInt(6, afiliado.getIdCooperativa());
			
			

			// Executa a sql para inserção dos dados
			pstm.executeUpdate();
			


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
	public Afiliado login(String email,String senha) {

		//String sql = "SELECT Id_cooperativa, Nome, CPF, Email, Senha, Telefone, Celular FROM cooperativa WHERE EMAIL = ?  AND SENHA = ? ";
		String sql = "SELECT Id_cooperativa, Nome, Email, Senha, Telefone, tipoAfiliado, CnpjCpf, Descricao FROM cooperativa WHERE EMAIL = ?  AND SENHA = ?";

		Afiliado afiliado = new Afiliado();
		

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

				afiliado.setIdCooperativa(rset.getInt("Id_cooperativa"));
				afiliado.setNome(rset.getString("Nome"));
				afiliado.setEmail(rset.getString("Email"));
				afiliado.setSenha(rset.getString("Senha"));
				afiliado.setTelefone(rset.getString("Telefone"));
				afiliado.setTipoAfiliado(rset.getString("tipoAfiliado"));
				afiliado.setCnpjCpf(rset.getString("CnpjCpf"));
				afiliado.setDescricao(rset.getString("Descricao"));
				
				
				

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

		return afiliado;
	}
	public void getAfiliado(Afiliado Afiliado) {
		
		String sql = "INSERT INTO cooperativa(Id_cooperativa, Nome, Email, Senha, Telefone, tipoAfiliado, CnpjCpf, Descricao)" + "VALUES(?,?,?,?,?,?,?,?)";
		 
		
		Connection conn = null;
		PreparedStatement pstm = null;
		
		ResultSet rset = null;

		try {
			conn = ConexaoMySQL.getConexaoMySQL();

			pstm = conn.prepareStatement(sql);

			rset = pstm.executeQuery();

			while (rset.next()) {

				Afiliado afiliado = new Afiliado();
				
				afiliado.setIdCooperativa(rset.getInt("Id_cooperativa"));
				afiliado.setNome(rset.getString("Nome"));
				afiliado.setEmail(rset.getString("Email"));
				afiliado.setSenha(rset.getString("Senha"));
				afiliado.setTelefone(rset.getString("Telefone"));
				afiliado.setTipoAfiliado(rset.getString("tipoAfiliado"));
				afiliado.setCnpjCpf(rset.getString("CnpjCpf"));
				afiliado.setDescricao(rset.getString("Descricao"));
				
				
				afiliado.getEndereco().setIdEndereco(rset.getInt("Id_endereço"));
				afiliado.getEndereco().setIdCooperativa(rset.getInt("Id_cooperativa"));
				afiliado.getEndereco().setCep(rset.getString("CEP"));
				afiliado.getEndereco().setEstado(rset.getString("Estado"));
				afiliado.getEndereco().setBairro(rset.getString("Bairro"));
				afiliado.getEndereco().setCidade(rset.getString("Cidade"));
				afiliado.getEndereco().setNumero(rset.getString("Numero"));
				afiliado.getEndereco().setLogradouro(rset.getString("Logradouro"));
				

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

		
	}

	public Afiliado pegarAfiliado(int id) {

		String sql = "SELECT cooperativa.Id_cooperativa, Nome, Email, Senha, Telefone, tipoAfiliado, CnpjCpf, Descricao,  ";
		sql += "Id_endereço, CEP, Estado, Bairro, Cidade, Numero, Logradouro ";
		sql += " FROM cooperativa INNER join endereco ON cooperativa.Id_cooperativa = endereco.Id_cooperativa ";
		sql += "WHERE cooperativa.Id_cooperativa = ? ";

		Afiliado afiliado = new Afiliado();

		/*String sql = "SELECT cooperativa.Id_usuário, Nome, CPF, Email, Senha, Telefone, Celular, ";
		sql += "Id_endereço, CEP, Estado, Bairro, Cidade, Numero, Logradouro ";
		sql += "FROM cooperativa INNER join endereco ON cooperativa.Id_usuário = endereco.Id_usuário ";
		sql += "WHERE cooperativa.id_usuário = ? ";
		cooperativa cooperativa = new cooperativa();*/

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


			//SELECT Id_usuário, Nome, CPF, Email, Senha, Telefone, Celular FROM cooperativa WHERE 1
				afiliado.setIdCooperativa(rset.getInt("Id_cooperativa"));
				afiliado.setNome(rset.getString("Nome"));
				afiliado.setEmail(rset.getString("Email"));
				afiliado.setSenha(rset.getString("Senha"));
				afiliado.setTelefone(rset.getString("Telefone"));
				afiliado.setTipoAfiliado(rset.getString("tipoAfiliado"));
				afiliado.setCnpjCpf(rset.getString("CnpjCpf"));
				afiliado.setDescricao(rset.getString("Descricao"));
				
				afiliado.getEndereco().setIdEndereco(rset.getInt("Id_endereço"));
				afiliado.getEndereco().setIdCooperativa(rset.getInt("Id_cooperativa"));
				afiliado.getEndereco().setCep(rset.getString("CEP"));
				afiliado.getEndereco().setEstado(rset.getString("Estado"));
				afiliado.getEndereco().setBairro(rset.getString("Bairro"));
				afiliado.getEndereco().setCidade(rset.getString("Cidade"));
				afiliado.getEndereco().setNumero(rset.getString("Numero"));
				afiliado.getEndereco().setLogradouro(rset.getString("Logradouro"));
				

				
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

		return afiliado;
	}
	

}
