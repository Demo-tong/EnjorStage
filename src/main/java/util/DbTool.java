
package util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * 类说明
 * @author Afar
 * @time Sep 9, 2016
 */
public class DbTool {
	
			
	private static final String DB_NAME = "enjoystage";// ���ݿ������
	private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
	private static String DB_URL = "jdbc:mysql://127.0.0.1:3306/" + DB_NAME+ "?useUnicode=true&characterEncoding=utf8&useSSL=true";
	
	private static final String DB_USER = "root";
	private static final String DB_PWD = "tongyang";
	private static Connection connection = null;

	static {
		try {
			Class.forName(DB_DRIVER).newInstance();
			System.out.println("******************������������");
		} catch (InstantiationException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

	public static Connection getConnection() {

		try {
			connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PWD);// ������䲻�ܷ���static�������

			if (connection != null) {
				System.out.println("��ȡ���ݿ�����->DB:   " + DB_NAME);
			} else {
				System.out.println("�޷���ȡ���ݿ�����>DB:   " + DB_NAME);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}

	public static void close(ResultSet rSet, PreparedStatement prst,
			Connection connection) {
		closeResultSet(rSet);
		closePreparedStatement(prst);
		closeConnection(connection);
	}

	public static void close(PreparedStatement prst, Connection connection) {
		closePreparedStatement(prst);
		closeConnection(connection);
	}

	private static void closeConnection(Connection connection) {
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
			}
			System.out.println("�ر�����");

		}
	}

	private static void closePreparedStatement(PreparedStatement prst) {
		if (prst != null) {
			try {
				prst.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
			}
			System.out.println("�ر�Ԥ�������");
		}

	}

	private static void closeResultSet(ResultSet rSet) {
		if (rSet != null) {
			try {
				rSet.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
			}
			System.out.println("�رս��������");

		}
	}

}
