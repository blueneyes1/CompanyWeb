<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
  <link rel="stylesheet" href="/css/customer/customer01.css">

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
          <p><img src="/img/icon-home.png"> > 고객지원 > 1:1문의</p>
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
              1:1문의
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

  <!-- 1:1문의 -->
  <div class="communitySection2 container text-center">
    <div>
      <div>1:1문의</div>
      <div>The design and maintenance are excellent.</div>
    </div>
    <form action="/customer/one2one_insert" method="post" name="one2oneInfo" onsubmit="return checkValue()">
    <div class="question">      
        <table>
          <tr>
            <td>구분</td>
            <td><select name="cate">
                  <option value="1">로그인</option>
                  <option value="2">회원가입</option>
                  <option value="3">이용안내</option>
                </select>
            </td>
          </tr>
          <tr>
            <td>성명</td>
            <td><input type="text" class="inputStyle1" name="one2one_name"></td>
          </tr>
          <tr>
            <td>전화번호</td>
            <td><input type="text" class="inputStyle1" name="one2one_phone"></td>
          </tr>
          <tr>
            <td>이메일</td>
            <td><input type="text" class="inputStyle2" name="one2one_email"></td>
          </tr>
          <tr>
            <td>주소</td>
            <td>
		
		<input type="text" style="margin-bottom:10px;" id="sample6_postcode" placeholder="우편번호">
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" style="margin-bottom:10px;" class="inputStyle1" name="sample6_address" id="sample6_address" placeholder="주소"><br>
		<input type="text" class="inputStyle1" name="sample6_detailAddress" id="sample6_detailAddress" placeholder="상세주소">
		<input type="hidden" class="inputStyle1" id="sample6_extraAddress" placeholder="참고항목">
		            

            </td>
          </tr>
          <tr>
            <td>제목</td>
            <td><input type="text" class="inputStyle2" name="one2one_title"></td>
          </tr>
          <tr>
            <td>설명</td>
            <td><textarea name="one2one_content" rows="10" style="width: 90%;"></textarea></td>
          </tr>
        </table>
      
    </div>
    <div class="btn">
      <input style="vertical-align: middle;" type="image" src="/img/customer/btn_confirm.gif">
      
      <a href="/" style="display: inline-block; width: 65px; height: 35px;">
      	<img style="vertical-align: middle;" src="/img/customer/btn_cancel.gif">
      </a>
      
    </div>
	</form>          
  </div>
  
  <script>
    
	function checkValue() {
		
		if(!document.one2oneInfo.one2one_name.value) { //empty: null, 길이 0
			alert("이름을 입력해주세요");
			document.getElementById('one2one_name').focus();
			return false; //submit전송이 안됨
		}
		if(!document.one2oneInfo.one2one_phone.value) { //empty: null, 길이 0
			alert("폰번호을 입력해주세요");
			document.getElementById('one2one_phone').focus();
			return false; //submit전송이 안됨
		}
		if(!document.one2oneInfo.one2one_email.value) { //empty: null, 길이 0
			alert("이메일을 입력해주세요");
			document.getElementById('one2one_email').focus();
			return false; //submit전송이 안됨
		}
		if(!document.one2oneInfo.one2one_address.value) { //empty: null, 길이 0
			alert("주소를 입력해주세요");
			document.getElementById('one2one_address').focus();
			return false; //submit전송이 안됨
		}
		if(!document.one2oneInfo.one2one_title.value) { //empty: null, 길이 0
			alert("제목을 입력해주세요");
			document.getElementById('one2one_title').focus();
			return false; //submit전송이 안됨
		}
		if(!document.one2oneInfo.one2one_content.value) { //empty: null, 길이 0
			alert("내용을 입력해주세요");
			document.getElementById('one2one_content').focus();
			return false; //submit전송이 안됨
		}
		
		return true;
	}

	</script>
	
	<!-- 다음 우편번호 서비스 API -->
    <!-- http://postcode.map.daum.net/guide -->
	
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
