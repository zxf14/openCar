package com.weishang.my.action.user;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.weishang.my.pojo.Active;
import com.weishang.my.pojo.Address;
import com.weishang.my.pojo.GoodsPojo;
import com.weishang.my.pojo.GoodsType;
import com.weishang.my.pojo.User;
import com.weishang.my.pojo.UserIntegel;
import com.weishang.my.service.ShopService;
import com.weishang.my.tool.StringUtil;
import com.weishang.pojo.Admin;
import com.weishang.tool.AbstractServlet;
import com.weishang.tool.CommonUrl;
import com.weishang.tool.ReturnJspUrl;
@WebServlet(displayName="添加外聘员工",name="CommonUserAction",urlPatterns="/user/commonUserAction")
public class CommonUserAction extends AbstractServlet{
	/**
	 * class版本号码
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 测试一个java类实现多个servlet
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void goTest(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(request.getParameter("params"));
	}
	
	public void addActiveOne(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(true);
		ShopService ss=new ShopService();
		Object ordinary_user=session.getAttribute("ordinary_user");
		if(ordinary_user==null){//非登陆用户
			RequestDispatcher rd = request.getRequestDispatcher("/template/default/page/login.jsp");
			rd.forward(request,response);
		}else{//登陆用户
			User user=null;
			user=(User)ordinary_user;
			String active_id=request.getParameter("active_id");
			List<GoodsType> typeList=null;
			Active active=null;
			List<Address> addressList=null;
			try {
//				typeList = ss.getGoodsTypeForActive(active_id);
//				active=ss.getActivebyId(active_id);
				addressList=ss.getAddressByUser(user.getId());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ReturnJspUrl reJsp=new ReturnJspUrl();
			String jsp=reJsp.url(request,"page/user/add_active.jsp");
			request.setAttribute("typeList",typeList);
			request.setAttribute("active",active);
			request.setAttribute("addressList",addressList);
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}
	}
	
	/**
	 * 活动订单确认信息
	 */
	public void addActiveTwo(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(true);
		ShopService ss=new ShopService();
		Object ordinary_user=session.getAttribute("ordinary_user");
		if(ordinary_user==null){//非登陆用户
			RequestDispatcher rd = request.getRequestDispatcher("/template/default/page/login.jsp");
			rd.forward(request,response);
		}else{//登陆用户
			Active active=null;
			Address address=null;
			String active_id=request.getParameter("active_id");
			String address_id=request.getParameter("address_id");
			String starttime=request.getParameter("starttime");
			String endtime=request.getParameter("endtime");
			try {
				address=ss.getAddressById(Integer.parseInt(address_id));
				//active=ss.getActivebyId(active_id);
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("address",address);
			request.setAttribute("starttime",starttime);
			request.setAttribute("endtime",endtime);
			request.setAttribute("active_id",active_id);
			request.setAttribute("active",active);
			ReturnJspUrl reJsp=new ReturnJspUrl();
			String jsp=reJsp.url(request,"page/user/add_active_two.jsp");
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}
	}
	
	/**
	 * 确认订单信息
	 */
	public void addActiveThree(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(true);
		ShopService ss=new ShopService();
		Object ordinary_user=session.getAttribute("ordinary_user");
		if(ordinary_user==null){//非登陆用户
			RequestDispatcher rd = request.getRequestDispatcher("/template/default/page/login.jsp");
			rd.forward(request,response);
		}else{//登陆用户
			String json="";
			//MyService ms=new MyService();
			Active active=null;
			String active_id=request.getParameter("active_id");
			String address_id=request.getParameter("address_id");
			String starttime=request.getParameter("starttime");
			String endtime=request.getParameter("endtime");
			Integer order_id=null;
			List<GoodsType> typeList=null;
//			try {
//				active=ss.getActivebyId(active_id);
//				typeList = ss.getGoodsTypeForActive(active_id);
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			User user=(User)ordinary_user;
			//order_id= ss.addGoodsOrder(3,1,1, 0, starttime, endtime, "", user.getId(),null,null,null, active.getPrice(),2, 0, Integer.parseInt(address_id),1,"3",user.getName(),user.getId(),typeList.get(0).getId(),1,"");
			for(int i=0;i<typeList.size();i++){
				//ss.addServerAndOrder(typeList.get(i).getId().toString(),order_id.toString());
			}
			if(Double.parseDouble(active.getPrice())>user.getMoney()){//自己的钱少于扣费金额
				json="\"扣费失败，用户的金额小于要扣除的金额\"";
			}else{
				String flag="";
				//String flag=ms.updateUserMoney(user.getTel(),active.getPrice(),"reduce");
				String timeStr=StringUtil.getTimeStr();
				String nowStr[]=timeStr.split("-");
				if(flag.equals("ok")){
					ss.updateplayFlag(order_id, 1);
					//ms.addRechargeRecord(user.getId(), 2, 1, user.getCard(), active.getPrice(), Integer.parseInt(nowStr[0]), Integer.parseInt(nowStr[1]), Integer.parseInt(nowStr[2]),1,0,null,order_id);
					json="\"扣费成功，您账户上面减少了“"+active.getPrice()+"元”\"";
				}else{
					json="\"扣费失败，系统发生未知错误\"";
				}
			}
			request.setAttribute("tip",json);
			ReturnJspUrl reJsp=new ReturnJspUrl();
			String jsp=reJsp.url(request,"page/tip.jsp");
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}
	}
	
	/**
	 * 获取订单的全部服务
	 */
	public void getGoodsTypeByActive(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(true);
		ShopService ss=new ShopService();
		Object ordinary_user=session.getAttribute("ordinary_user");
		if(ordinary_user==null){//非登陆用户
			RequestDispatcher rd = request.getRequestDispatcher("/template/default/page/user_login.jsp");
			rd.forward(request,response);
		}else{//登陆用户
			String tem_order_id=request.getParameter("order_id");
			Integer order_id=0;
			if(tem_order_id!=null && !tem_order_id.equals("")){
				order_id=Integer.parseInt(tem_order_id);
			}
			List<GoodsPojo> goodsList=null;
			try {
				goodsList=ss.getGoodsPojoByOrder(order_id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ReturnJspUrl reJsp=new ReturnJspUrl();
			String jsp=reJsp.url(request,"page/user/order_all_goods.jsp");
			request.setAttribute("goodsList",goodsList);
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}
	}
	
	/**
	 * 获取会员积分列表
	 */
	public void goUserIntegel(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(true);
		//MyService ms=new MyService();
		Object ordinary_user=session.getAttribute("ordinary_user");
		if(ordinary_user==null){//非登陆用户
			RequestDispatcher rd = request.getRequestDispatcher("/template/default/page/login.jsp");
			rd.forward(request,response);
		}else{//登陆用户
			String pageNoTem=request.getParameter("page") ;
			Integer pageNo=0;
			String pageSizeTem=CommonUrl.getValue("admin_pahe");
			Integer pageSize=Integer.parseInt(pageSizeTem);
			User user=null;
			user=(User)ordinary_user;
			List<UserIntegel> integelList=null;
			int sum=0;
			if(pageNoTem!=null){
				pageNo=Integer.parseInt(pageNoTem);
			}else{
				pageNo=1;
			}
//			try {
//				integelList = ms.goUserIntegel(user.getId(), pageNo, pageSize);
//				///sum=ms.goUserIntegelCount(user.getId());
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			ReturnJspUrl reJsp=new ReturnJspUrl();
			String jsp=reJsp.url(request,"page/user/user_integel.jsp");
			request.setAttribute("integelList",integelList);
			request.setAttribute("pageNo",pageNo);
			if(sum%pageSize==0){
				request.setAttribute("sum",sum/pageSize);
			}else{
				request.setAttribute("sum",sum/pageSize+1);
			}
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}
	} 
}
