package mul.camp.a.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.camp.a.dao.BbsDao;

@Repository
public class BbsDaoimpl implements BbsDao {

	@Autowired
	SqlSession sqlSession;
	
	String namespace = "Bbs.";
	
}
