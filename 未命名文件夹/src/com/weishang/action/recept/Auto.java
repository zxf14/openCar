package com.weishang.action.recept;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weishang.service.UserService;
import com.weishang.tool.CommonUrl;
import com.weishang.pojo.AdminMod;
import com.weishang.pojo.Cms;
import com.weishang.pojo.Recept;
import com.weishang.pojo.Template;
@WebServlet(displayName="前台页面（自动模块）",name="Auto",urlPatterns="/auto")
public class Auto extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public Auto() {
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
		UserService us=new UserService();
		String menuId=request.getParameter("menuId");//获取菜单id
		Recept recept=null;
		try {
			String path = request.getContextPath();
			String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
			recept=us.getReceptById(menuId);
			String modId= recept.getData_mod();//获取自动模块
			AdminMod mod=null;
			List<Cms> cmsList=null;
			Cms cms=null;
			Template tpl=us.getTemplate();//获取正在使用的模板
			String jsp="";//前台的jsp页面
			jsp= "/template/"+tpl.getFolder()+"/page/"+recept.getJspMod()+".jsp";
			mod=us.getModById(modId);
			List<Recept> receptList=null;
			if(recept.getParent()!=null && !recept.getParent().equals(0)){
				receptList=us.getReceptByParent(recept.getParent(), basePath);
			}else{
				receptList=us.getReceptByParent(recept.getId(), basePath);
			}
			if(mod.getStyle().equals(1)){//列表模块
				Integer pageNo=0;
				String pageNoTem=request.getParameter("page") ;
				if(pageNoTem!=null){
					pageNo=Integer.parseInt(pageNoTem);
				}else{
					pageNo=1;
				}
				int sum=0;
				String pageSizeTem=CommonUrl.getValue("user_page");
				Integer pageSize=Integer.parseInt(pageSizeTem);
				String ids="";
				if(receptList.size()>0){
					for(int i=0;i<receptList.size();i++){
						ids+=receptList.get(i).getData_mod()+",";
					}
					if(recept.getParent()!=null && !recept.getParent().equals(0)){
						cmsList=us.getCmsByPage(pageNo, pageSize,mod.getId().toString());
						sum=us.countCmsByMod(mod.getId().toString());
					}else{
						ids=ids.substring(0,ids.length()-1);
						cmsList=us.getCmsByPage(pageNo, pageSize,ids);
						sum=us.countCmsByMod(ids);
					}
				}else{
					cmsList=us.getCmsByPage(pageNo, pageSize,mod.getId().toString());
					sum=us.countCmsByMod(mod.getId().toString());
				}
				request.setAttribute("recept",recept);
				request.setAttribute("cmsList",cmsList);
				request.setAttribute("receptList",receptList);
			    request.setAttribute("sum",sum/pageSize+1);
			    request.setAttribute("pageNo",pageNo);
			    RequestDispatcher rd = request.getRequestDispatcher(jsp);
				rd.forward(request,response);
			}else if(mod.getStyle().equals(2)){//单页模块
				if(receptList.size()>0){
					cms=us.getCmsByAdminMod(mod.getId());//得到单页信息
				}else{
					cms=us.getCmsByAdminMod(mod.getId());//得到单页信息
				}
				request.setAttribute("recept",recept);
				RequestDispatcher rd = request.getRequestDispatcher(jsp);
		        request.setAttribute("cms",cms);
		        request.setAttribute("receptList",receptList);
				rd.forward(request,response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
