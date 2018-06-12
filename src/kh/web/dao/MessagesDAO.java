package kh.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kh.web.dbutils.DBUtils;
import kh.web.dto.MessagesDTO;

public class MessagesDAO {

	public List<MessagesDTO> getAllData() throws Exception {
		Connection conn = DBUtils.getConnection();
		String sql = "select * from messages";
		PreparedStatement pstat = conn.prepareStatement(sql);
		ResultSet rs = pstat.executeQuery();
		List<MessagesDTO> result = new ArrayList<>();

		while (rs.next()) {
			MessagesDTO dto = new MessagesDTO();
			dto.setMessage_id(rs.getInt("message_id"));
			dto.setName(rs.getString("name"));
			dto.setMessage(rs.getString("message"));
			result.add(dto);
		}
		rs.close();
		pstat.close();
		conn.close();

		return result;
	}

	public int insertMessage(String name, String message) throws Exception {
		Connection conn = DBUtils.getConnection();
		String sql = "insert into messages values (message_id_seq.nextval,?,?)";
		PreparedStatement pstat = conn.prepareStatement(sql);
		pstat.setString(1, name);
		pstat.setString(2, message);
		int result = pstat.executeUpdate();

		conn.commit();
		pstat.close();
		conn.close();

		return result;
	}

}
