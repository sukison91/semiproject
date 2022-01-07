package mul.camp.a;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import mul.camp.a.service.BbsService;

@Controller
public class BbsController {

	
	@Autowired
	BbsService service;
}
