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
	//服务器按照utf-8的编码解析请求
		req.setCharacterEncoding("utf-8");
		//服务器告诉浏览器，我的内容是html，编码是utf-8
		resp.setContentType("text/html;charset=utf-8");
		String username = req.getParameter("user");
		String password = req.getParameter("password");		
		String tel = req.getParameter("phone");
		String email = req.getParameter("email");
//		System.out.println(username+password+tel+email);
		UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
		int row = userDaoimpl.DaoRegister(username, password, tel, email);
		if(row==0){
			resp.getWriter().write("数据库异常，注册失败，请联系管理员！");
		}else {
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}		
}
}
