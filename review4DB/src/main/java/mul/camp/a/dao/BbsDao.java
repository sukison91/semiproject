package mul.camp.a.dao;

import java.util.List;

import mul.camp.a.dto.BbsDto;

public interface BbsDao {

	List<BbsDto> getBbs();

	List<BbsDto> getBbs(String cat);

	List<BbsDto> getMyBbs(String id);

	int bbswrite(BbsDto dto);
	List<BbsDto> getCat1();

	List<BbsDto> getCat2();

	List<BbsDto> getCat3();

	List<BbsDto> getCat4();

	List<BbsDto> getSearch(String searchValue);
	
	public void bbsdelete(int seq);

	/* List<BbsDto> getSearchList(List<String> searchValue); */
	
	List<BbsDto> bbsdetail(int ref);
	
	int comment(BbsDto dto);


}
