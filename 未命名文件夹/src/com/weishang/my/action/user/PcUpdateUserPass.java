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
@WebServlet(displayName="修改用户密码",name="PcUpdateUserPass",urlPatterns="/pc/pcUpdateUserPass")
public class PcUpdateUserPass extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PcUpdateUserPass() {
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
		ShopService ss=new ShopService();
		HttpSession session = request.getSession(true);
		Locale loc = new Locale("zh","CN");//去中文信息
		ResourceBundle rb = ResourceBundle.getBundle("messages",loc);//初始化国际化文件
		String adminTip = rb.getString("adminTip"); 
		String json="";
		String old_pass =request.getParameter("old_pass");
		String new_pass=request.getParameter("new_pass");
		String new_pass_re=request.getParameter("new_pass_re");
		Object ordinary_user=session.getAttribute("ordinary_user");
		if(ordinary_user!=null){//登陆用户
			User user=(User)ordinary_user;
			if(!user.getPass().equals(old_pass)){
				json="{\"tip\":\"原始密码不正确\"}";
			}else if(!new_pass.equals(new_pass_re)){
				json="{\"tip\":\"两次输入的密码不一致\"}";
			}else{
				String flag=ss.updateUserPass(user.getId(), new_pass);
				if(flag.equals("ok")){
					json="{\"tip\":\"修改成功\"}";
				}else{
					json="{\"tip\":\"修改失败\"}";
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
