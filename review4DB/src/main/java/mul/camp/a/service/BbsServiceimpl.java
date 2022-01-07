package mul.camp.a.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.camp.a.dao.BbsDao;

@Service
public class BbsServiceimpl implements BbsService {

	
	@Autowired
	BbsDao dao;
}
