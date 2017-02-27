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

import com.weishang.pojo.Cms;
import com.weishang.pojo.Template;
import com.weishang.service.AdminService;
import com.weishang.service.UserService;
import com.weishang.tool.IsPhone;
@WebServlet(displayName="获取单页信息",name="LookPageDetail",urlPatterns="/page")
public class LookPageDetail extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LookPageDetail() {
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
		AdminService as=new AdminService();
		UserService us=new UserService();
		String id=request.getParameter("id");
		String flag=request.getParameter("flag");
		Template tpl=null;
		Cms cms=null;
		Cms cms_up=null;
		Cms cms_down=null;
		String jsp="";
		if(id==null || id.equals("0")){
			jsp= "/404.jsp";//前台的手机jsp页面
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}else{
			try {
				cms = as.getCmsById(Integer.parseInt(id));
				cms_up=us.getUpOrNext(cms.getId(),cms.getMod(), 1);
				cms_down=us.getUpOrNext(cms.getId(),cms.getMod(),2);
				tpl =us.getTemplate();
				if(flag==null || flag.equals("")){
					jsp= "/template/"+tpl.getFolder()+"/page/page_detail.jsp";
	
				}else{
					jsp= "/template/"+tpl.getFolder()+"/page/news_detail.jsp";
				}
				request.setAttribute("flag",flag);
				request.setAttribute("mod_id",cms.getMod());
				request.setAttribute("cms",cms);
				request.setAttribute("cms_up",cms_up);
				request.setAttribute("cms_down",cms_down);
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
