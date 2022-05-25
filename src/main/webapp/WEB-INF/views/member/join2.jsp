<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/member/join.css">

	<script>
		function checkValue() {
			if(!document.userInfo.member_id.value) { // empty: null, 길이 0
				alert( "아이디를 입력해주세요" );
				document.getElementById( 'member_id' ).focus();
				return false; // submit전송이안됨
			}
			if(!document.userInfo.member_id.value == 'no') { // empty: null, 길이 0
				alert( "아이디 중복확인을 해주세요" );
				document.getElementById( 'member_id' ).focus();
				return false; // submit전송이안됨
			}
			if(!document.userInfo.member_pw.value) {
				alert( "비밀번호를 입력해주세요" );
				document.getElementById( 'member_pw' ).focus();
				return false; // submit전송이안됨
			}
			if( ! (document.userInfo.member_pw.value == document.userInfo.member_pw_check.value) ) {
				alert( "비밀번호가 일치하지 않습니다. 다시 입력해주세요" );
				document.getElementById('member_pw').focus();
				return false; //submit전송이 안됨
			}
	    	if(!document.userInfo.member_name.value) { 
				alert("이름을 입력해주세요");
				document.getElementById('member_name').focus();
				return false; //submit전송이 안됨
			}
	    	if(!document.userInfo.member_email.value) {
				alert("이메일을 입력해주세요");
				document.getElementById('member_email').focus();
				return false; 
			}
	    	
	    	return true; //submit전송됨.
		}
		
		// ajax으로 서버와 통신한다.
		// ajax : page 리로딩없이 서버와 통신한다.
		// ajax 용도 : 화면 갱신(reload,redirect)가 없이
		//            부분화면 갱신(통신)을 js에서 한다.
		//           예)네이버 - 실시간검색어, 실시간날씨
		function idCheck() {
			var member_id = $( '#member_id' ).val();
			if(!member_id){
				alert("아이디를 입력하세요.");
				return false;
			}
			// 아이디와 유효성 검사(1보다 같거나 크면 중복 / 0 이면 중복안됨)
			$.ajax( {
				url: 'http://localhost:8090/member/idCheckAjax?member_id=' + member_id,
				type: 'get',
				success: function(data) {
					console.log('통신 성공, data:' + data);
					
					var data_num = Number( data );
					if( data_num >= 1 ) {
						// 아이디가 중복됨.
						alert("아이디가 중복됩니다.");
						$('#member_id_check').val("no");
					}else{
						// 아이디가 중복 안됨. 사용가능.
						alert("아이디가 사용가능합니다.");
						$('#member_id_check').val("yes");
					}
				},
				error: function(){
	    			console.log('통신 실패');
	    		}
			}
			);
		}
		
	</script>

  <!-- 메인 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="/img/member/sub-visual02.jpg" 
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>MEMBER</h3>
        </div>
        <div>
          <p><img src="/img/icon-home.png"> > 회원가입</p>
        </div>
      </div>
    </div>
  </div>

  <!-- 메인 -->
  <!-- 회원가입 -->
  <div class="joinForm container">

    <div class="joinSection1">
      <div><h3>회원가입</h3></div>
      <div><p>The design and maintenance are excellent.</p></div>
    </div>
    <div class="wellcome">
      <h3>OOO사이트에 오신 것을 환영합니다.</h3>
      <h5>-이름과 이메일을 입력해 주시면 가입여부를 확인 후 회원가입 절차가 이루어집니다.</h5>
    </div>
    <br><br>
    <div class="contents">
      <h3>회원가입을 위해서 아래의 양식에 있는 내용을 입력해 주셔야 합니다.</h3>
      <h5>-회원님의 개인정보를 신중하게 보호하고 있으며 회원님의 동의 없이는 기재하신 회원정보가 누출되지 않습니다.
        자세한 내용은 개인정보보호정책에서 확인하세요.</h5>
    </div>
    <!-- 입력폼 -->
    <form action="/member/join2Action" method="post" name="userInfo" onsubmit="return checkValue();">
	    <div class="information1">
	      <div>기본정보</div>
	      <table>
	        <tr>
	          <td>아이디</td>
	          <td>
	            <input type="text" name="member_id" id="member_id" required>
	            <img src="/img/member/btn_iddupl.gif" onclick="idCheck();">
	            (영문 소문자, 숫자로 4~16자)
	            <input type="hidden" name="member_id_check" id="member_id_check" value="no">
	          </td>
	        </tr>
	        <tr>
	          <td>비밀번호</td>
	          <td>
	            <input type="password" name="member_pw" id="member_pw" required>
	            영문/숫자/특수문자조합으로 8~16자리. 첫글자는 영문자로 사용
	          </td>
	        </tr>
	        <tr>
	          <td>비밀번호 확인</td>
	          <td><input type="password" id="member_pw_check"></td>
	        </tr>
	        <tr>
	          <td>이름</td>
	          <td><input type="text" name="member_name" id="member_name" required></td>
	        </tr>
	        <tr>
	          <td>이메일</td>
	          <td><input type="email" name="member_email" id="member_email"></td>
	        </tr>
	        <tr>
	          <td>이메일 수신여부</td>
	          <td>
	          	<input type="radio" name="member_email_receive" value=1>수신
	            <input type="radio" name="member_email_receive" value=0>수신안함</td>
	        </tr>
	        <tr>
	          <td>비밀번호 확인시 질문</td>
	          <td>
	            <select class="size" name="member_pw_question" id="member_pw_question"> 
	              <option value="0">========선택========</option>
	              <option value="1">기억에 남는 추억의 장소는?</option>
	              <option value="2">자신의 인생 좌우명은?</option>
	              <option value="3">자신의 보물 제1호는?</option>
	              <option value="4">가장 기억에 남는 선생님 성함은?</option>
	              <option value="5">내가 좋아하는 캐릭터는?</option>
	            </select>
	          </td>
	        </tr>
	        <tr>
	          <td>비밀번호 확인시 답변</td>
	          <td>
	          	<input type="text" name="member_pw_answer" id="member_pw_answer" value="">
	          </td>
	        </tr>
	        <tr>
	          <td>성별</td>
	          <td>
	          	<input type="radio" name="member_gender" value="male" checked>남자
	          	<input type="radio" name="member_gender" value="female">여자
	          </td>
	        </tr>
	        <tr>
	          <td>생년월일</td>
	          <td>
	            <input type="date" name="member_birth_date" id="member_birth_date">
	          </td>
	        </tr> 
	      </table>
	    </div>

    <div class="Information2">부가정보</div>
    <div class="imageBtn2">
      <input type="image" name="submit" value="submit" src="/img/member/btn_confirm.gif">
      <a href="/" id="cancel">
      	<input type="image" src="/img/member/btn_cancel.gif">
      </a>
    </div>
    
    </form>

  </div>

 