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
import entity.Goods1;
import entity.Goods2;
import entity.Goods3;
import entity.Goods4;
import entity.User;
@WebServlet(urlPatterns="/login")
public class LoginServlet extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String username = req.getParameter("username");
	String password = req.getParameter("password");
	UserDaoimpl1 userDaoimpl = new UserDaoimpl1();
	User user = userDaoimpl.DaoDl(username, password);
//	System.out.println(user.getEmail());
	if(user==null){
		req.getRequestDispatcher("Error.jsp").forward(req, resp);
	}else {
		HttpSession session = req.getSession();
		session.setAttribute("user", user);
		int type = user.getType();
		if (type==0) {
			req.getRequestDispatcher("logining.jsp").forward(req, resp);
		}else {
			req.getRequestDispatcher("manage.jsp").forward(req, resp);
		}
//		List<Goods1> goods1 = userDaoimpl.DaoGoods1();	
//		List<Goods2> goods2 = userDaoimpl.DaoGoods2();
//		List<Goods3> goods3 = userDaoimpl.DaoGoods3();
//		List<Goods4> goods4 = userDaoimpl.DaoGoods4();		
//		session.setAttribute("goods1", goods1);
//		session.setAttribute("goods2", goods2);
//		session.setAttribute("goods3", goods3);
//		session.setAttribute("goods4", goods4);
		
	}
}
}
