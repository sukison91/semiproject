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
	public List<BbsDto> getBbs(String cat) {
		
		return sqlSession.selectList(ns+"getBbscat",cat);
	}
	
	@Override
	public int bbswrite(BbsDto dto) {
		
		return sqlSession.insert(ns+"bbswrite", dto);
	}
	@Override
	public List<BbsDto> getCat1() {
		return sqlSession.selectList(ns+"getCat1");
	}
	
	@Override
	public List<BbsDto> getCat2() {
		return sqlSession.selectList(ns+"getCat2");
	}
	
	@Override
	public List<BbsDto> getCat3() {
		return sqlSession.selectList(ns+"getCat3");
	}
	
	@Override
	public List<BbsDto> getCat4() {
		return sqlSession.selectList(ns+"getCat4");
	}
	
	@Override
	public List<BbsDto> getSearch(String searchValue) {
		System.out.println(searchValue);
		return sqlSession.selectList(ns+"getSearch", searchValue); 
	}
	
	/*
	 * @Override public List<BbsDto> getSearchList(List<String> searchValue) {
	 * return sqlSession.selectList(ns+"getSearchList", searchValue); }
	 */
	@Override
	public List<BbsDto> bbsdetail(int ref) {
		
		return sqlSession.selectList(ns+"bbsdetail", ref);
	}
	
	@Override
	public int comment(BbsDto dto) {
		return sqlSession.insert(ns+"comment",dto);
	}
	
}
