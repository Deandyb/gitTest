package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimpl.UserDaoimpl1;
import entity.Domain;
import entity.User;

@WebServlet(urlPatterns="/cheakDomainName")
public class CheackDomain extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String suffix = req.getParameter("suffix");
		String name = req.getParameter("name");
		System.out.println(suffix);
		System.out.println(name);
		User user = (User) req.getSession().getAttribute("user");
		System.out.println(user);
		if (user==null||name==null) {
			resp.getWriter().write("2");
			System.out.println("C");
//			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}else {
			System.out.println("D");
			UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
			Domain domain = userDaoimpl.DaoCxDomain(name, suffix);
			if(domain==null){
				System.out.println("a");
				resp.getWriter().write("0");
				int userid = user.getUserid();
				System.out.println(userid);
				userDaoimpl.DaoRegisterDomain(userid, name, suffix);
			}else{
				System.out.println("b");
				resp.getWriter().write("1");				
			}
		}
	}
}
