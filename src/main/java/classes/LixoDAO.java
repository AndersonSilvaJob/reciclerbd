package classes;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;

public class LixoDAO {
	public void cadastrarLixo(Lixo lixo) {

		/*
		 * Isso é uma sql comum, os ? são os parâmetros que nós vamos adicionar na base
		 * de dados
		 */

		String sql = "INSERT INTO lixo(nome, Id_cooperativa) VALUES (?,?)";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco
			conn = ConexaoMySQL.getConexaoMySQL();

			// Cria um PreparedStatment, classe usada para executar a query
			pstm =  conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			

			// Adiciona o valor do primeiro parâmetro da sql
			//pstm.setString(1, Usuario.getEmail());
			pstm.setString(1,lixo.getTipo());
			pstm.setInt(2,lixo.getIdCooperativa());
			

			// Executa a sql para inserção dos dados
			pstm.executeUpdate();
			
			ResultSet rs = pstm.getGeneratedKeys();
	        rs.next();
	        int idGerado = rs.getInt(1);
	        lixo.setIdLixo(idGerado);


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
	
	public void selectlixo(String id) {

		/*
		 * Isso é uma sql comum, os ? são os parâmetros que nós vamos adicionar na base
		 * de dados
		 */

		String sql = "SELECT IdLixo, nome FROM lixo WHERE Id_cooperativa = ?";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco
			conn = ConexaoMySQL.getConexaoMySQL();

			// Cria um PreparedStatment, classe usada para executar a query
			pstm =  conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			

			//pstm.setInt(1,lixo.getIdLixo());
			//pstm.setString(2,lixo.getTipo());
			pstm.setString(1,id);
			

			// Executa a sql para inserção dos dados
			pstm.executeUpdate();
			
			ResultSet rs = pstm.getGeneratedKeys();
	        rs.next();


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
	
	public List<Lixo> getLixos(String id) {
		
		String sql = "SELECT IdLixo, nome FROM lixo WHERE Id_cooperativa = ?";


		List<Lixo> lixos = new ArrayList<Lixo> ();

		Connection conn = null;
		PreparedStatement pstm = null;
		// Classe que vai recuperar os dados do banco de dados
		ResultSet rset = null;

		try {
			conn = ConexaoMySQL.getConexaoMySQL();

			pstm = conn.prepareStatement(sql);
			
			pstm.setString(1,id);

			rset = pstm.executeQuery();

			// Enquanto existir dados no banco de dados, faça
			while (rset.next()) {

				Lixo lixo = new Lixo();

				lixo.setIdLixo(rset.getInt("IdLixo"));
				lixo.setTipo(rset.getString("nome"));
				

				lixos.add(lixo);
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

		return lixos;
	}
	
	public void deletalixo(int id) {

		/*
		 * Isso é uma sql comum, os ? são os parâmetros que nós vamos adicionar na base
		 * de dados
		 */

		String sql = "DELETE FROM lixo WHERE IdLixo = ?";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco
			conn = ConexaoMySQL.getConexaoMySQL();

			// Cria um PreparedStatment, classe usada para executar a query
			pstm =  conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			

			
			pstm.setInt(1,id);
			
			

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
}
