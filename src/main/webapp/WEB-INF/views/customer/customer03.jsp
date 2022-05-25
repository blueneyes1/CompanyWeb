<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
  <link rel="stylesheet" href="/css/customer/customer03.css">

  <!-- 메인 -->
  <!-- 1:1문의 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="/img/member/sub-visual02.jpg" 
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>COSTOMER</h3>
        </div>
        <div>
          <p><img src="/img/icon-home.png"> > 고객지원 > FAQ</p>
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
            고객지원
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
              FAQ
          </a>
          <ul class="dropdown-menu asd">
            <li><a class="dropdown-item" href="/customer/customer01">1:1문의</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/customer/customer02">묻고답하기</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/customer/customer03">FAQ</a></li>
          </ul>
        </li>
      </ul>
  </nav>

  <!-- FAQ -->
  <div class="communitySection2 container text-center">
    <div>
      <div>FAQ</div>
      <div>The design and maintenance are excellent.</div>
    </div>
    <div class="faq">
      <table>
      
      	<c:forEach var="dto" items="${ faq_list }">
          	<tr onclick="location.href='/customer/customer03_1?faq_idx=${ dto.faq_idx }';" style="cursor:pointer;">
				<td class="t01">질문</td>
				<td class="t02">${ dto.faq_title }</td>
			</tr>
		</c:forEach>
        
      </table>
    </div>
  </div>


<!-- search bar -->
  <div class="search container">
  	<form action="/customer/customer03" method="post">
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
	          <input type="image" src="/img/customer/search.gif">
	        </td>
	      </tr>
	    </table>
    </form>
  </div>