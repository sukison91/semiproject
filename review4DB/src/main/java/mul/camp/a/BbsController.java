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
import org.springframework.web.bind.annotation.ResponseBody;

import mul.camp.a.BbsController;
import mul.camp.a.dto.BbsDto;
import mul.camp.a.service.BbsService;

@Controller
public class BbsController {

	private static Logger logger = LoggerFactory.getLogger(BbsController.class);
	
	@Autowired
	BbsService service;

	@RequestMapping(value = "bbs.do", method = RequestMethod.GET)
	public String getBbs(HttpServletRequest req) {
		
		List<BbsDto> bbsList = service.getime("recently");
		req.getSession().setAttribute("bbsList", bbsList);
		
		return "bbs";
	}
	
	//글순서 정렬
	@ResponseBody
	@RequestMapping(value = "bbssort.do", method = RequestMethod.GET)
	public List<BbsDto> getime(String category) {
		
		logger.info("BbsController getime() " + new Date());
		
		//System.out.println("BbsController getime");
		System.out.println("category:" + category);
		
	//	List<BbsDto> bbsList = service.getime(category);		
	//	req.getSession().setAttribute("bbsList", bbsList);
		
		List<BbsDto> bbsList = service.getime(category);		
		//req.getSession().setAttribute("bbsList", bbsList);
		
		return bbsList;
	}
	
	/*@RequestMapping(value = "old.do", method = RequestMethod.GET)
	public String getold(HttpServletRequest req, String category) {
		
		List<BbsDto> bbsList = service.getold(category);
		req.getSession().setAttribute("bbsList", bbsList);
		
		return "bbs";
	}
	
	@RequestMapping(value = "readcount.do", method = RequestMethod.GET)
	public String getreadcount(HttpServletRequest req, String category) {
		
		List<BbsDto> bbsList = service.getreadcount(category);
		req.getSession().setAttribute("bbsList", bbsList);
		
		return "bbs";
	}
	
	@RequestMapping(value = "blike.do", method = RequestMethod.GET)
	public String getblike(HttpServletRequest req, String category) {
		
		List<BbsDto> bbsList = service.getblike(category);
		req.getSession().setAttribute("bbsList", bbsList);
		
		
		return "bbs";
	}
	*/
}
