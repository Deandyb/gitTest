package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import daoimpl.UserDaoimpl1;
import entity.User;
@WebServlet(urlPatterns="/checkUsername.do")
public class CheakusenameServlet extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name = req.getParameter("username");
//	System.out.println(name);
	UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
	User user = userDaoimpl.DaoCx(name);
	if(user!=null){
		resp.getWriter().write("Y");
	}else {
		resp.getWriter().write("");
	}	
}
}
