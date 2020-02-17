package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimpl.UserDaoimpl1;
import entity.User;
@WebServlet(urlPatterns="/updatepwd")
public class UpdatePasswordServlet extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String password = req.getParameter("password");
	User user = (User) req.getSession().getAttribute("user");
	int userid = user.getUserid();
	System.out.println(userid+password);
	UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
	int row = userDaoimpl.DaoPassword(userid, password);
	req.getRequestDispatcher("login.jsp").forward(req, resp);
}
}
