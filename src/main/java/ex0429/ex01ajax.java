package ex0429;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex01ajax")
public class ex01ajax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 0. 인코딩
		// ajax는 utf-8만 사용한다.
		request.setCharacterEncoding("utf-8");

		// 1. 파라미터 수집
		// ajax요청시 data 객체 내 name 사용
		String data = request.getParameter("data");
		System.out.println("받은 데이터 : " + data);
		
		// 2. 응답
		// 응답 형식 지정
		response.setContentType("text/html; charset=utf-8");
		
		// out 객체 생성
		PrintWriter out = response.getWriter();
		
		// 응답
		out.print("받은 데이터 : " + data);
		
		// 페이지 이동 X
		
		
		
		
	}

}
