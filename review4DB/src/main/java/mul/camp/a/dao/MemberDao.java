package mul.camp.a.dao;

import java.util.List;

import mul.camp.a.dto.MemberDto;

public interface MemberDao {

	int addmember(MemberDto mem);
	
	int getId(String id);
	int getaka(String aka);
	int getemail(String email);
	
	MemberDto login(MemberDto mem);

	/*
	 * return값이 allmember니까 List로 넘겨줌 List<MemberDto> allmember();
	 * 
	 * MemberDto getmember(MemberDto dto);
	 */
	public MemberDto logininfo(MemberDto dto);
	
	
	}

