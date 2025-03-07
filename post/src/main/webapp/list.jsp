<%@page import="com.app.vo.PostVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록 페이지</title>
</head>
<body>
	
	<table>
		<tr>
			<th>ID</th>
			<th>제목</th>
			<th>내용</th>
		</tr>
		<%
			List<PostVO> posts = (List<PostVO>)request.getAttribute("posts");
			for(PostVO post : posts) {
				
		%>
			<tr>
				<td><%=post.getId() %></td>
				<td><a href="read.post?id=<%=post.getId() %>"><%=post.getPostTitle() %></a></td>
				<td><%=post.getPostContent() %></td>
			</tr>
		<%
			}
		%>
	</table>
	<form action="write.post" method="post">
		<button >글 작성</button>
	</form>
</body>
</html>
</body>
</html>