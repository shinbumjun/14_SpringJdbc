package com.feb.test.controller;

import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//import com.feb.test.service.LoginService;

@Controller
public class LoginController {

//	@Autowired // LoginService 타입의 빈을 찾아서 loginService 필드에 주입
//	private LoginService loginService;
	
	// 5. 로그아웃
	@GetMapping("/logout")
	public String login(HttpSession session) {
		// 로그아웃 버튼을 누르면 세션을 종료
		session.invalidate();
		// 홈으로 이동
		return "redirect:/index";
	}
	
	@GetMapping("/loginPage")
    public String loginForm() {
        return "login"; // 뷰 이름을 반환합니다.
    }
	
}