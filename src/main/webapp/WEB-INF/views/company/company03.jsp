<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <link rel="stylesheet" href="/css/company/company03.css">

  <!-- 메인 -->
  <!-- 회사소개1 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="/img/member/sub-visual01.jpg" 
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>COMPANY</h3>
        </div>
        <div>
          <p><img src="/img/icon-home.png"> > 회사소개 > 오시는길</p>
        </div>
      </div>
    </div>
  </div>
  <!-- COMMON - 드랍다운 -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/main"><button class="homeBtn">H</button></a>
      <ul class="navbar-nav mr-auto my-2 my-lg-0 navbar-nav-scroll" 
          style="max-height: 100px;">
        
        <li class="nav-item dropdown dropdownHide">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" 
            data-toggle="dropdown" aria-expanded="false">
            회사소개
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
            회사개요
          </a>
          <ul class="dropdown-menu asd">
            <li><a class="dropdown-item" href="/company/company01">회사개요</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">CEO인사말</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/company/company03">오시는길</a></li>
          </ul>
        </li>
      </ul>
  </nav>

  <!-- 오시는길 -->
  <div class="companyMap container">
    <div class="companyMapTitle text-center">
      <div>
        <h3>오시는길</h3>
      </div>
      <div>
        <p>The design and maintenance are excellent.</p>
      </div>
    </div>
    <div class="map-responsive">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.52304825964!2d126.97575641555301!3d37.566299431899026!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2f332cb082b%3A0xe92b70ac420cf0a8!2z7ISc7Jq47Yq567OE7Iuc7LKt!5e0!3m2!1sko!2skr!4v1638338775387!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </div>
    <div class="companyMapContent">
      <table>
        <tr>
          <th>주소</th>
          <td>서울특별시 중구 명동 세종대로 110</td>
        </tr>
        <tr>
          <th>연락처</th>
          <td>010-1111-2222</td>
        </tr>
        <tr>
          <th>이메일</th>
          <td>support@gmail.com</td>
        </tr>
      </table>
    </div>

  </div>



