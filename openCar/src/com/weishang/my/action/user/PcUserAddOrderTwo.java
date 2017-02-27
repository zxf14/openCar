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

import com.weishang.my.pojo.Address;
import com.weishang.my.pojo.GoodsType;
import com.weishang.my.pojo.User;
import com.weishang.my.service.ShopService;
@WebServlet(displayName="添加订单第二部",name="PcUserAddOrderTwo",urlPatterns="/pc/pcUserAddOrderTwo")
public class PcUserAddOrderTwo extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PcUserAddOrderTwo() {
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
		HttpSession session = request.getSession(true);
		Object ordinary_user= session.getAttribute("ordinary_user");
		if(ordinary_user==null){
			RequestDispatcher rd = request.getRequestDispatcher("/template/default/page/login.jsp");
			rd.forward(request,response);
		}else{
			User user=(User)ordinary_user;
			ShopService ss=new ShopService();
			String goodsTypeFlag=request.getParameter("goodsTypeFlag");
			String goodsTypeId=request.getParameter("goodsTypeId");
			String orderPrice=request.getParameter("orderPrice");
			String gradeName=request.getParameter("gradeName");
			String address_id=request.getParameter("address_id");
			String starttime=request.getParameter("starttime");
			String endtime=request.getParameter("endtime");
			String desc=request.getParameter("desc");
			Address address=null;
			GoodsType goodsType=null;
			Integer myMoneyFlag=0;
			try {
				address=ss.getAddressById(Integer.parseInt(address_id));
				goodsType=ss.getGoodsTypeById(Integer.parseInt(goodsTypeId));
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(goodsTypeFlag.equals("2")){
				if(user.getMoney()>Double.parseDouble(orderPrice)){
					myMoneyFlag=1;
				}
			}
			request.setAttribute("desc",desc);
			request.setAttribute("myMoneyFlag",myMoneyFlag);
			request.setAttribute("address",address);
			request.setAttribute("goodsType",goodsType);
			request.setAttribute("starttime",starttime);
			request.setAttribute("endtime",endtime);
			request.setAttribute("goodsTypeFlag",goodsTypeFlag);
			request.setAttribute("goodsTypeId",goodsTypeId);
			request.setAttribute("orderPrice",orderPrice);
			request.setAttribute("gradeName",gradeName);
			RequestDispatcher rd = request.getRequestDispatcher("/template/default/page/user/order_pay.jsp");
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
