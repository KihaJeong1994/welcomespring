<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>로그인</title>
<!--
Classic Template
http://www.templatemo.com/tm-488-classic
-->
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" href="../resources/css/templatemo-style.css">                                   <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
          
          
          <link rel="stylesheet" type="text/css" href="../resources/css/NewFile.css" media="all" />
          <link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap" rel="stylesheet"> 
</head>

    <body>
 
        <div class="tm-header">
            <div class="container-fluid">
                <div class="tm-header-inner">
                    <a href="../index.jsp" class="navbar-brand tm-site-name">카테고리</a>
                    
                    <!-- navbar -->
                    <nav class="navbar tm-main-nav">

                        <button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        
                        <div class="collapse navbar-toggleable-sm" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item">
                                    <a href="logIn/logIn.do" class="nav-link">로그인</a>
                                </li>
                                <li class="nav-item">
                                    <a href="../cart/cart.do" class="nav-link">장바구니</a>
                                </li>
                                <li class="nav-item">
                                    <a href="../jumun/jumun.do" class="nav-link">주문조회</a>
                                </li>
                                <li class="nav-item">
                                    <a href="../center/center.do" class="nav-link">고객센터</a>
                                </li>
                            </ul>                        
                        </div>
                        
                    </nav>  

                </div>                                  
            </div>            
        </div>

<center>
        <section class="tm-section">
<h2>장바구니 확인</h2>
<c:choose>
	<c:when test="${map.count==0}">
	장바구니가 비어있습니다.
	</c:when>
	<c:otherwise>
	<form name="form1" id="form1" method="post" action="cart/updateCart.do">
		<table border="1">
			<tr>
				<th>상품명</th>
				<th>단가</th>
				<th>수랑</th>
				<th>금액</th>
				<th>취소</th>
			</tr>
			<c:forEach var="row" items="${map.list}" varStatus="i">
			<tr>
				<td>
					${row.productName}
				</td>
				<td style="width: 80px" align="right">
					<fmt:formatNumber pattern="###,###,###" value="${row.productPrice}"/>
				</td>
				<td>
					<input type="number" style="width: 40px" name="cartAmount" value="${row.cartAmount}" min="1">
					<input type="hidden" name="productId" value="${row.productId}">
				</td>
				<td style="width:100px" align="right">
					<fmt:formatNumber pattern="###,###,###" value="${row.money}"/>
				</td>
				<td>
					<a href="deleteCart.do?cartId=${row.cartId}">삭제</a>
				</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="5" align="right">
				장바구니 금액 합계 : <fmt:formatNumber pattern="###,###,###" value="${map.allSum}" />
				배송료 : ${map.fee}<br>
				전체 주문금액 : <fmt:formatNumber pattern="###,###,###" value="${map.allSum}" />
			</td>
			</tr>
		</table>
		<input type="hidden" name="count" value="${map.count}">
		<button type="submit" id="btnUpdate">수정하기</button>
		<button type="submit" id="btnJumun">구매하기</button>
		</form>
		</c:otherwise>
		</c:choose>
		<button type="button" id="btnList">상품목록</button>
</center>
<a href="../product/productList.do">상품리스트로 돌아가기</a>
<a href="getCartList.do">장바구니 확인하기</a>

        </section>
 
 
        <footer class="tm-footer">
            <div class="container-fluid">
                <div class="row">                  
				
                    <div class="clearfix hidden-lg-up"></div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                        <div class="tm-footer-content-box">
                            <p class="tm-margin-b-20">     
                            <div class="info">
							    ㈜ 막걸리<br>
							    대표 : 개발자<br>
							    주소 : 서울시 금천구 가산동<br>
							    사업자등록번호 620-81-58222<br>
							    대표전화 : 050-555-5555<br>
							    이메일 : kosmo@kosmo.com<br>
							    평일 10:00 ~ 18:00 주말/공휴일 휴무
							 </div>
						
                        </div>
                      </div>  
                    </div>


                </div>

                <div class="row">
                    <div class="col-xs-12 tm-copyright-col">
                        <p class="tm-copyright-text">Copyright 2016 Your Company Name</p>
                    </div>
                </div>
        </footer>

        <!-- load JS files -->
        <script src="../resources/js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap, http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h --> 
        <script src="../resources/js/bootstrap.min.js"></script>                 <!-- Bootstrap (http://v4-alpha.getbootstrap.com/) -->
       
</body>
</html>