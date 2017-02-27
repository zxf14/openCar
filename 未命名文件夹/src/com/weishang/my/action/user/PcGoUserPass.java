package com.weishang.my.action.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.weishang.my.pojo.Coupon;
import com.weishang.my.pojo.User;
import com.weishang.my.service.ShopService;
@WebServlet(displayName="跳转到修改用户密码",name="PcGoUserPass",urlPatterns="/pc/pcGoUserPass")
public class PcGoUserPass extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PcGoUserPass() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		ShopService ss=new ShopService();
		HttpSession session = request.getSession(true);
		Object ordinary_user=session.getAttribute("ordinary_user");
		if(ordinary_user==null){//非登陆用户
			RequestDispatcher rd = request.getRequestDispatcher("/template/default/page/user_login.jsp");
			rd.forward(request,response);
		}else{//登陆用户
			RequestDispatcher rd = request.getRequestDispatcher("/template/default/page/user/update_pass.jsp");
			rd.forward(request,response);
		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
