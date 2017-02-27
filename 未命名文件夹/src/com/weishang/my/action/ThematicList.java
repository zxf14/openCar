package com.weishang.my.action;

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

import com.weishang.my.pojo.GoodsPojo;
import com.weishang.my.pojo.ThematicActivity;
import com.weishang.my.service.ShopService;
import com.weishang.my.tool.StringUtil;
import com.weishang.pojo.Recept;
import com.weishang.service.UserService;
import com.weishang.tool.CommonUrl;
import com.weishang.tool.ReturnJspUrl;
@WebServlet(displayName="专题活动列表",name="ThematicList",urlPatterns="/jingcaihuodong")
public class ThematicList extends HttpServlet {


	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ThematicList() {
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
		ReturnJspUrl rj=new ReturnJspUrl();
		String menuId=request.getParameter("menuId");//获取菜单id
		Recept recept=null;
		String jsp="";
		try {
			List<ThematicActivity> activityList=null;
			String pageNoTem=request.getParameter("page") ;
			Integer sum=0;
			Integer pageNo=0;
			if(pageNoTem!=null){
				pageNo=Integer.parseInt(pageNoTem);
			}else{
				pageNo=1;
			}
			String pageSizeTem=CommonUrl.getValue("user_page");
			Integer pageSize=Integer.parseInt(pageSizeTem);
			
			activityList=ss.goThematicActivity(pageNo, pageSize,2,StringUtil.getTimeStr());
			sum=ss.goThematicActivityCount(2, StringUtil.getTimeStr());
			
			recept=us.getReceptById(menuId);
			request.setAttribute("recept",recept);
			request.setAttribute("menuId",menuId);
			request.setAttribute("pageNo",pageNo);
			request.setAttribute("activityList",activityList);
			if(sum%pageSize==0){
				request.setAttribute("sum",sum/pageSize);
			}else{
				request.setAttribute("sum",sum/pageSize+1);
			}

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
		doGet(request,response);
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
