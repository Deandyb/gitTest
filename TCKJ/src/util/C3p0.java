package util;



import java.beans.PropertyVetoException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3p0 {
	//����һ�����ӳ�
	//����7������
	private static ComboPooledDataSource datasource;
	private static String DRIVER;
	private static String URL;
	private static String USERNAME;
	private static String PASSWORD;
	private static String MINSIZE;
	private static String MAXSIZE;
	private static String INITIALSIZE;
	static{
	
	Properties p = new Properties();
	
//	File file = new File("C:/Users/Administrator/workspace/workspace/TCKJ/src/util/pz.properties");
	File file = new File("C:\\Users\\dyb\\IdeaProjects\\TCKJ\\src\\util\\pz.properties");
	datasource = new ComboPooledDataSource();
	//���������ļ�
	try {
		p.load(new FileReader(file));
		DRIVER = p.getProperty("driver");
		URL=p.getProperty("url");
		USERNAME=p.getProperty("username");
		PASSWORD=p.getProperty("password");
		MINSIZE=p.getProperty("minsize");
		MAXSIZE=p.getProperty("maxsize");
		INITIALSIZE=p.getProperty("Initialsize");
		try {
			datasource.setDriverClass(DRIVER);
			datasource.setJdbcUrl(URL);
			datasource.setUser(USERNAME);
			datasource.setPassword(PASSWORD);
			datasource.setMinPoolSize(Integer.parseInt(MINSIZE));
			datasource.setMaxPoolSize(Integer.parseInt(MAXSIZE));
			datasource.setInitialPoolSize(Integer.parseInt(INITIALSIZE));
		} catch (PropertyVetoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	} catch (FileNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
	public static  Connection getconnection() throws SQLException {
		Connection connection = datasource.getConnection();
		return connection;
	}
	
	//�ر���Դ�Ĺ��ܣ�����������ӣ�ͨ���ķ�����query��update
		public static void close(ResultSet rs,PreparedStatement stmt,Connection conn ){
			//1.�ȹر�rs
			//2.�ر�������
			//3.�ر�����
			//��һ����ȫ������Ϊ�յ�ʱ��رջᱨ��
			if(rs!=null){
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if(stmt!=null){
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

}
