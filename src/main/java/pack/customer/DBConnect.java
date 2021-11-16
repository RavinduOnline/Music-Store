package pack.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	//create DB connection
			private	static String url = "jdbc:mysql://localhost:3306/musicstore";
			private static String user = "root";
			private	static String pw = "12345";
			private static Connection con;
			
			public static Connection getConnection() {
				
				try {
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url,user,pw);
				}
				
				catch(Exception e) {
					System.out.print("DB Connection has error");
				}
				
				return con;
				
			}

}
