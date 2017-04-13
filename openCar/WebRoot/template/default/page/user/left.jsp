<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 内容主体 -->
            <div class="user_left">
                <!-- 用户菜单 -->
                <div class="user-bd-menu">
                    <div class="user-bd-menu-index">用户中心</div>
                    <dl>
                        <dt><div class="d1">个人资料</div></dt>
                        <dd><a href="<%=basePath%>pc/pcGoUserPass">修改密码</a></dd>
                        <dd><a href="<%=basePath%>pc/pcUserIndex">基本资料</a></dd>
                        <dd><a href="<%=basePath%>pc/pcUserAddress">联系方式</a></dd>
                    </dl>
                    <dl>
                        <dt><div class="d4">订单管理</div></dt>
                        <dd><a href="<%=basePath%>pc/pcUserOrder?flag=1">预订单</a></dd>
                        <dd><a href="<%=basePath%>pc/pcUserOrder?flag=2">订单</a></dd>
                    </dl>
                </div>
            </div>