package com.weishang.my.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weishang.pojo.Recept;
import com.weishang.service.UserService;
import com.weishang.tool.ReturnJspUrl;
@WebServlet(displayName="企业服务",name="EnterpriseService",urlPatterns="/service")
public class EnterpriseService extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EnterpriseService() {
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
