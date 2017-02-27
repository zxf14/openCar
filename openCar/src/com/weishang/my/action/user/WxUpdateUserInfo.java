package com.weishang.my.action.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.weishang.my.pojo.User;
import com.weishang.my.service.ShopService;
import com.weishang.my.tool.StringUtil;

@WebServlet(displayName="修改用户的基本信息",name="WxUpdateUserInfo",urlPatterns="/wx/wxUpdateUserInfo")
public class WxUpdateUserInfo extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public WxUpdateUserInfo() {
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
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		ShopService ss=new ShopService();
		
		Locale loc = new Locale("zh","CN");//去中文信息
		ResourceBundle rb = ResourceBundle.getBundle("messages",loc);//初始化国际化文件
		String adminTip = rb.getString("adminTip"); 
		String json="";
		String name =request.getParameter("name");
		String email=request.getParameter("email");
		String tel=request.getParameter("tel");
		Object ordinary_user=session.getAttribute("ordinary_user");
		if(ordinary_user!=null){//登陆用户
			String flag="";
			User user=(User)ordinary_user;
			if(name.trim().length()<2){
				json="{\"tip\":\""+rb.getString("modify")+rb.getString("failure")+"，姓名长度必须大于2\"}";
			}else if(email.trim().indexOf(".")<0 ||email.trim().indexOf("@")<0 ){
				json="{\"tip\":\""+rb.getString("modify")+rb.getString("failure")+"。电子邮件不正确\"}";
			}else if(tel.trim().length()<11 || !StringUtil.getOrNumber(tel.trim()) ||tel.trim().length()>11 ){
				json="{\"tip\":\""+rb.getString("modify")+rb.getString("failure")+"，电话不正确\"}";
			}else{
				flag=ss.updateUserInfo(user.getId(), name, email, tel);
				if(flag.equals("ok")){
					json="{\"tip\":\""+rb.getString("modify")+rb.getString("success")+"\"}";
				}else{
					json="{\"tip\":\""+rb.getString("modify")+rb.getString("failure")+"\"}";
				}
			}
		}else{//非登陆用户
			String tip=adminTip;
			json="{\"tip\":\""+tip+"\"}";
		}
		out.print(json);
		out.flush();
		out.close();
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
