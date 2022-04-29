package ex0429;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/ex02json")
public class ex02json extends HttpServlet {
   private static final long serialVersionUID = 1L;
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      // MemberVO -> Json
      // "{ 'key' : 'value', 'key2' : 'value2', 'key3' : 'value3' }"
      MemberVO vo1 = new MemberVO("e1", "p1", "t1", "a1");
      MemberVO vo2 = new MemberVO("e2", "p2", "t2", "a2");
      MemberVO vo3 = new MemberVO("e3", "p3", "t3", "a3");
      MemberVO vo4 = new MemberVO("e4", "p4", "t4", "a4");
      MemberVO vo5 = new MemberVO("e5", "p5", "t5", "a5");
      
      ArrayList<MemberVO> list = new ArrayList<MemberVO>();
      list.add(vo1);
      list.add(vo2);
      list.add(vo3);
      list.add(vo4);
      list.add(vo5);
      
      // json 변환
      Gson gson = new Gson();
      // toJson(VO/List<VO>)
      // key --> field이름
      // value --> 저장하고 있는 데이터
      String json = gson.toJson(list);
      System.out.println(json);
      
      
      // 응답 형식 지정
      response.setContentType("text/html; charset=utf-8");
      
      // out객체
      PrintWriter out = response.getWriter();
      
      // 응답
      out.print(json);
      
   }

}