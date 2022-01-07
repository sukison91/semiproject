package mul.camp.a.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.camp.a.dao.ChatDao;

@Service
public class ChatServiceimpl implements ChatService {

	
	@Autowired
	ChatDao dao;
}
