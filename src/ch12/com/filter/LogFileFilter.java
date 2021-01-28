package ch12.com.filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.*;

public class LogFileFilter implements Filter {
//	문자열을 쓰기 위한 출력 스트림
	PrintWriter writer;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
//		web.xml의 init-param과 연동
		String filename = filterConfig.getInitParameter("filename");
		
		if (filename == null) {
			throw new ServletException("로그파일의 이름을 찾을 수 없습니다.");
		}
		
		try {
			writer = new PrintWriter(new FileWriter(filename, true), true);
		}
		
		catch (IOException e) {
			throw new ServletException("로그 파일을 열 수 없습니다.");
		}
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		writer.printf("현재일시 : %s %n", getCurrentTime());
		String clientAddr = request.getRemoteAddr();
		writer.printf("클라이언트 주소 %s %n", clientAddr);
		
		chain.doFilter(request, response);
		
		String contentType = response.getContentType();
		writer.printf("문서의 콘텐츠 유형 : %s %n", contentType);
		writer.println("--------------------------------");
		
	}
	
	public void destroy() {
//		쓰레기 수집기가 IO 관련(하드웨어, 네트워크 장치 리소스) 리스소 부분은 메모리를 자동으로 해제하지 못함
//		사용자가 직접 메모리 해제를 해야함
		writer.close();
	}
	
	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}

}
