package kh.web.dbutils;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBUtils {
	public static Connection getConnection() throws Exception {
		Context context = new InitialContext();
		
		// java:/comp/env/은 고정값, oracle은 context.xml 에서 name값
		DataSource ds = (DataSource)context.lookup("java:/comp/env/oracle");
		return ds.getConnection();
	}
}
