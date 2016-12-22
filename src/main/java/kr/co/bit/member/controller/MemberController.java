package kr.co.bit.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.bit.member.service.MemberService;
import kr.co.bit.member.vo.MemberVO;

import org.springframework.mail.javamail.JavaMailSender;

import javax.mail.internet.MimeMessage;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;





@SessionAttributes("userVO")
@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	@Autowired
    private JavaMailSender mailSender;
	
	   @RequestMapping(value="member/mail")
	    public String sendMail(){
	        
	        MimeMessage message = mailSender.createMimeMessage();
	        try {
	            message.setSubject("스프링으로 메일보내기");
	            message.setText("메일본문입니다.");
	            message.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse("pusna25@naver.com"));
	            mailSender.send(message);
	            System.out.println("성공");
	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }
	        
	        return "mailSuccess";
	    }









	// 로그인 폼 이동
	@RequestMapping(value="/login/login.do", method=RequestMethod.GET)
	public String loginForm() {
		
		return "login/login";
	}
	
	// 로그인 폼 결과
	@RequestMapping(value="/login/login.do", method=RequestMethod.POST)
	public String login(@ModelAttribute MemberVO member, Model model, HttpServletRequest request) {
		
		
		int no = Integer.parseInt(request.getParameter("type"));

		System.out.println(request.getContextPath());
		
		MemberVO userVO  = null;

		System.out.println("로그인 시작");
		if( no == 1) {
			userVO = service.login(member);
		}


		if (userVO != null && no == 1) {
			model.addAttribute("userVO", userVO);

			return "redirect:/";
		} 
		else 
			model.addAttribute("msg", "로그인을 실패하였습니다.");
		

		return "login/login";
	}
	
	// 로그아웃
	@RequestMapping("/login/logout.do")
	public String logout(SessionStatus sessionStatus) {
		
		sessionStatus.setComplete();

		return "redirect:/";
	}
}
