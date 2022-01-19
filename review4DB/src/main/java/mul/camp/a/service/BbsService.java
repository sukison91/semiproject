package mul.camp.a.service;

import java.util.HashMap;
import java.util.List;

import mul.camp.a.dto.BbsDto;

public interface BbsService {

	List<BbsDto> getBbs();
	
	List<BbsDto> getime(String category);

	List<BbsDto> getBbs(String cat);
	
	List<BbsDto> getMyBbs(String id);

	int bbswrite(BbsDto dto);

	List<BbsDto> getCat1();

	List<BbsDto> getCat2();

	List<BbsDto> getCat3();

	List<BbsDto> getCat4();

	List<BbsDto> getSearch(String searchValue);
	
	public void bbsdelete(int seq);

//	List<BbsDto> getSearchList(List<String> searchValue);
	List<BbsDto> bbsdetail(int ref);
	
	int comment(BbsDto dto);

	

	int updateBbs(HashMap<String, Object> params);
	
	int readcount(int ref);
}
