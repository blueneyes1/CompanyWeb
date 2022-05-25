<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <link rel="stylesheet" href="/css/product/product01.css">

  <!-- 메인 -->
  <!-- 제품안내 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="/img/member/sub-visual02.jpg" 
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>PRODUCT</h3>
        </div>
        <div>
          <p><img src="/img/icon-home.png"> > 제품안내 > 제품안내01</p>
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
            제품안내
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
              제품안내01
          </a>
          <ul class="dropdown-menu asd">
            <li><a class="dropdown-item" href="/product/product01">제품안내01</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">제품안내02</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">제품안내03</a></li>
          </ul>
        </li>
      </ul>
  </nav>

  <!-- 제품안내01 -->
  <div class="productSection2">
    <div>
      <div>제품안내01</div>
      <div>The design and maintenance are excellent.</div>
    </div>
    <div class="productMain container">
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01">
              <img src="/img/product/1.jpg">
            </a>
          </div>
          <div>
            <h3>IM101</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01">
              <img src="/img/product/2.jpg">
            </a>
          </div>
          <div>
            <h3>IM102</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01">
              <img src="/img/product/3.jpg">
            </a>
          </div>
          <div>
            <h3>IM103</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01">
              <img src="/img/product/4.jpg">
            </a>
          </div>
          <div>
            <h3>IM104</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1">
              <img src="/img/product/5.jpg">
            </a>
          </div>
          <div>
            <h3>IM105</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1">
              <img src="/img/product/6.jpg">
            </a>
          </div>
          <div>
            <h3>IM106</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1">
              <img src="/img/product/7.jpg">
            </a>
          </div>
          <div>
            <h3>IM107</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1">
              <img src="/img/product/8.jpg">
            </a>
          </div>
          <div>
            <h3>IM108</h3>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- search bar -->
  <div class="search container">
    <form action="#">
      <table>
        <tr>
          <td>
            <select name="cate">
              <option value="1">제목</option>
              <option value="2">내용</option>
              <option value="3">작성자</option>
            </select>
          </td>
          <td>
            <input type="text">
          </td>
          <td>
            <input type="image" onclick="submit()" src="/img/product/search.gif">
          </td>
        </tr>
      </table>
    </form>
  </div>
