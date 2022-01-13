package mul.camp.a.dao;

import java.util.List;

import mul.camp.a.dto.MemberDto;

public interface MemberDao {

	int addmember(MemberDto mem);
	
	int getId(String id);
	int getaka(String aka);
	int getemail(String email);
	
	MemberDto login(MemberDto mem);
	
	public MemberDto logininfo(MemberDto dto);
	
	}

