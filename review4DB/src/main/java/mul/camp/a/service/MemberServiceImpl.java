package mul.camp.a.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.camp.a.dao.MemberDao;
import mul.camp.a.dto.MemberDto;

@Service	// DAO를 편집할 수 있는 공간
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;

	@Override
	public boolean addmember(MemberDto dto) {
		int count = dao.addmember(dto);		
		return count>0?true:false;
	}

	@Override
	public int getId(String id) {
		return dao.getId(id);
	}
	
	@Override
	public MemberDto login(MemberDto mem) {		
		return dao.login(mem);
	}
	
	@Override
	public int getaka(String aka) {
		return dao.getaka(aka);
	}
	@Override
	public int getemail(String email) {
		return dao.getemail(email);
	}

	@Override
	public MemberDto logininfo(MemberDto dto) {
		
		return dao.logininfo(dto);
	}
	
	/*
	 * @Override public List<MemberDto> allmember() { return dao.allmember(); // 받아서
	 * 바로 넘겨줘버림 }
	 * 
	 * @Override public MemberDto getmember(MemberDto dto) { return
	 * dao.getmember(dto); }
	 */
	
}
