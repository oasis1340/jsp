<%@page import="java.util.Optional"%>
<%@page import="com.app.vo.ProductVO"%>
<%@page import="com.app.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정 페이지</title>
</head>
<body>
	<%
		ProductDAO productDAO = new ProductDAO();
		ProductVO productVO = new ProductVO();
		Long id = Long.parseLong(request.getParameter("id"));
		
		Optional<ProductVO> foundProduct = productDAO.select(id);
		if(foundProduct.isPresent()) {
			ProductVO product = foundProduct.get();
	%>
	<form action="update" method="post">
		<label>
			<input type="hidden" name="id" value="<%=product.getId() %>"/>
		</label>
		<label>
			<input type="text" name="productName" value="<%=product.getProductName() %>" placeholder="상품명"/>
		</label>
		<label>
			<input type="text" name="productPrice" value="<%=product.getProductPrice() %>" placeholder="상품가격"/>
		</label>
		<label>
			<input type="text" name="productStock" value="<%=product.getProductStock() %>" placeholder="상품재고"/>
		</label>
		<button>수정하기</button>
	</form>
	<%
		}	
	%>
		
</body>
</html>