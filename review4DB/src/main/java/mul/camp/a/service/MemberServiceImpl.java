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
		// TODO Auto-generated method stub
		return false;
	}
	
	/*
	 * @Override public List<MemberDto> allmember() { return dao.allmember(); // 받아서
	 * 바로 넘겨줘버림 }
	 * 
	 * @Override public MemberDto getmember(MemberDto dto) { return
	 * dao.getmember(dto); }
	 */
	
}
