<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="member.Member" %>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.util.ArrayList" %>

<%@include file="header.jsp"%>
	
	<input onkeyup="filter()" type="text" id="value" placeholder="전화번호를 검색해주세요.">
	
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
		
		<tbody class="after">
			<%
				MemberDAO memberDAO = new MemberDAO();
				ArrayList<Member> list = memberDAO.getList();
				for(int i=0; i<list.size(); i++){
			%>
			<tr class="item">
				<td><%= list.get(i).getMemberID() %></td>
				<td><%= list.get(i).getMemberName() %></td>
				<td class="name"><%= list.get(i).getMemberPhone() %></td>
				<td><%= list.get(i).getMemberAddress() %></td>
				<td><%= list.get(i).getMemberOrder() %></td>
				<td><%= list.get(i).getMemberMoney() %></td>
				<td><%= list.get(i).getMemberInfo() %></td>
				<td><a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?memberID=<%= list.get(i).getMemberID() %>">x</a></td>
			</tr>  
			<%
				}
			%>
			
		</tbody>
		
		<tbody class="before none">
			<%
				MemberDAO memberDAO2 = new MemberDAO();
				ArrayList<Member> list2 = memberDAO.getList2();
				for(int i=0; i<list2.size(); i++){
			%>
			<tr class="item">
				<td><%= list2.get(i).getMemberID() %></td>
				<td><%= list2.get(i).getMemberName() %></td>
				<td class="name"><%= list2.get(i).getMemberPhone() %></td>
				<td><%= list2.get(i).getMemberAddress() %></td>
				<td><%= list2.get(i).getMemberOrder() %></td>
				<td><%= list2.get(i).getMemberMoney() %></td>
				<td><%= list2.get(i).getMemberInfo() %></td>
				<td>&nbsp;</td>
			</tr>  
			<%
				}
			%>
			
		</tbody>
	</table>
	</div>
	
<%@include file="footer.jsp"%>