package com.macroflag.dp_cms.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.macroflag.dp_cms.service.ILoginService;
import com.macroflag.dp_cms.vo.User;

@Controller
public class LoginController {

	@Autowired
	private ILoginService loginService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpSession session) {
		// 如果用户已经登陆，则放行
		if (session.getAttribute("user") != null) {
			return "redirect:index/list";
		}
		return "admin/login";
	}

	@RequestMapping(value = "/login_submit", method = RequestMethod.POST)
	public String login_submit(HttpSession session, Model model, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		User user = this.loginService.isAuth(username, password);
		// 向session记录用户身份信息
		if (user == null || user.getUsername() == null) {
			// 登陆认证失败，转发到登陆页，并提示
			model.addAttribute("msg", "用户名或者密码错误!");
			return "admin/login";
		} else {
			// 登陆认证成功
			session.setAttribute("user", user.getUsername());
			return "redirect:index/list";
		}
	}

	// 退出
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {
		// session过期
		session.invalidate();
		return "redirect:/login";
	}
}
