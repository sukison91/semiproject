package mul.camp.a;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mul.camp.a.dto.MemberDto;
import mul.camp.a.service.BbsService;
import mul.camp.a.service.MemberService;

@Controller
public class HelloController {
	private static Logger logger = LoggerFactory.getLogger(HelloController.class);
	
	@Autowired
	MemberService service;	// MemberServiceImpl이 생성되서 넘어옴
	
	@RequestMapping(value = "goregi.do", method = RequestMethod.GET)
	public String goregi() {
		logger.info("MemberController goregi() " + new Date());
		return "regi";
	}
	@RequestMapping(value = "forget.do", method = RequestMethod.GET)
	public String forget() {
		logger.info("MemberController forget() " + new Date());
		return "forget";
	}
	
	@RequestMapping(value = "hello.do", method = RequestMethod.GET)
	public String hello() {
		logger.info("MemberController hello() " + new Date());
		return "hello";
	}
	@RequestMapping(value = "regi.do", method = RequestMethod.GET)
	public String regi() {
		logger.info("MemberController regi() " + new Date());
		return "regi";
	}
	
	@RequestMapping(value = "regiAf.do", method = RequestMethod.POST)
	public String regiAf(MemberDto dto) {
		logger.info("MemberController regiAf() " + new Date());
		System.out.println(dto.toString());
		boolean b = service.addmember(dto);
		if(b == true) {
			System.out.println("가입되었음");
		}
		return "redirect:/hello.do";
	}
	@RequestMapping(value = "loginAf.do", method = RequestMethod.POST)
	public String loginAf(MemberDto dto,HttpServletRequest req){
		logger.info("MemberController loginAF() " + new Date());
		MemberDto mem = service.logininfo(dto);
		if(mem != null) {
			req.getSession().setAttribute("logininfo", dto);
			System.out.println("로그인성공");
			return "main";
		}else {
			return "redirect:/hello.do";
		}
		
	}
	
	@RequestMapping(value = "logoutAf.do", method = RequestMethod.GET)
	public String logoutAf(HttpSession session){
		logger.info("MemberController logoutAF() " + new Date());
		session.invalidate();
		
		return "redirect:/hello.do";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "idcheck.do", method = RequestMethod.POST)
	public String idcheck(String id) {
		logger.info("MemberController idcheck() " + new Date());		
		System.out.println("id:" + id);
		
		int count = service.getId(id);
		System.out.println("count:" + count);		
		if(count > 0) {	// 아이디가 있음
			return "NO";
		}else {			// 아이디가 없음
			return "YES";
		}		
	}
	
	@ResponseBody
	@RequestMapping(value = "akacheck.do", method = RequestMethod.POST)
	public String akacheck(String aka) {
		logger.info("MemberController akacheck() " + new Date());		
		System.out.println("aka:" + aka);
		
		int count = service.getaka(aka);
		System.out.println("count:" + count);		
		if(count > 0) {	
			return "NO";
		}else {		
			return "YES";
		}		
	}
	
	@ResponseBody
	@RequestMapping(value = "emailcheck.do", method = RequestMethod.POST)
	public String emailcheck(String email) {
		logger.info("MemberController emailcheck() " + new Date());		
		System.out.println("email:" + email);
		
		int count = service.getemail(email);
		System.out.println("count:" + count);		
		if(count > 0) {	
			return "NO";
		}else {			
			return "YES";
		}		
	}
}
