package QuestionBank;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbManager {
	
	public Connection getConnection() {
		
		try {
		//String url = "jdbc:sqlserver://questionbank350dbserver.database.windows.net:1433;database=questionbank350db;user=priomkhan@questionbank350dbserver;password=mdk705@usask.ca;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30";
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection dbConnection= DriverManager.getConnection("jdbc:sqlserver://questionbank350dbserver.database.windows.net:1433;database=questionbank350db;user=priomkhan@questionbank350dbserver;password=mdk705@usask.ca;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;");
		return dbConnection;
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
