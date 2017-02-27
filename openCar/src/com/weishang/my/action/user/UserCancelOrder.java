package com.weishang.my.action.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.weishang.my.pojo.GoodsOrder;
import com.weishang.my.pojo.OrderMoneyRecord;
import com.weishang.my.pojo.User;
import com.weishang.my.service.ShopService;
import com.weishang.my.tool.StringUtil;
@WebServlet(displayName="用户退款",name="UserCancelOrder",urlPatterns="/user/cancelOrder")
public class UserCancelOrder extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public UserCancelOrder() {
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
		String order_id=request.getParameter("order_id");
		Object ordinary_user=session.getAttribute("ordinary_user");
		String json="";
		
		if(ordinary_user==null){//非登陆用户
			out.print("{\"tip\":\"请先登录\"}");
		}else{//登陆用户
			String flag="";
			User user=(User)ordinary_user;
			GoodsOrder go=null;
			try {
				go = ss.getGoodsOrderById(Integer.parseInt(order_id));
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(go.getUser_id().equals(user.getId())){//自己才能取消订单
				flag=ss.updateOrderFlag(Integer.parseInt(order_id),4);
				List<OrderMoneyRecord> moneyList=null;
				try {
					moneyList = ss.getOrderMoneyRecordByOrderId(Integer.parseInt(order_id));
				} catch (NumberFormatException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Double money=0.0;
				for(int i=0;i<moneyList.size();i++){
					OrderMoneyRecord record=moneyList.get(i);
					if(record.getFlag().equals(1) && !record.getSource().equals(6) && !record.getSource().equals(7)){
						money+=Double.parseDouble(record.getMoney());
						ss.updateuserCardFlag(record.getId(),2);
					}
				}
				String timeStr=StringUtil.getTimeStr();
				String nowStr[]=timeStr.split("-");
				ss.updateUserMoney(user.getId(),money);
				ss.addRechargeRecord(user.getId(),3, 1, user.getCard(), money.toString(), Integer.parseInt(nowStr[0]), Integer.parseInt(nowStr[1]), Integer.parseInt(nowStr[2]),2,null,null,0,1);
				if(flag.equals("ok")){
					json="{\"tip\":\"订单取消成功\"}";
				}else{
					json="{\"tip\":\"订单取消失败\"}";
				}
			}else{
				json="{\"tip\":\"此单并非您的单，您不能做次操作\"}";
			}
			out.print(json);
			out.flush();
			out.close();
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
