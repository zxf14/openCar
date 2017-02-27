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

import com.weishang.my.pojo.GoodsOrder;
import com.weishang.my.pojo.User;
import com.weishang.my.service.ComplexService;
import com.weishang.my.service.ShopService;
import com.weishang.tool.CommonUrl;
@WebServlet(displayName="用户订单",name="PcUserOrder",urlPatterns="/pc/pcUserOrder")
public class PcUserOrder extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public PcUserOrder() {
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
		ShopService ss=new ShopService();
		ComplexService cs=new ComplexService();
		
		HttpSession session = request.getSession(true);
		Object ordinary_user=session.getAttribute("ordinary_user");
		User user=null;
		if(ordinary_user==null){//非登陆用户
			RequestDispatcher rd = request.getRequestDispatcher("/template/default/page/user_login.jsp");
			rd.forward(request,response);
		}else{//登陆用户
			user=(User)ordinary_user;
			List<GoodsOrder> OrderList=null;
			String tem_flag=request.getParameter("flag");
			Integer flag=0;
			Integer sum=0;
			String pageNoTem=request.getParameter("page") ;
			Integer pageNo=0;
			String pageSizeTem=CommonUrl.getValue("admin_pahe");
			Integer pageSize=Integer.parseInt(pageSizeTem);
			if(pageNoTem!=null){
				pageNo=Integer.parseInt(pageNoTem);
			}else{
				pageNo=1;
			}
			if(tem_flag!=null && !tem_flag.equals("")){
				flag=Integer.parseInt(tem_flag);
			}
			try {
				OrderList = cs.getGoodsOrderListByUserForPc(user.getId(),flag,pageNo,pageSize);
				sum=ss.getGoodsOrderByUserCount(user.getId(),flag);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.setAttribute("OrderList",OrderList);
			if(sum%pageSize==0){
				request.setAttribute("sum",sum/pageSize);
			}else{
				request.setAttribute("sum",sum/pageSize+1);
			}
			request.setAttribute("pageNo",pageNo);
			RequestDispatcher rd = request.getRequestDispatcher("/template/default/page/user/user_order.jsp");
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
