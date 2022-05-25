<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/community/community.css">

 <div class="commonSection1">
      <div class="commonContent1">
        <img src="http://bdmp-004.cafe24.com/bizdemo99969/img/main/sub-visual04.jpg" style="width: 100%; height: 100%;">
        <div class="commonContent2 text-center">
          <div>
            <h3>COMMUNITY</h3>
          </div>
          <div>
            <p><img src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/icon-home.png"> > 커뮤니티 > 공지사항</p>
          </div> 
        </div>   
      </div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="../index.html"><button class="homeBtn">H</button></a>
        <ul class="navbar-nav mr-auto my-2 my-lg-0 navbar-nav-scroll" style="max-height: 100px;">
          
          <li class="nav-item dropdown dropdownHide">
            <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
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
              묻고답하기
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
    
<!-- ============================================================ -->
    <div class="communitySection2 container text-center">
      <div>
        <div>묻고답하기</div>
        <div>The design and maintenance are excellent.</div>
      </div>
      <div class="NoticeContent">
        <table>
          <tr>
            <th>제목</th>
            <td>${dto.qna_title}</td>
          </tr>
          <tr>
            <th>작성자</th>
            <td>${dto.qna_name}</td>
          </tr>
          <tr>
            <th>작성일</th>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${dto.qna_date}"/></td>
          </tr>
          <tr>
            <td colspan="2">${dto.qna_content}</td>
          </tr>
        </table>
        <div>
          <input type="image" onclick="window.location.href = '/community/community01'" src="http://bdmp-004.cafe24.com/bizdemo99969/img/component/board/board_1/list.gif">
        </div>
      </div>
    </div>
