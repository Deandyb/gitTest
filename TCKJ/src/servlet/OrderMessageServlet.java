package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoimpl.UserDaoimpl1;
import entity.Order;

@WebServlet(urlPatterns="/ordermessage")
public class OrderMessageServlet extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doPost(req, resp);
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userid = req.getParameter("userid");
		System.out.println(userid);
		UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
		List<Order> order = userDaoimpl.DaoOrderMessage(Integer.parseInt(userid));
//		System.out.println("order????????"+order);
		req.getSession().setAttribute("ordermessage", order);
//		req.getSession().setAttribute("test", "123456");
		req.getRequestDispatcher("order.jsp").forward(req, resp);
	}
}
