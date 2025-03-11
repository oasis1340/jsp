package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;

public class ProductListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductDAO productDAO = new ProductDAO();
		
//		setAttribute
//		화면에서 키 값으로 접근할 수 있는 객체를 보낸다.
		JSONArray products = new JSONArray();
		productDAO.selectAll().stream().map(JSONObject::new).forEach(products::put);
		
//		req.setAttribute("products", productDAO.selectAll());
		req.setAttribute("products", products);
		result.setPath("list.jsp");
		return result;
	}

}
