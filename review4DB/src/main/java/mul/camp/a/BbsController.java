package mul.camp.a;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mul.camp.a.dto.BbsDto;
import mul.camp.a.service.BbsService;

@Controller
public class BbsController {
	private static Logger logger = LoggerFactory.getLogger(BbsController.class);
	
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
}
