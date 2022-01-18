package mul.camp.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.camp.a.dao.BbsDao;
import mul.camp.a.dto.BbsDto;

@Repository
public class BbsDaoimpl implements BbsDao {

	@Autowired
	SqlSession sqlSession;
	
	String ns = "Bbs.";


	@Override
	public List<BbsDto> getBbs() {
		return sqlSession.selectList(ns+"getBbs");
	}


	@Override
	public List<BbsDto> getime(String category) {
		
		System.out.println("여기는 category입니다 " + category);
		
		return sqlSession.selectList(ns+"getime", category);
	}


	


}
