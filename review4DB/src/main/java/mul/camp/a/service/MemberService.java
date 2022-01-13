package mul.camp.a.service;

import java.util.List;

import mul.camp.a.dto.MemberDto;

public interface MemberService {

	boolean addmember(MemberDto dto);

	int getId(String id);
	int getaka(String aka);
	int getemail(String email);
	
	
	MemberDto login(MemberDto mem);
	
	public MemberDto logininfo(MemberDto dto);
	
	
}

