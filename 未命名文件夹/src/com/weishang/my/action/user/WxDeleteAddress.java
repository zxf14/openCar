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
import com.weishang.my.service.ShopService;
@WebServlet(displayName="删除用户地址信息",name="WxDeleteAddress",urlPatterns="/wx/wxDeleteAddress")
public class WxDeleteAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public WxDeleteAddress() {
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
		Locale loc = new Locale("zh","CN");//去中文信息
		ResourceBundle rb = ResourceBundle.getBundle("messages",loc);//初始化国际化文件
		String adminTip = rb.getString("adminTip"); 
		Object ordinary_user=session.getAttribute("ordinary_user");
		String json="";
		if(ordinary_user==null){//非登陆用户
			json="{\"tip\":\""+adminTip+"\"}";
			out.print(json);
		}else{//登陆用户
			String address_id=request.getParameter("address_id");
			String flag=ss.deleteAddress(Integer.parseInt(address_id));
			if(flag.equals("ok")){
				json="{\"tip\":\""+rb.getString("delete")+rb.getString("success")+"\"}";
			}else{
				json="{\"tip\":\""+rb.getString("delete")+rb.getString("failure")+"\"}";
			}
			out.print(json);
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
