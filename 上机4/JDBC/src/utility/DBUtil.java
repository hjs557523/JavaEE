package utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import DAO.UserDAO;
import JavaBeans.UserBean;

public class DBUtil {
	public Connection getConnection(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
		  return DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","root");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}

    public Connection getConnection(String url,String username,String pwd){
	    
		try{
			
			Class.forName("com.mysql.jdc.Driver");
			return DriverManager.getConnection(url,username,pwd);
		} catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}	
	public Connection openConnection(){
		  Properties prop=new Properties();
	      String driver=null;
	      String username=null;
	      String url=null;
	      String pwd=null;
	      
		try{
		 prop.load(this.getClass().getClassLoader().getResourceAsStream("DBConfig.properties"));
		     driver=prop.getProperty("driver");
		     url=prop.getProperty("url");
		     username=prop.getProperty("username");
		     pwd=prop.getProperty("pwd");
			Class.forName(driver);
			return DriverManager.getConnection(url,username,pwd);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
		    e.printStackTrace();
	    }catch(Exception e){
		    e.printStackTrace();
	    }
		return null;
	}
	
	public int addpp(int x,int y){
		int result = x + y;
		return result;
		
	}

   public void closeConn(Connection conn){  	
     try {
		conn.close();
	  } catch (SQLException e) {
		// TODO Auto-generated catch block
		System.out.println("数据库关闭异常");
		e.printStackTrace();
	  }
    }

  public static void main(String args[]){
	  UserDAO userdao = new UserDAO();
	  UserBean user = new UserBean();
	  user.setName("tencent马化腾");
	  user.setAge(45);
	  user.setMoney(1000);
	  userdao.list();
	  userdao.add(user);
	  userdao.change(15,17,500);
  }
    
}



