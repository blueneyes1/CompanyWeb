<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">
<head>
	<title>회사홈페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/main.css">
  
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

</head>
<body>  

	<!-- 탑메뉴 -->
	<div class="toTopScroll">
	  <img src="/img/icon-top.png" onClick="javascript:window.scrollTo(0,0)">
	</div>
	<div class="top d-none d-md-block">
	  <div class="topMenu d-none d-md-block container">
	    <span class="home"><a href="/main">HOME</a></span>
	    <c:if test="${ not empty member_id }">
	    	<span><a href="/member/logoutAction">LOGOUT</a></span>
	    </c:if>
	    <c:if test="${ empty member_id }">
	    	<span><a href="/member/login">LOGIN</a></span>
	    </c:if>
	    <span><a href="/member/join">JOIN</a></span>
	    <span><a href="/company/company03">CONTACT US</a></span>
	  </div>
	</div>
	
	<!-- 네비바 -->
	<nav class="navbar navbar-expand-md navbar-light bg-white sticky-top">
	  <div class="container">
	    <a class="navbar-brand" href="/main"><img src="/img/logo.png" alt="로고"></a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" 
	            data-target="#collapsibleNavbar"> 
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="collapsibleNavbar">
	      <!-- ml-auto : margin-left  -->
	      <ul class="navbar-nav ml-auto">
	        <!-- d-block : display: block  display: none -->
	        <li class="nav-item d-sm-block d-md-none ljoin">
	          <a href="/member/login"> <img src="/img/icon-member.png">&nbsp;&nbsp;Login</a>&nbsp;
	          <a href="/member/join"> <img src="/img/icon-join.png">&nbsp;&nbsp;Join</a>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link" href="#">회사소개</a>
	          <div class="dropdown-content">
	            <a href="/company/company01">회사개요</a>
	            <a href="#">CEO인사말</a>
	            <a href="/company/company03">오시는길</a>
	          </div>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link" href="#">사업분야</a>
	          <div class="dropdown-content">
	            <a href="/business/business01">사업분야01</a>
	            <a href="#">사업분야02</a>
	            <a href="#">사업분야03</a>
	          </div>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link" href="#">제품안내</a>
	          <div class="dropdown-content">
	            <a href="/product/product01">제품안내01</a>
	            <a href="#">제품안내02</a>
	            <a href="#">제품안내03</a>
	          </div>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link" href="#">커뮤니티</a>
	          <div class="dropdown-content">
	            <a href="/community/community01">공지사항</a>
	            <a href="#">홍보자료</a>
	            <a href="#">채용안내</a>
	          </div>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link" href="#">고객지원</a>
	          <div class="dropdown-content">
	            <a href="/customer/customer01">1:1문의</a>
	            <a href="/customer/customer02">묻고답하기</a>
	            <a href="/customer/customer03">FAQ</a>
	          </div>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>