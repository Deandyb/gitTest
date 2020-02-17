package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import daoimpl.UserDaoimpl1;

@WebServlet(urlPatterns="/contact")
public class ContactServlet extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setCharacterEncoding("utf-8");
	resp.setContentType("text/html;charset=utf-8");	
	String name = req.getParameter("name");
	String tel = req.getParameter("tel");
	String email = req.getParameter("email");
	String message = req.getParameter("textarea");
	System.out.println(tel+name+email+message);
	UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
	int row = userDaoimpl.DaoInsertMessage(name, message, tel, email);
	req.getRequestDispatcher("index.jsp").forward(req, resp);
	
}
}
