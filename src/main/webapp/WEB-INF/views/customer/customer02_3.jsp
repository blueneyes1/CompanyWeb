<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>비밀번호 확인</title>

  <!-- My CSS -->
  <link rel="stylesheet" href="/css/customer/checkPW.css">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

</head>
<body>
  <form action="" name="frm">
	  	<div class="main">
	    
	      <table>
	        <tr>
	          <td colspan="2">비밀번호입력</td>
	        </tr>
	        <tr>
	          <td colspan="2">글 작성시 입력한 비밀번호를 입력하세요.</td>
	        </tr>
	        <tr>
	          <td style="width: 20%;"><img src="/img/customer/txt_pass.gif"></td>          
	          <td style="width: 80%;"><input type="password" name="qna_pw"></td>
	          <input type="hidden" name="qna_idx" value=${ qna_idx } >
	        </tr>
	        
	      </table>
	    
	    <div>
	    	<input type="image" src="/img/customer/btn_confirm.gif" onclick="popup_close();">
		</div>
	    <div>
	    	<input onclick="window.close()" class="closeBtn" type="image" onclick="window.close()" src="/img/member/btn_close.gif"></a>
	    </div>
  	</div>
  </form>
  
  <script type="text/javascript">

		function popup_close()
		{
			window.opener.name="parent";
			document.frm.target = "parent";
			document.frm.method = "post";
			document.frm.action = "/customer/customer02_4";
			document.frm.submit();
			window.close();
		}
	
	</script>
  
</body>
</html>