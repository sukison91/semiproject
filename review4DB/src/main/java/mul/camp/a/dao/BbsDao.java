package mul.camp.a.dao;

import java.util.List;

import mul.camp.a.dto.BbsDto;

public interface BbsDao {

	List<BbsDto> getBbs();

	List<BbsDto> getime(String category);
}
