package mul.camp.a;

import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		return "redirect:/main.do";
	}
	@RequestMapping(value = "bbswrite.do", method = RequestMethod.GET)
	public String bbswrite() {
		
		return "bbswrite";
	}
	@RequestMapping(value = "bbsdetail.do", method = RequestMethod.GET)
	public String bbsdetail(int ref,Model model) {
		service.readcount(ref);
		List<BbsDto> dto = service.bbsdetail(ref);
		System.out.println("detail"+dto);
		System.out.println("=================================================");
		model.addAttribute("detail",dto);
		return "bbsdetail";
	}
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String main(HttpServletRequest req) {
		
		List<BbsDto> bbsList = service.getBbs();
		List<BbsDto> cat1 = service.getCat1();
		List<BbsDto> cat2 = service.getCat2();
		List<BbsDto> cat3 = service.getCat3();
		List<BbsDto> cat4 = service.getCat4();
		req.getSession().setAttribute("bbsList", bbsList);
		req.getSession().setAttribute("cat1", cat1);
		req.getSession().setAttribute("cat2", cat2);
		req.getSession().setAttribute("cat3", cat3);
		req.getSession().setAttribute("cat4", cat4);
		
		return "main";
	}
	
	@RequestMapping(value = "search.do", method = RequestMethod.GET)
	public String search(HttpServletRequest req) {
		
		List<BbsDto> bbsList = service.getBbs();
		List<BbsDto> cat1 = service.getCat1();
		List<BbsDto> cat2 = service.getCat2();
		List<BbsDto> cat3 = service.getCat3();
		List<BbsDto> cat4 = service.getCat4();
		req.getSession().setAttribute("bbsList", bbsList);
		req.getSession().setAttribute("cat1", cat1);
		req.getSession().setAttribute("cat2", cat2);
		req.getSession().setAttribute("cat3", cat3);
		req.getSession().setAttribute("cat4", cat4);
		
		return "search";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "searchResult.do", method = RequestMethod.GET)
	public List<BbsDto> searchResult(String searchValue) {
		System.out.println("searchValue:" + searchValue);
//		String[] searchValueArray = searchValue.trim().split("\\s+");
//		System.out.println("searchValueArray: " + Arrays.toString(searchValueArray));
		
		
//		List<String> searchValueList = Collections.emptyList();
//		for(int i = 0; i < searchValueArray.length; i++) {
//			if(searchValueArray.length == 1 || searchValueArray == null) {
//				System.out.println("VALUE IS NULL OR");
//			} else {
//				searchValueList.add(searchValueArray[i]);
//			}
//			
//		}
		List<BbsDto> searchResults = Collections.emptyList();
		
//		if(searchValueList.size() <= 0) {
//			System.out.println("**Inside Search Value: " + searchValue); 
			searchResults = service.getSearch(searchValue);
//		} else {
//			searchResults = service.getSearchList(searchValueList);
//		}
//		
		
		System.out.println("searchResults: " + searchResults);		
		
		return searchResults; 
	}
	@ResponseBody
	@RequestMapping(value = "comment.do", method = RequestMethod.POST)
	public String comment(BbsDto dto) {
		System.out.println("코멘트---------"+dto);

		service.comment(dto);
		
		return "YES";
	}
	@RequestMapping(value = "commentAF.do", method = RequestMethod.GET)
	public String commentAF(int ref,Model model) {

		List<BbsDto> dto = service.bbsdetail(ref);

		model.addAttribute("detail",dto);
		return "bbsdetail";
	}
	
	@ResponseBody
	@RequestMapping(value = "updateBbs.do", method = RequestMethod.GET)
	public String updateBbs(String newContent, Integer sequence) {
		System.out.println("newContent---------"+ newContent);
		System.out.println("sequence---------"+ sequence);
		
		HashMap<String, Object> params = new HashMap<>();
	  params.put("newContent", newContent);
	  params.put("sequence", sequence);
		
		String result = null; 
		int updateBbs = service.updateBbs(params); 
		if(updateBbs == 1) {
			result = "YES";
		} else {
			result = "NO"; 
		}
		System.out.println("Result---------"+ result);
		return result;
	}
	
}
