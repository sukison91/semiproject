package mul.camp.a.dao;

import java.util.List;

import mul.camp.a.dto.BbsDto;
import mul.camp.a.dto.MemberDto;

public interface MemberDao {

	int addmember(MemberDto mem);
	
	int getId(String id);
	int getaka(String aka);
	int getemail(String email);
	
	MemberDto login(MemberDto mem);
	
	public MemberDto logininfo(MemberDto dto);
	

	/* 회원정보수정 */
	List<MemberDto> profileUpdate(MemberDto dto);
	MemberDto profileAf(MemberDto dto);
	

	String forgetemailCheck(String email);
	
	String forgetaswCheck(MemberDto dto);
	
	MemberDto forgetpwdaswCheck(MemberDto dto);
	
	MemberDto resetpwd(MemberDto dto);
	
	String forgetidCheck(String id);
	
}