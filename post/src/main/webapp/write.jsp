<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 추가 페이지</title>
</head>
<body>
	<form action="write-ok.post" method="post">
		<label>
			<input type="text" name="postTitle" placeholder="제목" />
		</label>
		<label>
			<input type="text" name="postContent" placeholder="내용" />
		</label>
		<button>작성하기</button>
	</form>
</body>
</html>