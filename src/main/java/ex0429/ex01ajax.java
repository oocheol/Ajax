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

		// 0. ���ڵ�
		// ajax�� utf-8�� ����Ѵ�.
		request.setCharacterEncoding("utf-8");

		// 1. �Ķ���� ����
		// ajax��û�� data ��ü �� name ���
		String data = request.getParameter("data");
		System.out.println("���� ������ : " + data);
		
		// 2. ����
		// ���� ���� ����
		response.setContentType("text/html; charset=utf-8");
		
		// out ��ü ����
		PrintWriter out = response.getWriter();
		
		// ����
		out.print("���� ������ : " + data);
		
		// ������ �̵� X
		
		
		
		
	}

}
