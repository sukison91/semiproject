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

	@Override
	public MemberDto logininfo(MemberDto dto) {
		return sqlSession.selectOne(namespace+"login", dto);
	}
	
	public int addmember(MemberDto mem) {
		int count = sqlSession.insert(namespace + "addmember", mem);
		return count;
	}

	@Override
	public int getId(String id) {
		int count = sqlSession.selectOne(namespace + "getId", id);
		return count;
	}

	@Override
	public MemberDto login(MemberDto mem) {
		return  sqlSession.selectOne(namespace + "login", mem);
	}
	
	@Override
	public int getaka(String aka) {
		return sqlSession.selectOne(namespace + "getaka", aka);
	}

	@Override
	public int getemail(String email) {
		return sqlSession.selectOne(namespace + "getemail", email);
	}

	@Override
	public List<MemberDto> profileUpdate(MemberDto dto){
		return sqlSession.selectList(namespace + "profileUpdate", dto);
	}

	@Override
	public MemberDto profileAf(MemberDto dto) {
		
		return sqlSession.selectOne(namespace + "profileAf", dto);
	}

	
	

}
