package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimpl.UserDaoimpl1;
import entity.Domain;
import entity.User;

@WebServlet(urlPatterns="/domain1")
public class RegisterDomain1 extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("domaininput");
		String suffix = req.getParameter("domainselect");
		User user = (User) req.getSession().getAttribute("user");
		if(user==null){
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}else{
			int userid = user.getUserid();
			UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
			userDaoimpl.DaoRegisterDomain(userid, name, suffix);
			List<Domain> domain = userDaoimpl.SeleDaoDomain();
			req.getSession().setAttribute("domain", domain);
			req.getRequestDispatcher("manage_domain.jsp").forward(req, resp);
//			resp.getWriter().write("×¢²á³É¹¦£¡");
		}	
	}
}