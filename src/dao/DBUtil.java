package dao;
//try to check if I can change to another
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java.sql.ResultSetMetaData;

public class DBUtil {
	public static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/interest" ;
			String username = "root" ;
			String password = "root" ;
			connection = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	public static void closeConnection(ResultSet resultSet, PreparedStatement preStatement, Connection connection) {
			try {
				if (resultSet != null)
					resultSet.close();
				if (preStatement != null)
					preStatement.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	public static List<Map<String, String>> queryListMap(String sql) {
		Connection connection = DBUtil.getConnection();
		PreparedStatement preStatement = null;
		ResultSet resultSet = null;
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		try {
			preStatement = connection.prepareStatement(sql);
			resultSet = preStatement.executeQuery(sql);
			ResultSetMetaData rsData = resultSet.getMetaData();
			int colNum = rsData.getColumnCount();
			while (resultSet.next()) {
				Map<String, String> map = new HashMap<String, String>(colNum);
				for (int i=1; i<=colNum; i++) {
					String value = String.valueOf(resultSet.getObject(i));
					if (value != null)
						map.put(rsData.getColumnName(i).toLowerCase(), value);
				}
				list.add(map);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(resultSet, preStatement, connection);
		}
		return list;
	}
	
	public static boolean update(String sql) {
		Connection connection = DBUtil.getConnection();
		PreparedStatement preStatement = null;
		int feedback = -1;
		try {
			preStatement = connection.prepareStatement(sql);
			feedback = preStatement.executeUpdate();
		} catch (SQLException e) {
			DBUtil.closeConnection(null, preStatement, connection);
			e.printStackTrace();
		}
		if (feedback > 0)
			return true;
		else
			return false;
	}
	
}
