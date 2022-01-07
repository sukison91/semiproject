package mul.camp.a.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.camp.a.dao.ChatDao;

@Repository
public class ChatDaoimpl implements ChatDao {

	
	@Autowired
	SqlSession sqlSession;
	
	String namespace = "Chat.";
}
