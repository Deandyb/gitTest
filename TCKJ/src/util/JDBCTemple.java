package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class JDBCTemple {
	//�ص���������������϶����������Ǹ�
		public void query(String sql,ParamSeter paramSet,ResultSeter rseter) throws SQLException{
			//��������
			Connection conn = C3p0.getconnection();
			//�½�������
			PreparedStatement stmt = conn.prepareStatement(sql);
			//��ռλ���Ÿ�ֵ������sql��̬������ֵ
			//��ͬ��sql��䣬���õ���Ϊ��һ����
			paramSet.setValue(stmt);
			ResultSet rs = stmt.executeQuery();
			//���������������ͨ�÷�����������ȥʵ����д
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
