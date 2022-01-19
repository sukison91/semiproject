package mul.camp.a.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.camp.a.dao.BbsDao;
import mul.camp.a.dto.BbsDto;

@Service
public class BbsServiceimpl implements BbsService {

	
	@Autowired
	BbsDao dao;

	@Override
	public List<BbsDto> getBbs() {
		// TODO Auto-generated method stub
		return dao.getBbs();
	}

	@Override
	public List<BbsDto> getime(String category) {

		return dao.getime(category);
	}

	
	public List<BbsDto> getBbs(String cat) {
		
		return dao.getBbs(cat);
	}
	
	@Override
	public int bbswrite(BbsDto dto) {
		
		return dao.bbswrite(dto);
	}
	
	@Override
	public List<BbsDto> getCat1() {
		// TODO Auto-generated method stub
		return dao.getCat1();
	}
	
	
	@Override
	public List<BbsDto> getCat2() {
		// TODO Auto-generated method stub
		return dao.getCat2();
	}
	
	@Override
	public List<BbsDto> getCat3() {
		// TODO Auto-generated method stub
		return dao.getCat3();
	}
	
	
	@Override
	public List<BbsDto> getCat4() {
		// TODO Auto-generated method stub
		return dao.getCat4();
	}
	@Override	
	public List<BbsDto> getSearch(String searchValue) {
		return dao.getSearch(searchValue); 
	}
	
//	@Override	
//	public List<BbsDto> getSearchList(List<String> searchValue) {
//		return dao.getSearchList(searchValue); 
//	}
}
