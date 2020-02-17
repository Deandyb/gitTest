package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimpl.UserDaoimpl1;
import entity.User;

@WebServlet(urlPatterns="/manage_user")
public class ManageUser extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doPost(req, resp);
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
		List<User> userlist = userDaoimpl.SeleUser();
		req.getSession().setAttribute("userlist", userlist);
		req.getRequestDispatcher("manage_user.jsp").forward(req, resp);		
	}
}
