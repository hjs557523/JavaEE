package utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	public Connection getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatebase","root","root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void closeConn(Connection conn){  	
		try {
			conn.close();
		}catch (SQLException e) {
			System.out.println("数据库关闭异常");
			e.printStackTrace();
	     }
    } 
	public int addpp(int x,int y){
		int result = x + y;
		return result;
		
	}
	

}
