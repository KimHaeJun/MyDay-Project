package kr.co.bit.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.member.dao.MemberDAO;
import kr.co.bit.member.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MemberDAO dao;

	public MemberVO login(MemberVO member) {
		MemberVO userVO = dao.login(member);
		return userVO;
	}

	@Override
	public void signUp(MemberVO member) {
		dao.signUp(member);
	}

	@Override
	public void memberDrop(MemberVO member) {
		dao.memberDrop(member);
	}


}