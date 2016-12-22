package kr.co.bit.member.dao;

import kr.co.bit.member.vo.MemberVO;

public interface MemberDAO {
	
	public MemberVO login(MemberVO member);
	public void signUp(MemberVO member);
	public void memberDrop(MemberVO member);

}
