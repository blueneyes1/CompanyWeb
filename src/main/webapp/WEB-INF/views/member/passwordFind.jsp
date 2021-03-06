<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원비밀번호 찾기</title>

  <link rel="stylesheet" href="/css/member/passwordFind.css">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

</head>
<body>
  <div class="main">
  	<form action="/member/passwordFindAction" name="passwordFindForm">
      <table>
      	<c:if test="${ not empty find_member_pw }">
      		<tr>
	          <td colspan="2">비밀번호 찾기</td>
	        </tr>
	        <tr>
	          <td colspan="2"></td>
	        </tr>
	        <tr>
	        	<td align="center">
	        		회원님의 암호는 ${ find_member_pw } 입니다. <br>
	        	</td>
	        </tr>
		</c:if>
		
      	<c:if test="${ empty find_member_pw }">
	        <tr>
	          <td colspan="2">비밀번호 찾기</td>
	        </tr>
	        <tr>
	          <td colspan="2">비밀번호를 잊어버리셨나요?
	            <br>회원님의 성명과 아이디,이메일을 입력하여 주세요.</td>
	        </tr>
	        <tr>
	          <td style="width: 20%;">
	            <img src="/img/member/txt_join1.gif">
	            <img src="/img/member/txt_login_01.gif">
	            <img src="/img/member/txt_email.gif">
	          </td>
	          <td style="width: 80%;">
	            <input type="text" name="member_name">
	            <input type="text" class="idText" name="member_id">
	            <input type="text" class="emailText" name="member_email">
	          </td>
	        </tr>
	     </c:if>
      </table>
      
      <c:if test="${ not empty find_member_pw }">
   		<div><input type="image" src="/img/member/btn_confirm.gif" onclick="window.close()"></div>
 	  	<div><input type="image" src="/img/member/btn_close.gif" onclick="window.close()"></div>
      </c:if>
      
      <c:if test="${ empty find_member_pw }">     	  
  	 	<div><input type="image" src="/img/member/btn_confirm.gif" onclick="submit()"></div>
  	 	<div><input type="image" src="/img/member/btn_close.gif" onclick="window.close()"></div>
  	  </c:if>
    </form>
  </div>
    
  <script>
    function submit() {
      var form = document.passwordFindForm;
    
      form.submit();
    }
  </script>
</body>
</html>