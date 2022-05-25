<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/member/join.css">

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

    <!-- 이용약관 -->
    <div class="term1">
      <div>이용약관</div>
      <div>
        <textarea name="" id="" cols="30" rows="10">
          이용약관
        </textarea>
        <div><input class="check" type="checkbox">위 약관에 동의합니다.</div>
      </div>
    </div>
    <!-- 개인정보보호정책 -->
    <div class="term2">
      <div>개인정보보호정책</div>
      <div>
        <textarea name="" id="" cols="30" rows="10">
          개인정보보호정책
        </textarea>
        <div><input class="check" type="checkbox">위 개인정보취급방침에 동의합니다.</div>
      </div>
    </div>
    <!-- 개인정보의 수집 및 이용목적 -->
    <div class="term3">
      <div>개인정보의 수집 및 이용목적</div>
      <div>
        <textarea name="" id="" cols="30" rows="10">
          개인정보의 수집 및 이용목적
        </textarea>
        <div><input class="check" type="checkbox">위 개인정보의 수집 및 이용목적에 동의합니다.</div>
      </div>
    </div>

    <div class="imageBtn">
      <input type="image" onclick="agree();" src="/img/member/btn_join.gif">
    </div>

  </div>

  <script>
    function agree() {
      var isAllCheck = true;
      var checkboxArray = document.getElementsByClassName('check');
      for(var cbx of checkboxArray) {
        if(cbx.checked == false){
          isAllCheck = false;
          break;
        }
      }
      if(isAllCheck == true){
        window.location.href = 'join2'
        
      }else{
        alert('이용약관에 모두 동의하셔야 회원으로 가입하실 수 있습니다.');
      }
    }
  </script>