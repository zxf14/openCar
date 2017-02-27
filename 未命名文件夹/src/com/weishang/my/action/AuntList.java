package com.weishang.my.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.weishang.my.pojo.Aunt;
import com.weishang.my.pojo.Comment;
import com.weishang.my.service.ShopService;
import com.weishang.pojo.Template;
import com.weishang.service.UserService;
import com.weishang.tool.CommonUrl;
@WebServlet(displayName="获取外部员工的信息",name="AuntList",urlPatterns="/aunt")
public class AuntList extends HttpServlet{

	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AuntList() {
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
		ShopService ss=new ShopService();
		UserService us=new UserService();
		String jsp="";
		Template tpl=null;
		String pageNoTem=request.getParameter("page") ;
		Integer pageNo=0;
		if(pageNoTem!=null){
			pageNo=Integer.parseInt(pageNoTem);
		}else{
			pageNo=1;
		}
		String pageSizeTem=CommonUrl.getValue("user_page");
		Integer pageSize=Integer.parseInt(pageSizeTem);
		List<Aunt> auntList=null;
		List<Comment> commetnList=null;
		Aunt aunt=null;
		Integer sum=0;
		String tem_aunt_id=request.getParameter("aunt_id");
		Integer aunt_id=0;
		if(tem_aunt_id!=null && !tem_aunt_id.equals("")){
			aunt_id=Integer.parseInt(tem_aunt_id);
		}
		try {
			tpl =us.getTemplate();
			auntList=ss.getAuntList(pageNo, pageSize, null);
			sum=ss.getAuntCount(null);
			aunt=ss.getAuntById(aunt_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			commetnList=ss.getCommentByCmsId(1, 4, null,aunt.getId().toString(),"0");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		aunt.setComList(commetnList);
		request.setAttribute("auntList",auntList);
		if(sum%pageSize==0){
			request.setAttribute("sum",sum/pageSize);
		}else{
			request.setAttribute("sum",sum/pageSize+1);
		}
		request.setAttribute("aunt",aunt);
		request.setAttribute("pageNo",pageNo);
		jsp= "/template/"+tpl.getFolder()+"/page/aunt_detail.jsp";//前台的手机jsp页面
		RequestDispatcher rd = request.getRequestDispatcher(jsp);
		rd.forward(request,response);
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
