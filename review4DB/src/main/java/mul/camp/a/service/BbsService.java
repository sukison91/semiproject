package mul.camp.a.service;

import java.util.List;

import mul.camp.a.dto.BbsDto;

public interface BbsService {

	List<BbsDto> getBbs();
	
	List<BbsDto> getime(String category);

}
