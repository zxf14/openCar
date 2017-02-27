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

import com.weishang.my.pojo.ThematicActivity;
import com.weishang.my.service.ShopService;
import com.weishang.pojo.Cms;
import com.weishang.pojo.Template;
import com.weishang.service.AdminService;
import com.weishang.service.UserService;
import com.weishang.tool.IsPhone;
@WebServlet(displayName="专题活动列表",name="ThematicPage",urlPatterns="/huodong")
public class ThematicPage extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ThematicPage() {
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
		ShopService ss=new ShopService();
		UserService us=new UserService();
		String tem_id=request.getParameter("id");
		Integer id=0;
		Template tpl=null;
		ThematicActivity activity=null;
		String jsp="";
		if(id==null || id.equals("0")){
			jsp= "/404.jsp";//前台的手机jsp页面
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}else{
			if(tem_id!=null && !tem_id.equals("")){
				id=Integer.parseInt(tem_id);
			}
			try {
				activity =ss.getThematicById(id);
				tpl =us.getTemplate();
				jsp= "/template/"+tpl.getFolder()+"/page/thematic/"+activity.getTemplate()+".jsp";
				request.setAttribute("activity",activity);
				RequestDispatcher rd = request.getRequestDispatcher(jsp);
				rd.forward(request,response);
			} catch (NumberFormatException e) {
				System.out.println("1");
				jsp= "/404.jsp";//前台的手机jsp页面
				RequestDispatcher rd = request.getRequestDispatcher(jsp);
				rd.forward(request,response);
			}catch (SQLException e) {
				System.out.println("2");
				jsp= "/404.jsp";//前台的手机jsp页面
				RequestDispatcher rd = request.getRequestDispatcher(jsp);
				rd.forward(request,response);
			}catch (NullPointerException e) {
			//	e.getMessage();
				jsp= "/404.jsp";//前台的手机jsp页面
				RequestDispatcher rd = request.getRequestDispatcher(jsp);
				rd.forward(request,response);
			}
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
