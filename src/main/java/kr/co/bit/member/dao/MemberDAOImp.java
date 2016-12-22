package kr.co.bit.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.member.vo.MemberVO;

@Repository
public class MemberDAOImp implements MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public MemberVO login(MemberVO member) {
		
		MemberVO user 
			= sqlSessionTemplate.selectOne("kr.co.bit.member.dao.MemberDAO.login", member);
		return user;
	}

	@Override
	public void signUp(MemberVO member) {
		int user
			= sqlSessionTemplate.insert("kr.co.bit.member.dao.MemberDAO.signUp", member);
	}
	
	@Override
	public void memberDrop(MemberVO member) {
		sqlSessionTemplate.delete("kr.co.bit.member.dao.MemberDAO.memberDrop", member);
	}

}
