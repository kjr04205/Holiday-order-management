<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="member.Member" %>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.util.ArrayList" %>

<%@include file="header.jsp"%>
	<%-- <h1>명절 주문관리 프로그램</h1> --%>
	<table id="member_container">
		<colgroup>
			<col width="10%">
			<col width="20%">
			<col width="25%">
			<col width="15%">
			<col width="10%">
			<col width="20%">
		</colgroup>
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>주문내용</th>
				<th>입금여부</th>
				<th>특이사항</th>
			</tr>
		</thead>
		
		<tbody>
			<%
				MemberDAO memberDAO = new MemberDAO();
				ArrayList<Member> list = memberDAO.getList();
				for(int i=0; i<list.size(); i++){
			%>
			<tr>
				<td><%= list.get(i).getMemberName() %></td>
				<td><%= list.get(i).getMemberPhone() %></td>
				<td><%= list.get(i).getMemberAddress() %></td>
				<td><%= list.get(i).getMemberOrder() %></td>
				<td><%= list.get(i).getMemberMoney() %></td>
				<td><%= list.get(i).getMemberInfo() %></td>
			</tr>
			<%
				}
			%>
			
		</tbody>
	</table>
<%@include file="footer.jsp"%>