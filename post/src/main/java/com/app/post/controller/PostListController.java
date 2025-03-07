package com.app.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PostDAO;

public class PostListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		PostDAO postDAO = new PostDAO();
		
//		setAttribute
//		화면에서 키 값으로 접근할 수 있는 객체를 보낸다.
		req.setAttribute("posts", postDAO.selectAll());
		result.setPath("list.jsp");
		return result;
	}

}
