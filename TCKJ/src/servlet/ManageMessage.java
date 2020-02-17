package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimpl.UserDaoimpl1;
import entity.Message;

@WebServlet(urlPatterns="/manage_message")
public class ManageMessage extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doPost(req, resp);
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
	List<Message> messageslist = userDaoimpl.SeleMessage();
//	System.out.println(messageslist);
	req.getSession().setAttribute("messageslist", messageslist);	
	req.getRequestDispatcher("manage_message.jsp").forward(req, resp);
	}
}
