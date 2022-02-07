<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="member.Member" %>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.util.ArrayList" %>

<%@include file="header.jsp"%>
	<%-- <h1>명절 주문관리 프로그램</h1> --%>
	<div id="table_wrap">
		<table id="member_container">
		<colgroup>
			<col width="5%">
			<col width="10%">
			<col width="20%">
			<col width="20%">
			<col width="15%">
			<col width="10%">
			<col width="15%">
			<col width="5%">
		</colgroup>
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>주문내용</th>
				<th>금액</th>
				<th>특이사항</th>
				<th>&nbsp;</th>
			</tr>
		</thead>
		
		<tbody>
			<%
				MemberDAO memberDAO = new MemberDAO();
				ArrayList<Member> list = memberDAO.getList();
				for(int i=0; i<list.size(); i++){
			%>
			<tr>
				<td><%= list.get(i).getMemberID() %></td>
				<td><%= list.get(i).getMemberName() %></td>
				<td><%= list.get(i).getMemberPhone() %></td>
				<td><%= list.get(i).getMemberAddress() %></td>
				<td><%= list.get(i).getMemberOrder() %></td>
				<td><%= list.get(i).getMemberMoney() %></td>
				<td><%= list.get(i).getMemberInfo() %></td>
				<td><a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?memberID=<%= list.get(i).getMemberID() %>">삭제</a></td>
			</tr>  
			<%
				}
			%>
			
		</tbody>
	</table>
	</div>
	
<%@include file="footer.jsp"%>