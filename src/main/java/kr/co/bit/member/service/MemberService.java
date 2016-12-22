package kr.co.bit.member.service;

import kr.co.bit.member.vo.MemberVO;

public interface MemberService {
	
	public MemberVO login(MemberVO member);
	public void signUp(MemberVO member);
	public void memberDrop(MemberVO member);

}
