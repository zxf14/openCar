package com.weishang.my.action;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dom4j.DocumentException;

import com.weishang.my.pojo.Address;
import com.weishang.my.pojo.Aunt;
import com.weishang.my.pojo.AuntImg;
import com.weishang.my.pojo.CombineMarket;
import com.weishang.my.pojo.Comment;
import com.weishang.my.pojo.Coupon;
import com.weishang.my.pojo.GoodsPojo;
import com.weishang.my.pojo.User;
import com.weishang.my.service.CategoryService;
import com.weishang.my.service.ShopService;
import com.weishang.my.tool.SendMessageInfo;
import com.weishang.my.tool.StringUtil;
import com.weishang.pojo.Template;
import com.weishang.service.AdminService;
import com.weishang.service.GetNoCmsService;
import com.weishang.service.UserService;
import com.weishang.tool.AbstractServlet;
import com.weishang.tool.CommonUrl;
import com.weishang.tool.IsPhone;
import com.weishang.tool.Md5Util;
@WebServlet(displayName="前端基本信息",name="FrontAction",urlPatterns="/front")
public class FrontAction extends AbstractServlet{
	private static final long serialVersionUID = 1L;
	ShopService ss=new ShopService();
	AdminService as=new AdminService();
	UserService us=new UserService();
	CategoryService cs=new CategoryService();
	GetNoCmsService ps=new GetNoCmsService();
	
	/**
	 * 获取商品详情
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void goodsDetail(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		String jsp="";
		Template tpl=null;
		String tem_id=request.getParameter("id");
		Integer id=0;
		if(tem_id!=null && !tem_id.equals("")){
			id=Integer.parseInt(tem_id);
		}
		GoodsPojo goods=null;
		try {
			tpl =us.getTemplate();
			goods=ss.getGoodsPojoById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("goods",goods);
		if(goods.getCategory().getId().equals(17)){
			request.setAttribute("special","x");
		}else if(goods.getCategory().getId().equals(15)){
			request.setAttribute("special","h");
		}
		jsp= "/template/"+tpl.getFolder()+"/page/goods_detail.jsp";//前台的手机jsp页面
		RequestDispatcher rd = request.getRequestDispatcher(jsp);
		rd.forward(request,response);
	}
	
	/**
	 * 获取外聘员工详情
	 * @param id外聘员工id
	 */
	public void auntDetail(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		String jsp="";
		Template tpl=null;
		String tem_id=request.getParameter("id");
		Integer id=0;
		if(tem_id!=null && !tem_id.equals("")){
			id=Integer.parseInt(tem_id);
		}
		Aunt aunt=null;
		List<AuntImg> imgList=null;
		List<Comment> commetnList=null;
		try {
			tpl =us.getTemplate();
			aunt=ss.getAuntById(id);
			commetnList=ss.getCommentByCmsId(1, 4, null, id.toString(),"0");
			imgList=ss.getAuntImgByAunt(id, "aunt");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("aunt",aunt);
		request.setAttribute("imgList",imgList);
		request.setAttribute("commetnList",commetnList);
		jsp= "/template/"+tpl.getFolder()+"/page/aunt_detail.jsp";//前台的手机jsp页面
		RequestDispatcher rd = request.getRequestDispatcher(jsp);
		rd.forward(request,response);
	}
	
	/**
	 * 活动下单第一步
	 */
	public void activetiOrderOne(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(true);
		Object ordinary_user=session.getAttribute("ordinary_user");
		Template tpl=null;
		String jsp="";
		try {
			tpl = us.getTemplate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(ordinary_user==null){//非登陆用户
			IsPhone isPhone=new IsPhone();
			if(isPhone.JudgeIsMoblie(request)){
				jsp= "/template/"+tpl.getFolder()+"/page/mobile/user_login.jsp";//前台的手机jsp页面
			}else{
				jsp= "/template/"+tpl.getFolder()+"/page/user_login.jsp";
			}
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}else{//登陆用户
			User user=(User)ordinary_user;
			String integel=CommonUrl.getValue("integel");
			String tem_id=request.getParameter("id");
			Integer id=0;
			if(tem_id!=null && !tem_id.equals("")){
				id=Integer.parseInt(tem_id);
			}
			CombineMarket market=null;
			List<Address> addressList=null;
			try {
				market=ss.getCombineMarketById(id);
				addressList=ss.getAddressByUser(user.getId());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}//获取正在使用的模板
			IsPhone isPhone=new IsPhone();
			if(isPhone.JudgeIsMoblie(request)){
				jsp= "/template/"+tpl.getFolder()+"/page/mobile/activities_order_one.jsp";//前台的手机jsp页面
			}else{
				jsp= "/template/"+tpl.getFolder()+"/page/activities_order_one.jsp";
			}
			request.setAttribute("id",id);
			request.setAttribute("market",market);
			request.setAttribute("integel",integel);
			request.setAttribute("addressList",addressList);
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}
	}
	
	
	
	/**
	 * 下订单第一步
	 */
	public void goodsOrderOne(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(true);
		Object ordinary_user=session.getAttribute("ordinary_user");
		Template tpl=null;
		String jsp="";
		try {
			tpl = us.getTemplate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(ordinary_user==null){//非登陆用户
			IsPhone isPhone=new IsPhone();
			if(isPhone.JudgeIsMoblie(request)){
				jsp= "/template/"+tpl.getFolder()+"/page/user_login.jsp";//前台的手机jsp页面
			}else{
				jsp= "/template/"+tpl.getFolder()+"/page/user_login.jsp";
			}
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}else{//登陆用户
			String special=request.getParameter("sp");//特殊的标志（此处是用来表示接送机），不为空或者不为null就为接送机
			User user=(User)ordinary_user;
			List<Coupon> couponList=null;
			String integel=CommonUrl.getValue("integel");
			String tem_id=request.getParameter("id");
			Integer id=0;
			if(tem_id!=null && !tem_id.equals("")){
				id=Integer.parseInt(tem_id);
			}
			GoodsPojo goods=null;
			List<Address> addressList=null;
			try {
				goods=ss.getGoodsPojoById(id);
				addressList=ss.getAddressByUser(user.getId());
				couponList=ss.getUserCouponByUsername(user.getUsername(),1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}//获取正在使用的模板
			IsPhone isPhone=new IsPhone();
			if(isPhone.JudgeIsMoblie(request)){
				jsp= "/template/"+tpl.getFolder()+"/page/order_one.jsp";//前台的手机jsp页面
			}else{
				jsp= "/template/"+tpl.getFolder()+"/page/order_one.jsp";
			}
			if(goods.getCategory().getId().equals(17)){
				request.setAttribute("special","x");
			}else if(goods.getCategory().getId().equals(15)){
				request.setAttribute("special","h");
			}
			request.setAttribute("id",id);
			request.setAttribute("goods",goods);
			request.setAttribute("couponList",couponList);
			request.setAttribute("integel",integel);
			request.setAttribute("addressList",addressList);
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}
	}
	
	
	
	/**
	 * 用户登录
	 */
	public void userLogin(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=GBK");
		String tel=request.getParameter("tel");
		String pass=request.getParameter("pass");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		User user=null;
		String json="";
		if(tel.length()==11 && StringUtil.getOrNumber(tel)){//电话号码正确
			boolean userOr=false;
			try {
				userOr = ss.getUserOrByTel(tel);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(userOr){//用户已经存在
				try {
					user=ss.getUserByTelAndPass(tel, pass);
					session.setAttribute("ordinary_user", user);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if(user!=null){//登陆正确
					json="{\"tip\":\"登陆成功\",\"status\":200}";
				}else{//登陆不正确
					json="{\"tip\":\"您的电话号码和密码不匹配\",\"status\":500}";
				}
			}else{//用户不存在
				//request.setAttribute("tip","当前输入的电话没有注册");
				json="{\"tip\":\"当前输入的电话没有注册\",\"status\":500}";
			}
		}else{
			json="{\"tip\":\"您的电话号码不符合规范\",\"status\":500}";
		}
		out.print(json);
	}
	
	/**
	 * 用户注册
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@SuppressWarnings("static-access")
	public void userRegiste(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=GBK");
		HttpSession session = request.getSession(true);
		String tel=request.getParameter("tel");
		String pass=request.getParameter("pass");
		String re_pass=request.getParameter("re_pass");
		String telcode=request.getParameter("telcode");
		PrintWriter out = response.getWriter();
		AdminService as=new AdminService();
		String json="";
		Object telCode=session.getAttribute("telcode");//获取手机验证码
		if(telCode==null || !telCode.toString().equals(telcode)){
			json="{\"tip\":\"手机验证码不正确\",\"status\":500}";
		}else{
			if(tel.length()==11 && StringUtil.getOrNumber(tel)){//电话号码正确
				if(pass.equals(re_pass)){
					boolean userOr=false;
					try {
						userOr = ss.getUserOrByTel(tel);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					if(userOr){//用户已经存在
						json="{\"tip\":\"用户电话已经存在\",\"status\":500}";
					}else{//用户不存在
						Md5Util md5=new Md5Util();
						as.addUser(tel, pass,md5.getMD5Str(pass), "", tel, "", "1", "1");
						json="{\"tip\":\"用户注册成功，请登录\",\"status\":200}";
					}
				}else{
					json="{\"tip\":\"两次输入的密码不正确\",\"status\":500}";
				}
			}else{
				json="{\"tip\":\"电话号码不正确\",\"status\":500}";
			}
		}
		out.print(json);
	}
	
	/**
	 * 添加用户的地址信息
	 */
	public void addAddress(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(true);
		Object ordinary_user=session.getAttribute("ordinary_user");
		String tel=request.getParameter("tel");
		String name=request.getParameter("name");
		String IDStr=request.getParameter("address");//此处是表示身份证号码
		PrintWriter out = response.getWriter();
		String json="";
		if(ordinary_user==null){
			json="{\"tip\":\"请登录之后再操作\",\"status\":500}";
		}else{
			if(tel.length()==11 && StringUtil.getOrNumber(tel)){//电话号码正确
				String shenfen=StringUtil.IDCardValidate(IDStr);
				if(!shenfen.equals("")){//身份证号码正确
					json="{\"tip\":\""+shenfen+"\",\"status\":500}";
				}else{
					Integer flag=0;
					User user=(User)ordinary_user;
					flag=ss.addAddress(user.getId(), name, tel, IDStr);
					if(flag>0){
						json="{\"tip\":\"添加成功\",\"addressId\":"+flag+",\"name\":\""+name+"\",\"tel\":\""+tel+"\",\"address\":\""+IDStr+"\",\"status\":200}";
					}else{
						json="{\"tip\":\"服务器错误\",\"status\":500}";
					}
				}
			}else{
				json="{\"tip\":\"电话号码不正确\",\"status\":500}";
			}
		}
		out.print(json);
	}
	
	/**
	 * 添加订单信息
	 * @throws IOException 
	 */
	public void addGoodsOrder(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(true);
		Object ordinary_user=session.getAttribute("ordinary_user");
		String tem_store_id=request.getParameter("store_id");//门店id
		String price=request.getParameter("price");
		String tem_address_id=request.getParameter("address_id");
		String tem_goods_id[]=request.getParameterValues("goods_id");
		String content=request.getParameter("content");
		String serviceDate=request.getParameter("serviceDate");
		Integer store_id=null;
		Integer address_id=null;
		Integer goods_id=null;
		Integer order_id=0;
		if(tem_store_id!=null && !tem_store_id.equals("")){
			store_id=Integer.parseInt(tem_store_id);
		}
		if(tem_address_id!=null && !tem_address_id.equals("")){
			address_id=Integer.parseInt(tem_address_id);
		}
		if(tem_goods_id.length>0){
			goods_id=Integer.parseInt(tem_goods_id[0]);
		}
		PrintWriter out = response.getWriter();
		String json="";
		if(ordinary_user==null){
			json="{\"tip\":\"请登录之后再操作\",\"status\":500}";
		}else{
			User user=(User)ordinary_user;
			//order_id=ss.addGoodsOrder(2, 1, 1, 1,serviceDate, null, content, user.getId(),null, store_id, null, price, 1, 1, address_id, 2,"3", user.getId().toString(), null, goods_id, 1,"");
			if(order_id>0){
				if(tem_goods_id.length>0){
					for(int i=0;i<tem_goods_id.length;i++){
						ss.addGoodsAndOrder(Integer.parseInt(tem_goods_id[i]),order_id);
					}
				}
				json="{\"tip\":\"操作成功\",\"status\":200}";
			}else{
				json="{\"tip\":\"服务器内部错误\",\"status\":500}";
			}
		}
		out.print(json);
	}
	
	/**
	 * 快速订车
	 */
	public void goFastOrder(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		String store_id=request.getParameter("store_id");
		String type_id=request.getParameter("type_id");
		String time=request.getParameter("time");
		Cookie cookie = new Cookie("store_id",store_id);
		Cookie cookie1 = new Cookie("type_id",type_id);
		Cookie cookie2 = new Cookie("time",time);
		cookie.setMaxAge(-1);
		cookie1.setMaxAge(-1);
		cookie2.setMaxAge(-1);
		//设置路径，这个路径即该工程下都可以访问该cookie 如果不设置路径，那么只有设置该cookie路径及其子路径可以访问
		cookie.setPath("/");
		cookie1.setPath("/");
		cookie2.setPath("/");
		response.addCookie(cookie);
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		response.sendRedirect(basePath+"goods?cat_id="+type_id+"&menuId=7");
	}
	
	/***
	 * 获取促销信息详细信息
	 */
	public void promotDetail(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		String jsp="";
		Template tpl=null;
		String tem_id=request.getParameter("id");
		Integer id=0;
		if(tem_id!=null && !tem_id.equals("")){
			id=Integer.parseInt(tem_id);
		}
		CombineMarket market=null;
		try {
			tpl =us.getTemplate();
			market=ss.getCombineMarketById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.setAttribute("market",market);
		jsp= "/template/"+tpl.getFolder()+"/page/promot_detail.jsp";//前台的手机jsp页面
		RequestDispatcher rd = request.getRequestDispatcher(jsp);
		rd.forward(request,response);
	}
	
	
	/**
	 * 获取手机验证码信息
	 * @throws DocumentException 
	 */
	public void getTelCode(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException, DocumentException{
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(true);
		PrintWriter out = response.getWriter();
		String tel=request.getParameter("tel");
		String json="";
		
		SendMessageInfo smi=new SendMessageInfo();
		String code=smi.sendMessageInfo(tel,1,StringUtil.getRandomString(4));
		if(code.length()<14){
			json="{\"tip\":\"验证码已经发送到你的手机\",\"status\":200}";
			session.removeAttribute("telcode");
			session.setAttribute("telcode",code);
		}else{
			json="{\"tip\":\"验证码发送失败，您没有购买短信接口，请联系QQ：1919594905购买短信\",\"status\":200}";
		}
		out.print(json);
	}
}