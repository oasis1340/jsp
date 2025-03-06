package com.app.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet
 */
//@WebServlet("/home")
// URL을 mapping 해주는 역할
// 하지만 파일 하나의 어노텐션이 다 들어가 있으면, 유지보수가 어렵다.
// 따라서 web.xml을 만들어서 한 번에 일괄적으로 관리한다.
// 프로젝트 하나당 web.xml 하나


public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		인코딩 설정 필수*
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8;");
		
		PrintWriter out = response.getWriter();
		String name = "", age1 = "", age2 = "", num1 = "", num2 = "";
		int sum = 0;
//		name = request.getParameter("name");
//		age1 = request.getParameter("age");
		num1 = request.getParameter("num1");
		num2 = request.getParameter("num2");
		sum = Integer.parseInt(num1) + Integer.parseInt(num2);
//		age2 = String.valueOf(Integer.parseInt(age1) - 2);
		
		if ( sum % 2 == 1) {
			out.print(num1 + " + " + num2 + " = " + sum + "은 홀수 입니다.");
			out.close();
		} 
		if ( sum % 2 == 0) {
			out.print(num1 + " + " + num2 + " = " + sum + "은 짝수 입니다.");
			out.close();
		}
		
//		out.print(num1 + " + " + num2 + " = " + sum);
//		out.close();
		
//		out.print(name + "(나이:" + age1 + ", 만 나이:"+ age2 +") 님 환영합니다!");
//		out.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
