<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<title>center</title>
<!--
Classic Template
http://www.templatemo.com/tm-488-classic
-->
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" href="../resources/css/templatemo-style.css">                                   <!-- Templatemo style -->
          <link rel="stylesheet" type="text/css" href="../resources/css/center.css" media="all" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
    
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
                                 
                               <c:if test="${id == null}"> 
                               <li class="nav-item">                                                               
                                       <a href="logIn/logIn.do" class="nav-link">로그인</a>                                                                                                                                                     
                                </li>
                                 </c:if>              
                                                          
                                <c:if test="${id != null}">                                 
                               <li class="nav-item">   
                                  <a href="logIn/logOut.do" class="nav-link">${id}님, 환영합니다. 로그아웃</a>                  
                                </li> 
                                </c:if>
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
<div class="my_container">
    <div class="my_wrapper fnq">
        <div class="CustomerCenter_title pc">
            <span>고객센터</span>
        </div>
        
        <div class="CustomerCenter_FAQ pc">
            <span>자주 묻는 질문</span>
        </div>
        
            <div class="CustomerCenter_FAQ_kinds">
                <div onclick="location.href='center.do'" class="active">전체</div>
                <div onclick="location.href='center1.do'">회원질문</div>
                <div onclick="location.href='center2.do'">주문/결제</div>
                <div onclick="location.href='center3.do'">취소/교환/반품</div>
            </div>
        </div>
        <ul class="CustomerCenter_FAQ_list">
                                <li>
                        <input type="radio" id="Question01" name="CustomerCenter_FAQ_Question" class="inputhidden">
                        <label for="Question01">회원가입은 무료인가요?</label>
                        <div class="CustomerCenter_FAQ_Answer">
                            <span>네 무료입니다.</span>
                        </div>
                    </li>
                                        <li>
                        <input type="radio" id="Question02" name="CustomerCenter_FAQ_Question" class="inputhidden">
                        <label for="Question02">회원 정보 (주소 포함) 변경하고싶어요</label>
                        <div class="CustomerCenter_FAQ_Answer">
                            <span>오른쪽 상단 [로그인] → 내정보 → 변경하기 버튼 누르고 정보를 변경 하면 됩니다. </span>
                        </div>
                    </li>
                                  
                
                            </ul>
        <div class="OtherQuestion mobile">
            <span>다른 질문 있으신가요?</span>
        </div>
        <form action="../question/questionList.do">
        <div class="Question_btn fnq">
            <button type="submit" class="OneToOneQuestion_btn">더 많은 질문</button>
        </div>
        </form>
    </div>
</div>
</body>
</html>