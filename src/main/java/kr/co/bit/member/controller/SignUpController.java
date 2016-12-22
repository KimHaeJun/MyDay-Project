package kr.co.bit.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.bit.member.service.MemberService;
import kr.co.bit.member.vo.MemberVO;

@Controller
public class SignUpController {

	@Autowired
	private MemberService service;
	
	// 회원 가입 폼 이동
	@RequestMapping(value="/sign/sign.do", method=RequestMethod.GET)
	public String signForm(HttpServletRequest request) {
		
		int no = Integer.parseInt(request.getParameter("type"));
		
		String url = "";
		
		if( no == 1)
			url = "sign/sign";
		else if(no == 2)
			url =  "sign/e_sign";
		else
			url = "익셉션 발생 시키세요.";
		
		return url;
	}
	
	// 개인 회원 가입 결과
	@RequestMapping(value="/sign/sign.do", method=RequestMethod.POST)
	public String sign(@ModelAttribute MemberVO member, Model model, HttpServletRequest request) {
		
		service.signUp(member);
		
		return "login/login";
	}
	
	
	// 회원탈퇴 폼 이동
	@RequestMapping(value="/sign/member_drop.do", method=RequestMethod.GET)
	public String dropForm() {
		
		return "sign/member_drop";
	}
	
	// 회원 탈퇴 처리
	@RequestMapping(value="/sign/member_drop.do", method=RequestMethod.POST)
	public String sing_drop(HttpServletRequest request) {
		
		String type = request.getParameter("type");
		
		// 현재 사용하는 세션중에서 userVO이름으로 등록한 세션을 가져옴.
		HttpSession session = request.getSession();		
		
		if( type.equals("U") ) {
			MemberVO userVO = (MemberVO)session.getAttribute("userVO");
			service.memberDrop(userVO);
		}

		return "login/logout";
		// 회원 탈퇴시 로그아웃 처리
	}
}
