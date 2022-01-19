package mul.camp.a.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.camp.a.dao.BbsDao;
import mul.camp.a.dao.MemberDao;
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

	
	@Override
	public List<BbsDto> getBbs(String cat) {
		
		return dao.getBbs(cat);
	}

	@Override
	public List<BbsDto> getMyBbs(String id) {
		return dao.getMyBbs(id);
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

	@Override
	public void bbsdelete(int seq) {
		dao.bbsdelete(seq);
	}

	
//	@Override	
//	public List<BbsDto> getSearchList(List<String> searchValue) {
//		return dao.getSearchList(searchValue); 
//	}
	@Override
	public List<BbsDto> bbsdetail(int ref) {
		
		return dao.bbsdetail(ref);
	}
	@Override
	public int comment(BbsDto dto) {
		return dao.comment(dto);
	}
	@Override
	public int readcount(int ref) {
		return dao.readcount(ref);
	}

	@Override
	public int updateBbs(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return dao.updateBbs(params);
	}
}
