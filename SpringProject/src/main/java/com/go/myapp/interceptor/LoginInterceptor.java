package com.go.myapp.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.go.myapp.dto.MemberInfo;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		MemberInfo login = (MemberInfo) session.getAttribute("login");
		String str = "";
		if (login == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			str += "<script> alert('로그인 해주세요');";
			str += "location.href='" + request.getContextPath() + "/login'; </script>";
			System.out.println("로그인 인터셉터 작동중..");
			// response.sendRedirect(request.getContextPath() + "/customer/login");
			out.println(str);
			out.flush();
			return false;
		}
		return super.preHandle(request, response, handler);
	}

}
