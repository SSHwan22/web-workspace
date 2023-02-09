<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 dd일");
		String today = sdf.format(date);
	%>
    <h1>오늘은<%= today %>입니다.</h1>
    <h1>피자 아카데미</h1>
    <table border="1px">
        <tr>
            <th>종류</th>
            <th>이름</th>
            <th>가격</th>
            <th rowspan="12"></th>
            <th>종류</th>
            <th>이름</th>
            <th>가격</th>
        </tr>
        <tr>
            <td rowspan="5">피자</td>
            <td>치즈피자</td>
            <td>5000</td>
            <!-- <td></td> -->
            <td rowspan="11">사이드</td>
            <td>오븐구이통닭</td>
            <td>9000</td>
        </tr>
        <tr>
            <!-- <td></td> -->
            <td>콤비네이션피자</td>
            <td>6000</td>
            <!-- <td></td> -->
            <!-- <td></td> -->
            <td>치킨스틱&윙</td>
            <td>4000</td>
        </tr>
        <tr>
            <!-- <td></td> -->
            <td>포테이토피자</td>
            <td>7000</td>
            <!-- <td></td> -->
            <!-- <td></td> -->
            <td>치즈오븐스파게티</td>
            <td>4000</td>
        </tr>
        <tr>
            <!-- <td></td> -->
            <td>고구마피자</td>
            <td>7000</td>
            <!-- <td></td> -->
            <!-- <td></td> -->
            <td>새우링&웨지감자</td>
            <td>3500</td>
        </tr>
        <tr>
            <!-- <td></td> -->
            <td>불고기피자</td>
            <td>8000</td>
            <!-- <td></td> -->
            <!-- <td></td> -->
            <td>갈릭포테이토</td>
            <td>3000</td>
        </tr>
        <tr>
            <td rowspan="6">토핑</td>
            <td>고구마무스</td>
            <td>1000</td>
            <!-- <td></td> -->
            <!-- <td></td> -->
            <td>콜라</td>
            <td>1500</td>
        </tr>
        <tr>
            <!-- <td></td> -->
            <td>콘크림무스</td>
            <td>1500</td>
            <!-- <td></td> -->
            <!-- <td></td> -->
            <td>사이다</td>
            <td>1500</td>
        </tr>
        <tr>
            <!-- <td></td> -->
            <td>파인애플토핑</td>
            <td>2000</td>
            <!-- <td></td> -->
            <!-- <td></td> -->
            <td>갈릭소스</td>
            <td>500</td>
        </tr>
        <tr>
            <!-- <td></td> -->
            <td>치즈토핑</td>
            <td>2000</td>
            <!-- <td></td> -->
            <!-- <td></td> -->
            <td>피클</td>
            <td>300</td>
        </tr>
        <tr>
            <!-- <td></td> -->
            <td>치즈크러스트</td>
            <td>2000</td>
            <!-- <td></td> -->
            <!-- <td></td> -->
            <td>핫소스</td>
            <td>100</td>
        </tr>
        <tr>
            <!-- <td></td> -->
            <td>치즈바이트</td>
            <td>3000</td>
            <!-- <td></td> -->
            <!-- <td></td> -->
            <td>파마산치즈가루</td>
            <td>100</td>
        </tr>
    </table>
    <br>
    <form action="/jsp/test2.do" method="get">
        피자 : 
        <select name="pizza" id="">
            <option value="치즈피자">치즈피자</option>
            <option value="콤비네이션피자">콤비네이션피자</option>
            <option value="포테이토피자">포테이토피자</option>
            <option value="고구마피자">고구마피자</option>
            <option value="불고기피자">불고기피자</option>
        </select>
        <br>
        토핑 :
        <input type="checkbox" name="topping" id="" value="고구마무스">
        <input type="checkbox" name="topping" id="" value="콘크림무스">
        <input type="checkbox" name="topping" id="" value="파인애플토핑">
        <input type="checkbox" name="topping" id="" value="치즈토핑">
        <input type="checkbox" name="topping" id="" value="치즈크러스트">
        <input type="checkbox" name="topping" id="" value="치즈바이트">
        <br>
        사이드 :
        <input type="checkbox" name="side" id="" value="오븐구이통닭">
        <input type="checkbox" name="side" id="" value="치킨스틱&윙">
        <input type="checkbox" name="side" id="" value="치즈오븐스파게티">
        <input type="checkbox" name="side" id="" value="새우링&웨지감자">
        <input type="checkbox" name="side" id="" value="갈릭포테이토">
        <input type="checkbox" name="side" id="" value="콜라">
        <input type="checkbox" name="side" id="" value="사이다">
        <input type="checkbox" name="side" id="" value="갈릭소스">
        <input type="checkbox" name="side" id="" value="피클">
        <input type="checkbox" name="side" id="" value="핫소스">
        <input type="checkbox" name="side" id="" value="파마산치즈가루">
        <br>
        <button type="submit">확인</button>
    </form>
</body>
</html>