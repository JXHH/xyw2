package com.zzkj.xyw.controller;

import java.io.IOException;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.zzkj.xyw.model.User;
import com.zzkj.xyw.service.IUserService;
import com.zzkj.xyw.util.ControllerUtil;
import com.zzkj.xyw.util.UploadFile;

@Controller
public class UserController {

	@Autowired
	private IUserService userService;

	// index
	@RequestMapping(value = "/index")
	public String index() {

		return "index";
	}

	// 返回登录 view
	@RequestMapping(value = "/user/login")
	public String login() {

		return "login";
	}

	// 返回注册 view
	@RequestMapping(value = "/user/register")
	public String regist() {

		return "register";
	}

	// error
	@RequestMapping(value = "/error")
	public String error() {

		return "error";
	}

	// 返回注销 view
	@RequestMapping(value = "/user/logout")
	public String logout(HttpSession session) {

		session.removeAttribute("crtuid");
		session.removeAttribute("crtuser");
		return "redirect:/index";
	}

	// 登录
	@RequestMapping(value = "/user/doLogin")
	public String doLogin(String uname, String upsw, Model model,
			HttpSession session) {

		List<User> li = userService.login(uname, upsw);
		if (!li.isEmpty()) {
			session.setAttribute("crtuid", li.get(0).getUid());
			session.setAttribute("crtuser", li.get(0));
			model.addAttribute("crtuser", li.get(0));
			return "redirect:/index";
		} else {

			model.addAttribute("msg", "登录失败！");
			return "/login";
		}

	}

	// 注册
	@RequestMapping(value = "/user/doRegister")
	public String doRegist(User user, Model model) {

		try {
			userService.regist(user);
			model.addAttribute("msg", "注册成功！");
			return "login";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", "注册失败！");
			return "register";
		}

	}

	// 用户个人信息
	@RequestMapping(value = "/user/info")
	public String modifyInfo(Model model, HttpSession session) {

		return "info";
	}

	// 修改个人信息
	@RequestMapping(value = "/user/modify")
	public String modifyInfo(User user, Model model, HttpSession session)
			throws Exception {

		User crtuser = (User) session.getAttribute("crtuser");

		user.setUid(crtuser.getUid());
		user.setUname(crtuser.getUname());
		user.setUpsw(crtuser.getUpsw());
		user.setUregtime(crtuser.getUregtime());
		user.setUsex(crtuser.getUsex());
		user.setUisreal(crtuser.getUisreal());
		user.setUicon(crtuser.getUicon());

		try {
			userService.update(user);
			session.setAttribute("crtuser", user);
			model.addAttribute("msg", "修改个人信息成功！");
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", "修改个人信息失败！");
		}

		return "/info";
	}

	// 修改头像
	@RequestMapping(value = "/user/modifyIcon")
	public String modifyIcon(MultipartFile file, Model model,
			HttpSession session) throws Exception {

		int uid = (Integer) session.getAttribute("crtuid");
		User user = (User) session.getAttribute("crtuser");
		String uicon = UploadFile.doUpload("F:/xyw/usericon/", file, uid);
		user.setUicon(uicon.substring(6));

		try {
			userService.update(user);
			session.setAttribute("crtuser", user);
			model.addAttribute("msg", "修改头像成功！");
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", "修改头像失败！");
		}

		return "/index";
	}

	// 管理用户页面
	@RequestMapping(value = "/manage/user")
	public String mgUser(Model model) {

		int pageNow = 0;
		int cnt = 0;
		int pageSize = 3;

		List<User> userList = userService.findByPage(pageNow, pageSize);

		cnt = userService.userCnt();
		ControllerUtil.addParam(model, pageSize, pageNow, userList, "userList",
				cnt);

		return "/manage/user";
	}

	// 分页显示用户
	@RequestMapping(value = "/manage/user/{pageNow}")
	public String userList(@PathVariable int pageNow, Model model) {

		int cnt = 0;
		int pageSize = 3;

		List<User> userList = userService.findByPage(pageNow, pageSize);

		cnt = userService.userCnt();
		ControllerUtil.addParam(model, pageSize, pageNow, userList, "userList",
				cnt);

		return "/manage/user";
	}
	
	// mail
		@RequestMapping(value = "/mail")
		public String mail() {

			return "mail";
		}

	// mail
		@RequestMapping(value = "/forget")
		public String forget() {

			return "forget";
		}
		//发邮件
		@RequestMapping(value = "/doMail")
		public static void doMail(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws ServletException, IOException {	
			final String uemail = request.getParameter("uemail");
			session.setAttribute("uemail", uemail);
			ApplicationContext actx = new ClassPathXmlApplicationContext(
					"spring-mail.xml");
					JavaMailSender jms = (JavaMailSender)actx.getBean("mailSender");
					jms.send(new MimeMessagePreparator() {
						public void prepare(MimeMessage mimeMessage) throws Exception {
							MimeMessageHelper mmh = new MimeMessageHelper(mimeMessage,true,"UTF-8");
							// 发送人,收件人,主题,内容
							mmh.setFrom("654819598@qq.com");
							mmh.setTo(uemail);
							mmh.setSubject("校游网-重置密码");
							mmh.setText("<html><head><meta http-equiv='keywords' content='keyword1,keyword2,keyword3'>" +
							          "<meta http-equiv='description' content='this is my page'><meta http-equiv='content-type' content='text/html; charset=UTF-8'>" +
							          "</head><body>尊敬的用户：<br>您好！<br>您正在进行找回密码操作，请点击下面的链接修改密码:<br><a href='http://localhost:8080/xyw2/mail'>http://localhost:8080/xyw2/mail</a>" +
							          "<br><br><br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp校游网客户服务中心</body></html>", true);
						}
					});
					request.getRequestDispatcher("/success").forward(request, response);		
		}
		}