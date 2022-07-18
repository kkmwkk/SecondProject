package com.go.myapp.controller;

import java.util.Map;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.go.myapp.dto.MemberInfo;
import com.go.myapp.service.LoginService;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class Certification {
	
	@Inject
	LoginService service;
	
	@Autowired
	private LoginService loginService;
	
	// 회원가입시 SSO 로그인 구현
	@RequestMapping(value = "/NSUOK", method = { RequestMethod.GET, RequestMethod.POST })
    public String paramTest(
    		HttpServletRequest request,
    	    @RequestParam("id") String id,
            @RequestParam("password") String password,
            Model model,
            RedirectAttributes rttr,
            MemberInfo member
            )
            throws Exception {
        // 타임아웃 설정을 위해 HttpComponentsClientHttpRequestFactory 사용
        HttpComponentsClientHttpRequestFactory httpRequestFactory = new HttpComponentsClientHttpRequestFactory();
        httpRequestFactory.setConnectTimeout(3000);
        httpRequestFactory.setReadTimeout(5000);
        
        
        // 세션값(id) 유지 후 넘김. 
        HttpSession session = request.getSession();
        String name = id;
        session.setAttribute("id", name);
        ModelAndView mv = new ModelAndView();
        mv.setViewName(name);
        
        //인증확인
        
        String Class = request.getParameter("id");
        MemberInfo idCheck = loginService.idCheck(Class);
        
        int result1 = 0;
        
        if(idCheck != null) {
        	result1 = 1;
        }

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
        // 응답 코드 10000 - 성공
        if (resultCode.equals("10000") && result1 == 0) {
            System.out.println("인증 성공");
            service.potal(member);
            System.out.println(id);
            
            return "user/join";                    	
        }if(resultCode.equals("10000") && result1 == 1) {
        	System.out.println(result1);
        	return "user/login";
        	
        }else {
            System.out.println("인증 실패");
            rttr.addFlashAttribute("msg", false);
            return "redirect:/NSU";
        }

	}
	
	@RequestMapping(value = "potal", method = RequestMethod.POST)
	public String postRegister(MemberInfo member) throws Exception{
		
		service.potal(member);
		return null;
		
		}
	}