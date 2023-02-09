<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pizza = (String)request.getAttribute("pizza");
	String[] topping = (String[])request.getAttribute("topping"); 
	String[] side = (String[])request.getAttribute("side");
	String sideResult = (String)request.getAttribute("sideResult");
	String toppingResult = (String)request.getAttribute("toppingResult");
%>
<% int price = 0;
	switch(pizza){
	case "치즈피자": price += 5000; break;
	case "콤비네이션피자": price += 6000; break;
	case "포테이토피자": price += 7000; break;
	case "고구마피자": price += 7000; break;
	case "불고기피자": price += 8000; break;
	}
	for(int i=0; i<topping.length; i++){
		switch(topping[i]){
		case "고구마무스" : price += 1000; break;
		case "콘크림무스" : price += 1500; break;
		case "파인애플토핑" : price += 2000; break;
		case "치즈토핑" : price += 2000; break;
		case "치즈크러스트" : price += 2000; break;
		case "치즈바이트" : price += 3000; break;
		}
	}
	for(int i=0; i<side.length; i++){
		switch(side[i]){
		case "오븐구이통닭" : price += 9000; break;
		case "치킨스틱&윙" : price += 4900; break;
		case "치즈오븐스파게티" : price += 4000; break;
		case "새우링&웨지감자" : price += 3500; break;
		case "갈릭포테이토" : price += 3000; break;
		case "콜라" : price += 1500; break;
		case "제로콜라" : price += 1300; break;
		case "사이다" : price += 1500; break;
		case "갈릭소스" : price += 500; break;
		case "피클" : price += 300; break;
		case "핫소스" : price += 100; break;
		case "파마산 치즈가루" : price += 100; break;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<span>주문 내역</span>
	<h4><span style="color:red"> 피자는 <%= pizza %></span>,
		토핑은<span style="color:green";> <%= toppingResult %> </span>
	    사이드는 <span style="color:blue"> <%= sideResult %> </span>
      	주문하셨습니다.
	</h4>
	
	<h4>총합 : <%= price %>원</h4>
</body>
</html>