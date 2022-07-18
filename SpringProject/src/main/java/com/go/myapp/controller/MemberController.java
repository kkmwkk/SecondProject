package com.go.myapp.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.go.myapp.dto.MemberInfo;
import com.go.myapp.service.LoginService;


@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private LoginService loginService;
	
	@Inject
	LoginService service;

	// 메인으로
	@RequestMapping(value = "backtoMain", method = RequestMethod.GET)
	public String goMain() {
		return "redirect:/home";
	}

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("HOME" + new Date());
		model.addAttribute("head", "WELCOME");
		return "main";
	}

	// 로그인화면 이동
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(Model model) {
		return "user/login";
	}
	
	// 로그인화면 이동 (받은 신청) 
		@RequestMapping(value = "recieve", method = RequestMethod.GET)
		public String receive(Model model) {
			return "user/recieve";
		}
	
	// 나의 정보 이동
	@RequestMapping(value = "myprofile", method = RequestMethod.GET)
	public String profile(Model model) {
		return "user/setting";
	}

	// 학교인증화면 이동
	@RequestMapping(value = "NSU", method = RequestMethod.GET)
	public String home (Locale locale, Model model) {
		return "certification";
	}


	// 로그인
		@RequestMapping(value = "main", method = { RequestMethod.GET, RequestMethod.POST })
		public String loginAf(
				HttpServletRequest request,
				@RequestParam Map<String, String> map,
				Model model,
				RedirectAttributes rttr,
				@RequestParam("id") String id,
				@RequestParam("password") String password,
				MemberInfo member
				)
				throws SQLException, IOException, Exception {
			
			HttpComponentsClientHttpRequestFactory httpRequestFactory = new HttpComponentsClientHttpRequestFactory();
	        httpRequestFactory.setConnectTimeout(3000);
	        httpRequestFactory.setReadTimeout(5000);
	        
	        HttpClient httpClient = HttpClientBuilder.create()
	                .setMaxConnTotal(200)
	                .setMaxConnPerRoute(20)
	                .build();
	        httpRequestFactory.setHttpClient(httpClient);
	        
	     // RestTemplate
	        RestTemplate restTemplate = new RestTemplate(httpRequestFactory);
	        // 파라미터 설정
	        MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();
	        parameters.add("id", id);
	        parameters.add("password", password);
	        // POST 호출
	        String url = "https://sso.nsu.ac.kr/api/login";
	        ResponseEntity<String> responseEntity = restTemplate.postForEntity(url, parameters, String.class);
	        String body = responseEntity.getBody();
	        ObjectMapper objectMapper = new ObjectMapper();
	        Map result = objectMapper.readValue(body, Map.class);
	        String resultCode = String.valueOf(result.get("code"));
	        
	        
	        
			MemberInfo login = loginService.checkMember(map);
			logger.info("로그인 중");
			
			if (login != null && !login.getId().equals("") && resultCode.equals("10000")) {
				logger.info("로그인 성공");
				System.out.println("============= 인증 성공");
				request.getSession().setAttribute("login", login);
				request.getSession().setMaxInactiveInterval(10 * 60);
				model.addAttribute("head", "환영합니다.");
				return "main";
			} else {
				logger.info("로그인 실패");
				rttr.addFlashAttribute("msg", false);
				return "redirect:/login";
			}
		}
	
	// 로그아웃
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, Model model) {
		logger.info("로그아웃");
		request.getSession().invalidate();
		return "main";
	}

	// 회원정보 수정
	@RequestMapping(value = "mvupdate", method = RequestMethod.GET)
	public String mvUpdate() {
		logger.info("업데이트");
		return "user/memberUpdateForm";
	}
	
	
	
	// 회원삭제폼에서 전송한거 받기
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public void getremove() throws Exception {
		logger.info("탈퇴완료");
	}
	
	
	@RequestMapping(value = "/delete2", method = RequestMethod.POST)
	public String postremove(MemberInfo member, HttpSession session, RedirectAttributes ra) throws Exception {
		logger.info("탈퇴중");
		
		MemberInfo login = (MemberInfo)session.getAttribute("login");
		
		String oldPass = login.getPassword();
		String newPass = member.getPassword();
		
		if(oldPass.equals(newPass)) {
			System.out.println("탈퇴완료");
			loginService.remove(member);
			ra.addFlashAttribute("result", "removeOK");
			session.invalidate();
			return "main";
			
		} else {
			ra.addFlashAttribute("result", "removeFalse");
			return "redirect:/myprofile";
			
		}
	}

		
		
	@RequestMapping(value = "update")
	public String update(@ModelAttribute MemberInfo memberinfo) throws SQLException {
		loginService.updateMember(memberinfo);
		return "redirect:/login";
	}
	

	
	

	// 회원 가입
	@RequestMapping(value = "mvregister", method = RequestMethod.GET)
	public String getRegister(Model model) {
		logger.info("등록으로");
		return "user/join";
	}

	@RequestMapping(value = "register", method = { RequestMethod.GET, RequestMethod.POST })
	public String postRegister(@ModelAttribute MemberInfo member, HttpServletRequest request) throws Exception {
		System.out.println("로그인성공입니다");
		 
		loginService.potal2(member);
		System.out.println(member.getName());
		return "user/login";

	
	}
	
	// 비밀번호 찾기 페이지로 이동
    @RequestMapping(value="find_password_form")
    public String findPasswordView() {
       return "user/findPassword";
    }
    
     // 비밀번호 찾기 실행
    @RequestMapping(value="find_password", method=RequestMethod.POST)
    public String findPasswordAction(MemberInfo memberinfo, Model model) throws Exception  {
       MemberInfo user = loginService.findPassword(memberinfo);
       
       if(user == null) {
          model.addAttribute("check", 1);
       } else {
          model.addAttribute("check", 0);
          model.addAttribute("id", user.getId());
          model.addAttribute("name", user.getName());
          model.addAttribute("password", user.getPassword());
       }
       
       return "user/findPassword";
    }
	
	
	// 회원 확인
			@ResponseBody
			@RequestMapping(value = "idCheck", method = {RequestMethod.GET, RequestMethod.POST})
			public int postIdCheck(HttpServletRequest req) throws Exception {
			 logger.info("post idCheck");
			
			 String id = req.getParameter("id");
			 MemberInfo idCheck = loginService.idCheck(id);
			
			 int result = 0;
			
			 if(idCheck != null) {
			 result = 1;
			 logger.info("아이디 존재합니다");
			 }
			
			 return result;
			}
			
		
			
			
			
}