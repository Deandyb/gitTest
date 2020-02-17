package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daoimpl.UserDaoimpl1;
import entity.Order;
import entity.User;

@WebServlet(urlPatterns="/order")
public class OrderServlet extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setCharacterEncoding("utf-8");
	resp.setContentType("text/html;charset=utf-8");	
	String username = req.getParameter("username");
	String tel = req.getParameter("tel");
	String email = req.getParameter("email");
	String address = req.getParameter("address");
	HttpSession session = req.getSession();
	String goodsname = (String) session.getAttribute("goodsname");
	User user = (User) session.getAttribute("user");
	int userid = user.getUserid();
	String price = (String) session.getAttribute("price");
//	System.out.println(goodsname+userid+price);
//	System.out.println(username+tel+email+address+userid);
	UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
	int row = userDaoimpl.DaoOrder1(userid, username, tel, email, address, goodsname, price);
	if(row!=0){
		List<Order> order = userDaoimpl.DaoOrderMessage(userid);
		req.getSession().setAttribute("ordermessage", order);
		req.getRequestDispatcher("order.jsp").forward(req, resp);
	}else{
		resp.getWriter().write("");
	}
}
}
