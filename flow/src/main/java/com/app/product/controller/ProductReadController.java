package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;

public class ProductReadController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductDAO productDAO = new ProductDAO();
		Long id = Long.parseLong(req.getParameter("id"));
		System.out.println(id);
		
		req.setAttribute("product", productDAO.select(id).orElseThrow(() -> {
			throw new RuntimeException("ProductReadController user not found");
		}));
		
		
		
		
		result.setPath("read.jsp");
		return result;
	}

}
