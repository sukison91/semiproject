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
	public List<BbsDto> getBbs(String cat) {
		
		return dao.getBbs(cat);
	}
	
}
