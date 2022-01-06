package mul.camp.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.camp.a.dao.MemberDao;
import mul.camp.a.dto.MemberDto;

@Repository	// DB랑 대화
public class MemberDaoImpl implements MemberDao {
	
	@Autowired	// (mybatis에 접근할 객체) 자동생성
	SqlSession sqlSession;	
	
	String namespace = "Member.";

	/*
	 * @Override public List<MemberDto> allmember() { // DB로부터 불러오는 작업 2개이상의 데이터는
	 * selectList List<MemberDto> list = sqlSession.selectList(namespace +
	 * "allmember"); return list; }
	 * 
	 * @Override public MemberDto getmember(MemberDto dto) { // dto:
	 * parameterType(들어오는값) MemberDto mem = sqlSession.selectOne(namespace +
	 * "getmember", dto); return mem; }
	 */
	

}
