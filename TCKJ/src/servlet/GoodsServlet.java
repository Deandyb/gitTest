package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daoimpl.UserDaoimpl1;
@WebServlet(urlPatterns="/goods")
public class GoodsServlet extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doPost(req, resp);
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setHeader("Content-type", "text/html;charset=UTF-8");
		resp.setCharacterEncoding("utf-8"); 
		String goodsname = req.getParameter("goodsname");
		String userid = req.getParameter("userid");
		String price = req.getParameter("price");
		
//		System.out.println(goodsname+userid+price);
		if(userid==""){
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}else {
			HttpSession session = req.getSession();
			session.setAttribute("goodsname", goodsname);
			
			session.setAttribute("price", price);
			req.getRequestDispatcher("address.jsp").forward(req, resp);			
		}
		
	}
}
