package com.mtica.dao;
import java.sql.*;
import com.mtica.bean.User;
public class UserDao {
public static Connection getConnection() {
	Connection con=null;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@10.199.20.3:1521:mother","mtcaa2230","mtcaa2230");
	}
	
	catch(Exception e) {
		System.out.println(e);
}
	return con;
}
public static int save(User u) {
	int status=0;
	try {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement(
	"insert into register(id,name,password) values(?,?,?)");
		ps.setInt(1, u.getId());
		ps.setString(2, u.getName());
		ps.setString(3, u.getPassword());
		status=ps.executeUpdate();
	}
	catch(Exception e) {
		System.out.println(e);
	}
	return status;
}
}
