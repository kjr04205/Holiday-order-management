<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="member.Member" %>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOM(Holiday order management)</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/common.css"></link>
<link type="text/css" rel="stylesheet" href="css/reset.css"></link>
<link type="text/css" rel="stylesheet" href="css/main.css"></link>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@700&family=Gowun+Batang&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
<html>
<script>
	
	function formSubmit(){
		if(!document.form1.memberName.value){
			alert("주문자 성함을 입력하세요");
			document.form1.memberName.focus();
			return false;
		}
		
		if(!document.form1.memberPhone.value || document.form1.memberPhone.value.length < 6){
			alert("전화번호를 입력하세요");
			document.form1.memberPhone.focus();
			return false;
		}
		
		if(!document.form1.memberAddress.value){
			alert("주소를 입력하세요");
			document.form1.memberAddress.focus();
			return false;
		}
		
		if(!document.form1.memberOrder.value){
			alert("주문내용을 입력하세요");
			document.form1.memberOrder.focus();
			return false;
		}
		
		if(!document.form1.memberMoney.value){
			alert("금액을 입력하세요");
			document.form1.memberMoney.focus();
			return false;
		}
		
	}
</script>
<body>
	<div class="container">
        <div class="row">
        	<h4 class="title">주문 등록</h4>
        	<form method="post" action="writeAction.jsp" id="form1" name="form1" onsubmit="return formSubmit()">
        		<label for="memberName">주문자 성함</label>
	        	<input type="text" name="memberName" placeholder="이름을 입력해주세요." id="memberName" class="textbox" />
	        	<label for="memberPhone">전화번호(필수)</label>
	        	<input type="text" pattern="[0-9]+" name="memberPhone" placeholder="전화번호 뒷 8자리를 입력하세요." id="memberPhone" maxlength="8" class="textbox" />
	        	<label for="memberAddress">주소</label>
	        	<input type="text" name="memberAddress" placeholder="주소를 입력하세요." id="memberAddress" class="textbox" />
	        	<label for="memberOrder">주문내용</label>
	        	<input type="text" name="memberOrder" placeholder="주문내용을 입력하세요." id="memberOrder" class="textbox" />
	        	<label for="memberMoney">금액</label>
	        	<input type="text" name="memberMoney" placeholder="금액을 입력하세요." id="memberMoney" pattern="[0-9]+" maxlength="8" class="textbox" />
	        	<label for="memberInfo">특이사항</label>
	        	<input type="text" name="memberInfo" placeholder="특이사항이 있다면 적어주세요." id="memberInfo" class="textbox" />
	            <input type="submit" value="등록하기" style="width:150px; margin-top:20px; padding:10px; margin-left:150px;">
        	</form>
        </div>
    </div>
</body>
</html>