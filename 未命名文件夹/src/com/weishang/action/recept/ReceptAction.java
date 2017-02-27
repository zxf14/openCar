package com.weishang.action.recept;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(displayName="前台页面（主要的action）",name="ReceptAction",urlPatterns="/recept")
public class ReceptAction extends HttpServlet {
	
	private static final long serialVersionUID = 1L;


	/**
	 * Constructor of the object.
	 */
	public ReceptAction() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action=request.getParameter("action");
		String menuId=request.getParameter("menuId");
		String paerntMenu=request.getParameter("paerntMenu");
		Integer pageNo=0;
		String pageNoTem=request.getParameter("page");
		if(pageNoTem!=null){//有分页
			RequestDispatcher rd = request.getRequestDispatcher("/"+action+"?menuId="+menuId+"&page="+pageNo);
			rd.forward(request,response);
		}else{//无分页
			if(paerntMenu==null){
				RequestDispatcher rd = request.getRequestDispatcher("/"+action+"?menuId="+menuId);
				rd.forward(request,response);
			}else{
				RequestDispatcher rd = request.getRequestDispatcher("/"+action+"?menuId="+menuId+"&paerntMenu="+paerntMenu);
				rd.forward(request,response);
			}
			
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	}


	public void init() throws ServletException {
		// Put your code here
	}

}
