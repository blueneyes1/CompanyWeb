<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
    
  <link rel="stylesheet" href="/css/community/community.css">

  <!-- 메인 -->
  <!-- 공지사항 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="/img/member/sub-visual02.jpg" 
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>COMMUNITY</h3>
        </div>
        <div>
          <p><img src="/img/icon-home.png"> > 커뮤니티 > 공지사항</p>
        </div>
      </div>
    </div>
  </div>
  <!-- COMMON - 드랍다운 -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/main"><button class="homeBtn">H</button></a>
      <ul class="navbar-nav mr-auto navbar-nav-scroll" 
          style="max-height: 100px;">
        
        <li class="nav-item dropdown dropdownHide">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" 
            data-toggle="dropdown" aria-expanded="false">
            커뮤니티
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="/company/company01">회사소개</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/business/business01">사업분야</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/product/product01">제품안내</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/community/community01">커뮤니티</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/customer/customer01">고객지원</a></li>
          </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" 
              role="button" data-toggle="dropdown" aria-expanded="false">
              공지사항
          </a>
          <ul class="dropdown-menu asd">
            <li><a class="dropdown-item" href="/community/community01">공지사항</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">홍보자료</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">채용안내</a></li>
          </ul>
        </li>
      </ul>
  </nav>

  <!-- 공지사항 -->
  <div class="communitySection2 container text-center">
    <div>
      <div>공지사항</div>
      <div>The design and maintenance are excellent.</div>
    </div>
    <div class="Notice">
      <table>
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>작성일</th>
        </tr>
        
        <c:forEach var="dto" items="${ notice_list }" varStatus="status">
	        <tr onclick="window.location.href='/community/community01_1?notice_idx=${dto.notice_idx}';"  style="cursor:pointer;">
	          <td>${ status.count  }</td>
	          <td>${ dto.notice_title }</td>
	          <td><fmt:formatDate pattern="yyyy-MM-dd" value="${ dto.notice_date }" /></td>
	        </tr>
        </c:forEach>
        
      </table>
    </div>
  </div>
  

  <!-- search bar -->
  <div class="search container">
  	<form action="/community/community01" method="post">
	    <table>
	      <tr>
	        <td>
	          <select name="search_cate" id="search_cate">
	            <option value="title">제목</option>
	            <option value="content">내용</option>
	          </select>
	        </td>
	        <td>
	          <input type="text" name="keyword">
	        </td>
	        <td>
	          <input type="image" src="/img/community/search.gif">
	        </td>
	      </tr>
	    </table>
    </form>
  </div>
