<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 테스트</title>
</head>
<body>
<%--    <h1>값을 받았는지 테스트!</h1>
   <!-- <% request.getAttribute("name") %> -->
   <h1>${param.name}</h1>
   <h1>${name}</h1>
   
   <c:if test="${name == '홍길동'}">
      <h1>${name}</h1>
   </c:if>
   
   
   <!-- choose문 -->
   <c:choose>
      <c:when test="${name == '홍길동'}">
         <h1>${name}은 의적</h1>
      </c:when>
      <c:when test="${name == '김동건'}">
         <h1>${name}은 장동건</h1>
      </c:when>
      <c:when test="${name == '이덕준'}">
         <h1>영앤리치 ${name}</h1>
      </c:when>
      <c:otherwise></c:otherwise>
   </c:choose>
    --%>
<%--    
   <c:forEach var="i" begin="1" end="10" step="1">
      ${i}
   </c:forEach>
    --%>
<%--     
    <c:forEach var="data" items="${chars}">
       <h1>
          ${data}
       </h1>
    </c:forEach>

    <c:forEach var="data" items="${datas}">
       <h1>
          <c:out value="${data}"></c:out>
       </h1>
    </c:forEach>
    
     --%>
     <%-- 
     <c:if test="${products.size() > 0}">
        <c:forEach var="product" items="${products}">
           <div>
              <div>
                 <span>상품 가격</span><c:out value="${product.getProductPrice}"></c:out>
                 <span>상품명 : </span><c:out value="${product.productName}" escapeXml="true"></c:out>
              </div>
              <div>
                 <span>상품 가격</span><c:out value="${product.getProductPrice}"></c:out>
                 <span>상품 가격 : </span><c:out value="${product.productPrice}"></c:out>
              </div>
           </div>
        </c:forEach>
     </c:if>
     <c:if test="${products.size() == 0}">
        <h1>게시글이 없습니다.</h1>
     </c:if>
    --%>
    
</body>
<script type="text/javascript">
	const products = ${products};
	console.log(products)
	products.forEach((product) => {
		document.write("상품 이름" + product.productName)
	})
</script>
</html>
