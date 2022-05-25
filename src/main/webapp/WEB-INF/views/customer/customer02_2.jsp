<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <link rel="stylesheet" href="/css/customer/write.css">
  
  <script>
	
		function checkValue() {
			if(!document.userInfo.qna_title.value) { // empty: null, 길이 0
				alert( "제목을 입력해주세요" );
				document.getElementById( 'qna_title' ).focus();
				return false; // submit전송이안됨
			}
			if(!document.userInfo.qna_name.value) { 
				alert( "이름을 입력해주세요" );
				document.getElementById( 'qna_name' ).focus();
				return false;
			}
			if(!document.userInfo.qna_pw.value) { 
				alert( "비밀번호를 입력해주세요" );
				document.getElementById( 'qna_pw' ).focus();
				return false;
			}
			if(!document.userInfo.qna_content.value) { 
				alert( "내용을 입력해주세요" );
				document.getElementById( 'qna_content' ).focus();
				return false;
			}
			return true; //submit전송됨.
		}

	</script>

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

  <!-- 묻고답하기 - 글쓰기 -->
  <form action="qnaAction" name="qnaForm" onsubmit="return checkValue();">
    <div class="communitySection2 container text-center">
      <div>
        <div>묻고답하기</div>
        <div>The design and maintenance are excellent.</div>
      </div>
        <div class="main">
            <table>
              <tr>
                <td>제목</td>
                <td><input type="text" id="qna_title" name="qna_title"></td>
              </tr>
              <tr>
                <td>작성자</td>
                <td><input type="text" id="qna_name" name="qna_name"></td>
              </tr>
              <tr>
                <td>비밀번호</td>
                <td><input type="password" id="qna_pw" name="qna_pw"></td>
              </tr>
            </table>  
          
        </div>
    </div>
    <div class="container content_textarea">
      <div>
        <textarea name="qna_content" id="qna_content">
        </textarea>
      </div>
    </div>
  </form>
  <div class="container btnImg text-center">
    <table>
      <tr>
        <td></td>
        <td>
          <img src="/img/customer/btn_confirm.gif" onclick="submit()">
          <img src="/img/customer/btn_cancel.gif"></td>
        <td></td>
      </tr>
    </table>
  </div>

<script>
    function submit() {
      var form = document.qnaForm;
    
      form.submit();
    }
  </script>
<script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
<script>CKEDITOR.replace('qna_content');</script>
<!-- <script>CKEDITOR.replace('qna_content',{filebrowserUploadUrl:'/mine/imageUpload.do'});</script> -->

  
  
  