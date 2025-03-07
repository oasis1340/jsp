<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보 페이지</title>
</head>
<body>

	<%
		PostVO post = (PostVO)request.getAttribute("post");	
	%>
	<table>
		<tr>
			<th>ID</th>
			<th>제목</th>
			<th>내용</th>
		</tr>
		<tr>
			<td><%=post.getId() %></td>
			<td><%=post.getPostTitle() %></td>
			<td><%=post.getPostContent() %></td>
		</tr>
	</table>
	
	<div>
		<a href="list.post">목록으로 가기</a>
		<a href="update.post?id=<%=post.getId() %>">글 수정</a>
		<a href="delete-ok.post?id=<%=post.getId() %>">글 삭제</a>
	
	</div>
	
</body>
</html>