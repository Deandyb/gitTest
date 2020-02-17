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
import entity.User;

@WebServlet(urlPatterns="/deleorder")
public class DeleOrder extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
doPost(req, resp);
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDaoimpl1 userDaoimpl1 = new UserDaoimpl1();
		String id = req.getParameter("id");
		int row = userDaoimpl1.DaoDeleOrder(Integer.parseInt(id));
		User user = (User) req.getSession().getAttribute("user");
		int userid = user.getUserid();
		List<Order> orderMessage = userDaoimpl1.DaoOrderMessage(userid);
		req.getSession().setAttribute("ordermessage", orderMessage);
		req.getRequestDispatcher("order.jsp").forward(req, resp);
	}
}
