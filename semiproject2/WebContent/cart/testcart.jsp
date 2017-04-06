<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".addCartBtn").click(function(){
			//var no =  //el로 상품번호 받아오기
 			$.ajax({
				type:"get",
				url:"DispatcherServlet",
				data:"command=addCart&no=1",
				success:function(){
					if(confirm("장바구니 추가 완료! 장바구니로 이동하시겠습니까?")){
						location.href="DispatcherServlet?command=showCartList";
					}else{
						return;
					}
					
				}
			});
		});
	});	
</script>
</head>
<body>
	 <a href="DispatcherServlet?command=showCartList">장바구니</a><br>
	 <table>
	 		<tr>
	 			<th>no</th><th>상품명</th><th>수량</th><th>가격</th><th>장바구니담기</th>
	 		</tr>
	 		<tr>
	 			<td >1</td><td>팔찌</td><td>3</td><td>3000</td> <td><button class="addCartBtn">상품추가</button></td>
	 		</tr>

	 </table>
</body>
</html>