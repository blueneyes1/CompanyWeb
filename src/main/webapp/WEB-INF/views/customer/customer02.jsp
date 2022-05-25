<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
  <link rel="stylesheet" href="/css/customer/customer02.css">

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
          <p><img src="/img/icon-home.png"> > 고객지원 > 묻고답하기</p>
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

  <!-- 묻고답하기 -->
  <div class="communitySection2 container text-center">
    <div>
      <div>묻고답하기</div>
      <div>The design and maintenance are excellent.</div>
    </div>
    <div class="qna">
      <table>
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>작성자</th>
          <th>작성일</th>
        </tr>
        <c:forEach var="dto" items="${ qna_list }">
	       	<tr onclick="window.open('/customer/customer02_3?qna_idx=${ dto.qna_idx }', '비밀번호확인', 'width=430,height=300,location=no,status=no,scrollbars=no')">
	            <td>${ dto.qna_idx }</td>
	            <td><img src="/img/customer/icon_sct.gif">${ dto.qna_title }</td>
	            <td>${ dto.qna_name }</td>
	            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${dto.qna_date}"/></td>
			</tr>
	    </c:forEach>
      </table>
    </div>
  </div>

  <!-- search bar -->
  <div class="search container">
    <div>
      <img onclick="window.location.href='customer02_2'" 
      src="/img/customer/write.gif">
    </div>
    <table>
      <tr>
        <td>
          <select name="내용" id="">
            <option value="">제목</option>
            <option value="">내용</option>
            <option value="">작성자</option>
          </select>
        </td>
        <td>
          <input type="text">
        </td>
        <td>
          <input type="image" src="/img/customer/search.gif">
        </td>
      </tr>
    </table>
  </div>


  <script>
    function openWindow( no ){
      window.open('customer02_3?no='+no, '비밀번호확인', 'width=470,height=320,location=no,status=no,scrollbars=no')
    }
  </script>
  
  