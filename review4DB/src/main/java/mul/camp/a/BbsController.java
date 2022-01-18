package mul.camp.a;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mul.camp.a.dto.BbsDto;
import mul.camp.a.service.BbsService;

@Controller
public class BbsController {

	
	@Autowired
	BbsService service;
	
	
	@RequestMapping(value = "bbs.do", method = RequestMethod.GET)
	public String getBbs(HttpServletRequest req) {
		String cat = req.getParameter("cat");
		List<BbsDto> bbsList = service.getBbs(cat);
		req.getSession().setAttribute("bbsList", bbsList);
		
		return "bbs";
	}
	@RequestMapping(value = "bbsall.do", method = RequestMethod.GET)
	public String getallBbs(HttpServletRequest req) {
		
		List<BbsDto> bbsList = service.getBbs();
		req.getSession().setAttribute("bbsList", bbsList);
		return "bbs";
	}
	@RequestMapping(value = "bbswriteAF.do", method = RequestMethod.GET)
	public String bbswriteAF(BbsDto dto) {
		System.out.println(dto);
		service.bbswrite(dto);
		
		return "main";
	}
	@RequestMapping(value = "bbswrite.do", method = RequestMethod.GET)
	public String bbswrite() {
		
		return "bbswrite";
	}
	@RequestMapping(value = "bbsdetail.do", method = RequestMethod.GET)
	public String bbsdetail(int seq) {
		
		// 추가 부탁드리겠습니다 (_ _ )
		
		return "bbsdetail";
	}
}
