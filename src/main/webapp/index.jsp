<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
			<tr>
				<td>안효인</td>
				<td>01045783756</td>
				<td>경산시 진량읍 앗왠떡이야</td>
				<td>떡국 2되</td>
				<td>X</td>
				<td>떡국 1되씩 나눠서 담아달라고 했음.</td>
			</tr>
			<tr>
				<td>양라희</td>
				<td>01045113711</td>
				<td>경산시 대구시 앗왠떡이야</td>
				<td>떡국 4되</td>
				<td>X</td>
				<td>떡국 2되씩 나눠서 담아달라고 했음.</td>
			</tr>
		</tbody>
	</table>
<%@include file="footer.jsp"%>