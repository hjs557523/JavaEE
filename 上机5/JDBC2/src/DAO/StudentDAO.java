package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import JavaBeans.StudentBean;
import utility.DBUtil;

public class StudentDAO {
    public ResultSet select(){
    	DBUtil util = new DBUtil();
    	Connection conn = util.getConnection();//得到数据库连接
    	String sql = "select * from students";//查询students表的所有记录
    	try{
    		Statement stmt = conn.createStatement();
    		ResultSet rs = (ResultSet) stmt.executeQuery(sql);//查询得到结果集
    		return rs;
    		
    	}catch(SQLException e){
    		e.printStackTrace();
    	}
		return null;
    }
    
    public ResultSet MoHu_select(StudentBean stu){
    	DBUtil util = new DBUtil();
    	Connection conn = util.getConnection();//得到数据库连接
        try{
        	
        	String sql = "select * from students where 1=1";
        	if(stu.getId()+""!=""){
        		sql += " and id like \'%"+stu.getId()+"%\'";
        		
        	}
        	
        	if(!stu.getLink().equals("")){
        		sql += " and link like \'%"+stu.getLink()+"%\'";
        		
        	}
        	
        	if(!stu.getPwd().equals("")){
        		sql += " and pwd like \'%"+stu.getPwd()+"%\'";
        	}
        	
        	if(!stu.getRoles().equals("")){
        		sql += " and roles like \'%"+stu.getRoles()+"%\'";
        	}
        	
        	if(!stu.getUid().equals("")){
        		sql += " and uid like \'%"+stu.getUid()+"%\'";
        	}
        	
        	if(!stu.getUsername().equals("")){
        		sql += " and username like \'%"+stu.getUsername()+"%\'";
        	}
      	  
      	   System.out.println("进入方法");
      	   System.out.println(sql);
      	   PreparedStatement pstmt = conn.prepareStatement(sql);
      	   
      	   System.out.println(pstmt);
      	   
      	   ResultSet rs = (ResultSet) pstmt.executeQuery();//查询得到结果集
      	   
      	   System.out.println(pstmt);
      	   
      	   return rs;	   
      	   
      		
      	}catch(Exception e){
      		e.printStackTrace();
      		System.out.println("模糊查询抛出异常");
      	}
        
        return null;

    }
    
    public void add(StudentBean stu) {
 	   DBUtil util = new DBUtil();
 	   Connection conn = util.getConnection();//得到数据库连接
 	   
        try{
     	   
     	   System.out.println("进入方法");
     	   conn.setAutoCommit(true);//这里必须设置为true自动提交，后面才能设置rollback
     	   String sql = "insert into students (id,link,pwd,roles,uid,username) values(?,?,?,?,?,?)";
     	   System.out.println(sql);
     	   PreparedStatement pstmt = conn.prepareStatement(sql);
     	   
     	   pstmt.setInt(1,stu.getId());
     	   
     	   pstmt.setString(2,stu.getLink());
     	   
     	   pstmt.setString(3,stu.getPwd());
     	   
     	   pstmt.setString(4,stu.getRoles());
     	   
     	   pstmt.setString(5,stu.getUid());
     	   
     	   pstmt.setString(6,stu.getUsername());
     	   
     	   pstmt.executeUpdate();//执行sql插入语句
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

}
