package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimpl.UserDaoimpl1;

@WebServlet(urlPatterns="/register.do")
public class RegisterServlet extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	//����������utf-8�ı����������
		req.setCharacterEncoding("utf-8");
		//������������������ҵ�������html��������utf-8
		resp.setContentType("text/html;charset=utf-8");
		String username = req.getParameter("user");
		String password = req.getParameter("password");		
		String tel = req.getParameter("phone");
		String email = req.getParameter("email");
//		System.out.println(username+password+tel+email);
		UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
		int row = userDaoimpl.DaoRegister(username, password, tel, email);
		if(row==0){
			resp.getWriter().write("���ݿ��쳣��ע��ʧ�ܣ�����ϵ����Ա��");
		}else {
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}		
}
}
