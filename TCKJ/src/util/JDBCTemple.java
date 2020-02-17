package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class JDBCTemple {
	//回调函数，这个方法肯定不如昨天那个
		public void query(String sql,ParamSeter paramSet,ResultSeter rseter) throws SQLException{
			//建立连接
			Connection conn = C3p0.getconnection();
			//新建适配器
			PreparedStatement stmt = conn.prepareStatement(sql);
			//给占位符号赋值，根据sql动态的设置值
			//不同的sql语句，设置的行为不一样的
			paramSet.setValue(stmt);
			ResultSet rs = stmt.executeQuery();
			//定义个处理结果集的通用方法，让子类去实现重写
			rseter.handler(rs);
			C3p0.close(rs, stmt, conn);
		}	
		
		public int update(String sql,ParamSeter paramSet){
			Connection conn = null;
			int row=0;
			try {
				conn = C3p0.getconnection();
				PreparedStatement stmt = conn.prepareStatement(sql);
				paramSet.setValue(stmt);
				row = stmt.executeUpdate();
				C3p0.close(null, stmt, conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return row;
		}
}
