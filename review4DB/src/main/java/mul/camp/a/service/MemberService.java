package mul.camp.a.service;

import java.util.List;

import mul.camp.a.dto.MemberDto;

public interface MemberService {

	boolean addmember(MemberDto dto);

	int getId(String id);
	int getaka(String aka);
	int getemail(String email);
	
	MemberDto login(MemberDto mem);
	
	/*
	 * List<MemberDto> allmember();
	 * 
	 * MemberDto getmember(MemberDto dto);
	 */
	List<MemberDto> profileUpdate(MemberDto dto);
	
	MemberDto profileAf(MemberDto dto);
	
	public MemberDto logininfo(MemberDto dto);
	
	String forgetemailCheck(String email);
	
	String forgetaswCheck(MemberDto dto);
	
	MemberDto forgetpwdaswCheck(MemberDto dto);
	
	MemberDto resetpwd(MemberDto dto);
	
	String forgetidCheck(String id);
}

