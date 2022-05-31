package classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;

public class FaleConoscoDAO {
	
	public void inserirFaleConoscoUsuario(FaleConosco faleconosco) {

		String sql = "INSERT INTO faleconosco(assunto, mensagem,Id_usuário) VALUES (?,?,?);";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco
			conn = ConexaoMySQL.getConexaoMySQL();

			pstm =  conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			pstm.setString(1, faleconosco.getAssunto());
			pstm.setString(2, faleconosco.getMensagem());
			pstm.setInt(3, faleconosco.getUsuario().getId());

			// Executa a sql para inserção dos dados
			pstm.executeUpdate();
			
			ResultSet rs = pstm.getGeneratedKeys();
	        rs.next();
	        int idGerado = rs.getInt(1);
	        faleconosco.setIdFaleconosco(idGerado);


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
	
	public void inserirFaleConoscoAfiliado(FaleConosco faleconosco) {

		String sql = "INSERT INTO faleconosco(assunto, mensagem,Id_cooperativa) VALUES (?,?,?);";

		Connection conn = null;
		PreparedStatement pstm = null;

		try {
			// Cria uma conexão com o banco
			conn = ConexaoMySQL.getConexaoMySQL();

			pstm =  conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			pstm.setString(1, faleconosco.getAssunto());
			pstm.setString(2, faleconosco.getMensagem());
			pstm.setInt(3, faleconosco.getAfiliado().getIdCooperativa());

			// Executa a sql para inserção dos dados
			pstm.executeUpdate();
			
			ResultSet rs = pstm.getGeneratedKeys();
	        rs.next();
	        int idGerado = rs.getInt(1);
	        faleconosco.setIdFaleconosco(idGerado);


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
	

