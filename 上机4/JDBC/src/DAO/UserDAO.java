package DAO;

import java.sql.*;

import utility.DBUtil;

import JavaBeans.UserBean;

public class UserDAO {
    public void list(){
    	DBUtil util=new DBUtil();
    	Connection conn = util.getConnection();
    	String sql = "select id,name from users";
    	try{
    		Statement stmt=conn.createStatement();
    		ResultSet rs= (ResultSet) stmt.executeQuery(sql);
    		while(rs.next()){
    			int id = rs.getInt("id");
    			String username=rs.getString(2);
    			
    			System.out.println("id="+id+",username="+username);
    		}
    	}catch(SQLException e){
    		e.printStackTrace();
    	}
    	
    }


   public void add(UserBean user) {
	   DBUtil util = new DBUtil();
	   Connection conn = util.openConnection();
	   
       try{
    	   
    	   System.out.println("进入方法");
    	   conn.setAutoCommit(true);
    	   String sql = "insert into users (name,age,money) values(?,?,?)";
    	   System.out.println(sql);
    	   PreparedStatement pstmt = conn.prepareStatement(sql);
    	   
    	   pstmt.setString(1,user.getName());
    	   //System.out.println(user.getName());
    	   
    	   pstmt.setInt(2,user.getAge());
    	   //System.out.println(user.getAge());
    	   
    	   pstmt.setInt(3,user.getMoney());
    	   //System.out.println(user.getMoney());
    	   
    	   pstmt.executeUpdate();
    	   System.out.println(pstmt);
    		
    	}catch(Exception e){
    		e.printStackTrace();
    		try{
    			conn.rollback();
    		}catch(SQLException el){
    			el.printStackTrace();
    		}

    		
    	}finally{
 
    		util.closeConn(conn);
    	}
    	
      
   }



   public void change(int uid1,int uid2,int money)
    {
 
    	DBUtil util = new DBUtil();
    	Connection  conn = util.openConnection();
    	String sql1="update users set money=money- " + money +" where id = " + uid1;
    	String sql2="update users set money=money+ " + money +" where id = " + uid2;
    	
    	System.out.println(sql1);
    	System.out.println(sql2);
    	
    	
    	try{
    		
    		conn.setAutoCommit(true);//true
    		PreparedStatement pstmt1=conn.prepareStatement(sql1);
    		
    		PreparedStatement pstmt2=conn.prepareStatement(sql2);
    		
    		pstmt1.executeUpdate(sql1);
    		pstmt2.executeUpdate(sql2);

    	}catch(Exception e){
    		e.printStackTrace();  	
    	    try{
    		    conn.rollback();
    	    }catch(SQLException el){
    		    el.printStackTrace();
    		}
    	}
    	finally{
    		util.closeConn(conn);
    	}
    	
      
    }




}
