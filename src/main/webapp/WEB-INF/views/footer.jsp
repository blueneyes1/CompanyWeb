<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- footer -->
<div class="footer">
  <div class="container text-center">
    <div>
      <a href="#">회사소개&nbsp;&nbsp;<span>|</span></a>
      <a href="#">개인정보보호정책&nbsp;&nbsp;<span>|</span></a>
      <a href="#">이메일무단수집거부&nbsp;&nbsp;<span>|</span></a>
      <a href="#">묻고답하기&nbsp;&nbsp;<span>|</span></a>
      <a href="#">오시는길&nbsp;&nbsp;<span>|</span></a>
    </div>
    <div>
      <span>회사 : 코딩강사 &nbsp; 주소 : 서울특별시 중구 명동 세종대로 110  &nbsp; 대표 : 홍길동 <br>
        고객지원 : 010-2222-3333, FAX : 070-888-5555, EMAIL : support@gmail.com, 사업자등록번호 : 100-02-00033, 통신판매업 : 제1111-경기-00000호<br>COPYRIGHT(C) 2021 CODINGGANSA. ALL RIGHT RESERVED.</span>
    </div>
    <div>
      <img src="/img/mf-icon01.png" alt="">
      <img src="/img/mf-icon02.png" alt="">
      <img src="/img/mf-icon03.png" alt="">
      <img src="/img/mf-icon04.png" alt="">
    </div>
  </div>
</div>


<script> 
   // back to top 기능
  $(document).ready(function(){
    $(window).scroll(function () {
      if ($(this).scrollTop() > 50) {
        console.log('fadeIn');
        $('#back-to-top').fadeIn();
      } else {
        console.log('fadeOut');
        $('#back-to-top').fadeOut();
      }
    });
    // scroll body to 0px on click
    $('#back-to-top').click(function () {
      console.log('click');
      $('#back-to-top').tooltip('hide');
      $('body,html').animate({
          scrollTop: 0
      }, 500);
      return false;
    });
    $('#back-to-top').tooltip('show');
  });
   
</script>
  
</body>
</html>

