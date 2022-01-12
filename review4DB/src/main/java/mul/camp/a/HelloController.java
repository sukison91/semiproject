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
		
		boolean b = service.addmember(dto);
		if(b == true) {
			System.out.println("가입되었음");
		}
		return "redirect:/hello.do";
	}
	@RequestMapping(value = "loginAf.do", method = RequestMethod.POST)
	public String loginAF(MemberDto dto,HttpServletRequest req){
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

}
