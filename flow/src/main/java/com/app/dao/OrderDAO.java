package com.app.dao;



import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.OrderVO;

public class OrderDAO {
	public SqlSession sqlSession;
	
	public OrderDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

//	주문 완료
	public void insert(OrderVO orderVO) {
		sqlSession.insert("order.insert", orderVO);
	}
}
