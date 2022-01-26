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
<link type="text/css" rel="stylesheet" href="css/common.css"></link>
<link type="text/css" rel="stylesheet" href="css/reset.css"></link>
<link type="text/css" rel="stylesheet" href="css/main.css"></link>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@700&family=Gowun+Batang&display=swap" rel="stylesheet">

</head>
<script>
	function onPage(){
		//location.href="write.jsp";
		window.open('write.jsp', '주문등록', "height=550,width=450,status=yes,toolbar=no,menubar=no,location=no,left=500, top=100");
	}
</script>
<body>
	<div id="container">
		<header id="header">
			<div class="header_wrap">
				<h1 class="logo" onclick="location.href='index.jsp'">앗 왠떡이야</h1>
			</div>
			<div class="nav_wrap">
				<ul>
					<li onclick="onPage();">주문등록하기</li>
					<li>주문삭제하기</li>
				</ul>
			</div>
		</header>
	