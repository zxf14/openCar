package com.weishang.my.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weishang.my.pojo.GoodsPojo;
import com.weishang.my.pojo.ReceptAndCms;
import com.weishang.my.service.OtherExtendService;
import com.weishang.my.service.ShopService;
import com.weishang.pojo.Cms;
import com.weishang.pojo.Recept;
import com.weishang.service.UserService;
import com.weishang.tool.CommonUrl;
import com.weishang.tool.ReturnJspUrl;
@WebServlet(displayName="帮助中心",name="Help",urlPatterns="/pc/help")
public class Help extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public Help() {
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
		UserService us=new UserService();
		ShopService ss=new ShopService();
		OtherExtendService os=new OtherExtendService();
		
		ReturnJspUrl rj=new ReturnJspUrl();
		String menuId=request.getParameter("menuId");//获取菜单id
		Recept recept=null;
		String jsp="";
		try {
			recept=us.getReceptById(menuId);
			request.setAttribute("recept",recept);
			request.setAttribute("menuId",menuId);
			jsp=rj.url(request, "/page/"+recept.getJspMod()+".jsp");
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		} catch (NumberFormatException e) {
			jsp= "/404.jsp";//前台的手机jsp页面
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}catch (SQLException e) {
			jsp= "/404.jsp";//前台的手机jsp页面
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}catch (NullPointerException e) {
			jsp= "/404.jsp";//前台的手机jsp页面
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
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
		doGet( request,  response);
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
