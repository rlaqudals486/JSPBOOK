package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

// init - 필터 사용 초기화 -> 서버 시작 시
// odFilter - 작업 시 매번 동작
// destroy - 필터 종료 시 1번

public class AuthenFilter implements Filter {
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter01 초기화...");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
		System.out.println("Filter01.jsp 수행...");
		String name = request.getParameter("name");
		
		if (name == null || name.equals("")) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			String message = "입력된 name 값은 null 입니다.";
			writer.println(message);
			return;
		}
		filterChain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		System.out.println("Filter01 해제...");
	}
}
