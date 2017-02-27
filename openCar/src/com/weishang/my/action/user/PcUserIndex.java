package com.weishang.my.action.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.weishang.my.pojo.User;
import com.weishang.my.service.ShopService;
import com.weishang.pojo.Template;
import com.weishang.service.UserService;
@WebServlet(displayName="用户中心",name="PcUserIndex",urlPatterns="/pc/pcUserIndex")
public class PcUserIndex extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PcUserIndex() {
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
		UserService us=new UserService();
		HttpSession session = request.getSession(true);
		Object ordinary_user= session.getAttribute("ordinary_user");
		Template tpl=null;
		try {
			tpl = us.getTemplate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(ordinary_user==null){
			RequestDispatcher rd = request.getRequestDispatcher("/template/"+tpl.getFolder()+"/page/user_login.jsp");
			rd.forward(request,response);
		}else{
			ShopService ss=new ShopService();
			User user=(User)ordinary_user;
			User tem_user=null;
			try {
				 tem_user=ss.getUserById(user.getId());
			} catch (SQLException e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session.setAttribute("ordinary_user",tem_user);
			RequestDispatcher rd = request.getRequestDispatcher("/template/"+tpl.getFolder()+"/page/user/userCenter.jsp");
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
