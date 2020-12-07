package dao;

import java.sql.DriverManager;
import vo.User;


public class UserDao {
	public User get(String userName) {
		User user = null;
		try{
			Class.forName("com.mysql.jdbc.Driver"); //¼ÓÔØÇý¶¯
			
			java.sql.Connection con =DriverManager.getConnection(
					"jdbc:mysql://localhost/test1?useUnicode=true&characterEncoding=utf-8",
					"root","149920");
			String sql= "select * from t_user where username=?";
			java.sql.PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, userName);
			
			java.sql.ResultSet rs = pst.executeQuery();
			
			if(rs.next()){
				user=new User(rs.getString("userName"),
						rs.getString("password")
						,rs.getString("chrName"));
			}
			con.close();
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return user;
		
	}

}
