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

@WebServlet(urlPatterns="/manage_order")
public class ManageOrder extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doPost(req, resp);
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
	List<Order> orderlist1 = userDaoimpl.SeleOrder();
	req.getSession().setAttribute("orderlist1", orderlist1);
	req.getRequestDispatcher("manage_order.jsp").forward(req, resp);
	}
}
