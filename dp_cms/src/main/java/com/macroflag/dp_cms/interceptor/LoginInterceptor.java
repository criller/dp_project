package com.macroflag.dp_cms.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	/**
	 * 进入Handle方法之前
	 */
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object obj) throws Exception {
		// 如果是登录页面则放行
		if (req.getRequestURI().indexOf("/login_submit") >= 0) {
			return true;
		}
		
		//如果用户已经登陆，则放行
		HttpSession session = req.getSession();
		//如果用户已登录也放行
		if(session.getAttribute("user")!=null){
			return true;
		}
		
		//用户没有登陆，则跳转到用户登陆界面
		req.getRequestDispatcher("/WEB-INF/jsp/admin/login.jsp").forward(req, res);
		return false;
	}

	/**
	 * 进入Handle方法之后，返回ModelAndView之前
	 */
	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse res, Object obj, ModelAndView mv)
			throws Exception {
		//根据用户权限，展示不同的菜单
		req.setAttribute("company_name", "旗计智能");
		req.setAttribute("system_name", "数据平台");
	}

	/**
	 * 执行Handle完成此方法
	 */
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
