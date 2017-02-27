package com.weishang.my.action;

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

import com.weishang.my.pojo.GoodsPojo;
import com.weishang.my.service.ShopService;
import com.weishang.my.tool.StringUtil;
import com.weishang.pojo.Recept;
import com.weishang.service.UserService;
import com.weishang.tool.CommonUrl;
import com.weishang.tool.ReturnJspUrl;
@WebServlet(displayName="跳转到信访页面",name="GoodsList",urlPatterns="/goods")
public class GoodsList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public GoodsList() {
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
		UserService us=new UserService();
		ShopService ss=new ShopService();
		ReturnJspUrl rj=new ReturnJspUrl();
		String menuId=request.getParameter("menuId");//获取菜单id
		Recept recept=null;
		String jsp="";
		try {
			List<GoodsPojo> goodsList=null;
			List<GoodsPojo> goodsList2=null;
			String pageNoTem=request.getParameter("page") ;
			Integer sum=0;
			Integer pageNo=0;
			if(pageNoTem!=null){
				pageNo=Integer.parseInt(pageNoTem);
			}else{
				pageNo=1;
			}
			String pageSizeTem=CommonUrl.getValue("user_page");
			Integer pageSize=Integer.parseInt(pageSizeTem);
			String tem_type_id=request.getParameter("type_id");
			String tem_brand_id=request.getParameter("brand_id");
			String tem_cat_id=request.getParameter("cat_id");
			String tem_price=request.getParameter("price");
			String order=request.getParameter("order");
			String price="x";
			if(tem_price!=null && !tem_price.equals("")){
				price=tem_price;
			}
			if(tem_cat_id==null||tem_cat_id.equals("")){
				tem_cat_id="1";
			}
			if(tem_type_id==null||tem_type_id.equals("")){
				tem_type_id="";
			}else{
				String type_id[]=tem_type_id.split(",");
				StringUtil su=new StringUtil();
				tem_type_id=su.arrayToString(type_id);
			}
			if(tem_brand_id==null||tem_brand_id.equals("")){
				tem_brand_id="";
			}else{
				String brand_id[]=tem_brand_id.split(",");
				StringUtil su=new StringUtil();
				tem_brand_id=su.arrayToString(brand_id);
			}
			
			goodsList=ss.getGoodsPojoListByTypeAndcatAndBranAndPrice(pageNo, pageSize, tem_cat_id, tem_type_id, tem_brand_id, price, order);
			sum=ss.getGoodsPojoListByTypeAndcatAndBranAndPriceCount(tem_cat_id, tem_type_id, tem_brand_id, price);
			try {
				goodsList2=ss.getGoodsListByExtendCat(pageNo, pageSize-goodsList.size(),tem_cat_id,tem_type_id,tem_brand_id,price);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			for(int i=0;i<goodsList2.size();i++){
				goodsList.add(goodsList2.get(i));
			}
			recept=us.getReceptById(menuId);
			request.setAttribute("recept",recept);
			request.setAttribute("menuId",menuId);
			request.setAttribute("pageNo",pageNo);
			request.setAttribute("cat_id",tem_cat_id);
			request.setAttribute("type_id",tem_type_id);
			request.setAttribute("brand_id",tem_brand_id);
			request.setAttribute("price",price);
			request.setAttribute("order",order);
			request.setAttribute("goodsList",goodsList);
			request.setAttribute("price",price);
			if(sum%pageSize==0){
				request.setAttribute("sum",sum/pageSize);
			}else{
				request.setAttribute("sum",sum/pageSize+1);
			}
			if(tem_cat_id.equals("17")){//接送机
				request.setAttribute("sp","x");
				jsp=rj.url(request, "/page/jiesongji_goods_list.jsp");
			}else if(tem_cat_id.equals("15")){//接送机
				request.setAttribute("sp","h");
				jsp=rj.url(request, "/page/jiesongji_goods_list.jsp");
			} else{
				jsp=rj.url(request, "/page/"+recept.getJspMod()+".jsp");
			}
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		} catch (NumberFormatException e) {
			jsp= "/404.jsp";//前台的手机jsp页面
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}catch (SQLException e) {
			jsp= "/404.jsp";//前台的手机jsp页面
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}catch (NullPointerException e) {
			jsp= "/404.jsp";//前台的手机jsp页面
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request,response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet( request,  response);
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
