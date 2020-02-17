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

@WebServlet(urlPatterns="/deledomain")
public class DeleDomainServlet extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doPost(req, resp);
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String id = req.getParameter("id");
	if (id=="") {
		resp.getWriter().write("²Ù×÷Ê§°Ü£¡");
	}else {
		UserDaoimpl1 userDaoimpl = new UserDaoimpl1();		
		int row = userDaoimpl.DaoDeleDomain(Integer.parseInt(id));
		List<Domain> domain = userDaoimpl.SeleDaoDomain();
		req.getSession().setAttribute("domain", domain);
		req.getRequestDispatcher("manage_domain.jsp").forward(req, resp);
	}
	
	}
}
