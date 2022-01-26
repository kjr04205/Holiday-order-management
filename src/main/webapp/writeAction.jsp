<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="member.Member" %>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="member" class="member.Member" scope="page" />
<jsp:setProperty name="member" property="memberName" />
<jsp:setProperty name="member" property="memberPhone" />
<jsp:setProperty name="member" property="memberAddress" />
<jsp:setProperty name="member" property="memberOrder" />
<jsp:setProperty name="member" property="memberMoney" />
<jsp:setProperty name="member" property="memberInfo" />
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
<html>
<body>
	<%
		try{
			MemberDAO memberDAO = new MemberDAO();
			int result = memberDAO.write(member.getMemberName(), member.getMemberPhone(), member.getMemberAddress(), member.getMemberOrder(), member.getMemberMoney(), member.getMemberInfo());
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('주문정보등록에 실패하였습니다. 관리자에게 문의하세요.')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('주문정보등록 완료하였습니다.')");
				script.println("opener.location.reload()");
				script.println("window.close()");
				script.println("</script>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
	%>
</body>
</html>