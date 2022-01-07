package mul.camp.a;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import mul.camp.a.service.ChatService;

@Controller
public class ChatController {

	
	@Autowired
	ChatService service;
}
