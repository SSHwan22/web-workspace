package com.kh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestGetPizzaOrder
 */
@WebServlet("/test4.do")
public class RequestGetPizzaOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Object tppping;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestGetPizzaOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1) 전달 값 중에 한글이 입코딩 처리(POST 아시 방식일 때만)
		request.setCharacterEncoding("UTF-8");
		String pizza = request.getParameter("pizza");
		String[] topping = request.getParameterValues("topping");
		String[] side = request.getParameterValues("side");
		String sideResult = "";
		String toppingResult = "";
		request.setAttribute("pizza",pizza);
		request.setAttribute("topping",topping);
		request.setAttribute("side",side);
		
		for(int i=0; i<side.length; i++){
			if(side != null){
				sideResult += side[i]+", ";
			}
		}
		if(topping != null) {
			for(String toppings : topping) {
				
			}
		}
		
		for(int i=0; i<topping.length; i++){
			if(topping != null){
				toppingResult += topping[i]+", ";
			}
		}

//			
		
		request.setAttribute("sideResult",sideResult);
		request.setAttribute("toppingResult", toppingResult);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/04_PizzaOrderPage.jsp");
		
		view.forward(request, response);
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
