package com.study.springboot;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.springboot.dto.FaqDto;
import com.study.springboot.dto.NoticeDto;
import com.study.springboot.dto.One2oneDto;
import com.study.springboot.dto.QnaDto;
import com.study.springboot.service.FaqService;
import com.study.springboot.service.MemberService;
import com.study.springboot.service.NoticeService;
import com.study.springboot.service.One2oneService;
import com.study.springboot.service.QnaService;

@Controller
public class MyController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private One2oneService one2oneService;
	@Autowired
	private FaqService faqService;
	@Autowired
	private QnaService qnaService;
	
		
	// 메인화면
	@RequestMapping("/")
	public String root() {
		return "redirect:main";
	}
	// 메인화면
	@RequestMapping("/main")
	public String main( Model model) {
		
		model.addAttribute("mainPage", "main.jsp");
		
		return "index"; // "index.jsp" 디스패치함.
	}
	
	// 로그인화면
	@RequestMapping("/member/login")
	public String login(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/login.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	// 로그인액션	
	@RequestMapping("/member/loginAction")
	@ResponseBody
	public String loginAction(@RequestParam("member_id") String member_id,
			                  @RequestParam("member_pw") String member_pw,
			                  HttpServletRequest request) {
		
		int result = memberService.login(member_id, member_pw);
		if( result == 1 ) { // 로그인 성공
			
			// 로그인 세션 등록
			request.getSession().setAttribute("member_id", member_id);
			
			return "<script>alert('로그인 성공!'); location.href='/';</script>";
		}else { // 로그인 실패
			return "<script>alert('로그인 실패!'); history.back(-1);</script>";
		}
	}
	// 로그아웃 액션
	@RequestMapping("/member/logoutAction")
	@ResponseBody
	public String loginAction(HttpServletRequest request) {
		
		//세션객체 초기화
		request.getSession().invalidate();
		return "<script>alert('로그아웃 되었습니다.'); location.href='/';</script>";
		
	}
	
	// 아이디찾기 화면
	@RequestMapping("/member/idFind")
	public String idFind(@RequestParam(value="find_member_id", required=false) String find_member_id,
			             Model model) {
		model.addAttribute("find_member_id", find_member_id);
		return "/member/idFind"; //"idFind.jsp" 디스패치
	}
	// 아이디찾기 액션
	@RequestMapping("/member/idFindAction") 
	@ResponseBody
	public String idFindAction(@RequestParam("member_name") String member_name,
								@RequestParam("member_email") String member_email,
								HttpServletRequest request) {
		
		String member_id = memberService.idFind(member_name, member_email);
				
		// hasText함수 : null체크? 문자열공백없이 의미있는 문자열있는지?
		if( StringUtils.hasText(member_id) ) {			
			return "<script>alert('아이디를 찾았습니다.'); location.href='/member/idFind?find_member_id=" + member_id + "';</script>";
		}else {
			return "<script>alert('아이디를 찾을 수 없습니다.'); history.back(-1);</script>";
		}
		
	}
	
	// 패스워드찾기 화면
	@RequestMapping("/member/passwordFind")
	public String passwordFind(@RequestParam(value="find_member_pw", required=false) String find_member_pw,
			             Model model) {
		model.addAttribute("find_member_pw", find_member_pw);
		return "/member/passwordFind"; // "passwordFind.jsp" 디스패치
	}
	// 패스워드찾기 액션
	@RequestMapping("/member/passwordFindAction") 
	@ResponseBody
	public String passwordFindAction(@RequestParam("member_name") String member_name,
									@RequestParam("member_id") String member_id,
								@RequestParam("member_email") String member_email,
								HttpServletRequest request) {
		
		String member_pw = memberService.passwordFind(member_name, member_id, member_email);
				
		// hasText함수 : null체크? 문자열공백없이 의미있는 문자열있는지?
		if( StringUtils.hasText(member_pw) ) {			
			return "<script>alert('암호를 찾았습니다.'); location.href='/member/passwordFind?find_member_pw=" + member_pw + "';</script>";
		}else {
			return "<script>alert('암호를 찾을 수 없습니다.'); history.back(-1);</script>";
		}
		
	}
	
	// 이용약관 화면
	@RequestMapping("/member/join")
	public String join(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/join.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	
	// 회원가입 화면
	@RequestMapping("/member/join2")
	public String join2(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/join2.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	// 아이디 중복체크		
	@RequestMapping("/member/idCheckAjax")
	@ResponseBody
	public String idCheckAjax(@RequestParam("member_id") String member_id) {
		
		int result = memberService.idCheckAjax( member_id );
				
		if( result >= 1 ) {
			return "1"; // 아이디 중복됨.
		}else {
			return "0"; // 아이디 중복안됨.
		}
		
	}
	// 회원가입 액션
	@RequestMapping("/member/join2Action")
	@ResponseBody
	public String join2Action(
			@RequestParam("member_id") String member_id,
			@RequestParam("member_pw") String member_pw,
			@RequestParam("member_name") String member_name,
			@RequestParam("member_email") String member_email,
			@RequestParam("member_email_receive") String member_email_receive,
			@RequestParam("member_pw_question") String member_pw_question,
			@RequestParam("member_pw_answer") String member_pw_answer,
			@RequestParam("member_gender") String member_gender,
			@RequestParam("member_birth_date") String member_birth_date ) {
				
		int result = memberService.join(
				member_id,
				member_pw,
				member_name,
				member_email,
				member_email_receive,
				member_pw_question,
				member_pw_answer,
				member_gender,
				member_birth_date
				);
		if( result == 1 ) {
			return "<script>alert('회원가입되었습니다.'); location.href='/member/login';</script>";
		}
		else {
			return "<script>alert('회원가입 실패'); history.back(-1);</script>";
		}
		
	}
	
	// 공지사항화면 및 검색
	@RequestMapping("/community/community01")
	public String community01(@RequestParam(value="search_cate", required=false) String search_cate,
			                  @RequestParam(value="keyword", required=false) String keyword,
								HttpServletRequest request, 
								Model model) {
				
		List<NoticeDto> notice_list = null;
		
		// 검색을 통해 호출됨.
		if( StringUtils.hasText(keyword) ) {
			notice_list = noticeService.notice_list_search(search_cate, keyword);	
		}else {
			notice_list = noticeService.notice_list();	
		}
		
		model.addAttribute("notice_list", notice_list);
		
		model.addAttribute("mainPage", "community/community01.jsp");
		
		
		return "index"; // index.jsp 디스패치 
	}
	// 공지글 자세히보기 화면
	@RequestMapping("/community/community01_1")
	public String community01(@RequestParam("notice_idx") String notice_idx,
								HttpServletRequest request, 
								Model model) {
				
		NoticeDto notice_dto = noticeService.notice_content( notice_idx );
		model.addAttribute("notice_dto", notice_dto);
		
		model.addAttribute("mainPage", "community/community01_1.jsp");
		
		
		return "index"; // index.jsp 디스패치 
	}
	
	// 1:1문의 화면
	@RequestMapping("/customer/customer01")
	public String customer01(   HttpServletRequest request, 
								Model model) {
		
		model.addAttribute("mainPage", "customer/customer01.jsp");
		
		
		return "index"; // index.jsp 디스패치 
	}
	// 1:1문의 액션
	@RequestMapping("/customer/one2one_insert")
	@ResponseBody
	public String one2one_insert(HttpServletRequest request, Model model) {
		
		String one2one_name = request.getParameter("one2one_name");
		String one2one_phone = request.getParameter("one2one_phone");
		String one2one_email = request.getParameter("one2one_email");
		String sample6_address = request.getParameter("sample6_address");
		String sample6_detailAddress = request.getParameter("sample6_detailAddress");
		String one2one_address = "";
		
		if( StringUtils.hasText(sample6_address)) {
			one2one_address += sample6_address;
		}
		if( StringUtils.hasText(sample6_detailAddress)) {
			one2one_address += " " + sample6_detailAddress;
		}
		
		String one2one_title = request.getParameter("one2one_title");
		String one2one_content = request.getParameter("one2one_content");
								
		One2oneDto dto = new One2oneDto();
		dto.setOne2one_name(one2one_name);
		dto.setOne2one_phone(one2one_phone);
		dto.setOne2one_email(one2one_email);
		dto.setOne2one_address(one2one_address);
		dto.setOne2one_title(one2one_title);
		dto.setOne2one_content(one2one_content);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("one2one_name", one2one_name);
		map.put("one2one_phone", one2one_phone);
		map.put("one2one_email", one2one_email);
		map.put("one2one_address", one2one_address);
		map.put("one2one_title", one2one_title);
		map.put("one2one_content", one2one_content);
		
		int result = one2oneService.one2one_insert_map(map);
		
		if( result >= 1 ) {
			return "<script>alert('1:1문의가 전송되었습니다.'); location.href='/';</script>";
		}else {
			return "<script>alert('1:1문의 전송 실패하였습니다.'); history.back(-1);</script>";
		}
		 
	}
	
	// 묻고답하기 리스트 화면
	@RequestMapping("/customer/customer02")
	public String customer02(HttpServletRequest request, Model model) {
		
		List<QnaDto> qna_list = qnaService.qna_list();
		model.addAttribute("qna_list", qna_list);
		
		model.addAttribute("mainPage", "customer/customer02.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	
	// 묻고답하기 작성 화면
	@RequestMapping("/customer/customer02_2")
	public String customer02_2(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "customer/customer02_2.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	
	// 비밀번호 확인 화면
	@RequestMapping("/customer/customer02_3")
	public String customer02_3(@RequestParam("qna_idx") String qna_idx, 
			HttpServletRequest request, Model model) {
		
		request.setAttribute("qna_idx", qna_idx);
		
		
		return "customer/customer02_3"; // customer/customer02_3.jsp 디스패치 
	}
	
	// 비밀번호확인 액션 및 묻고답하기 상세화면
	@RequestMapping("/customer/customer02_4")
	public String customer02_4(@RequestParam("qna_idx") String qna_idx,
								@RequestParam("qna_pw") String qna_pw,
								HttpServletRequest request, Model model) {
				
		int pw_check_result = qnaService.qna_pwCheck(qna_idx, qna_pw);
		
		if(pw_check_result==1)
		{
			QnaDto dto = qnaService.contentView(qna_idx);
			request.setAttribute("dto", dto);

			model.addAttribute("mainPage", "customer/customer02_4.jsp"); //contentView
			
			return "index"; // index.jsp 디스패치
		}
		else  
		{
			return "redirect:customer02";
		}
		 
	}
	
	// 묻고답하기 글작성 액션
	@RequestMapping("/customer/customer02_qna_write")
	@ResponseBody
	public String customer02_qna_write(HttpServletRequest request, Model model) {
		
		String qna_name = request.getParameter("qna_name");
		String qna_pw = request.getParameter("qna_pw");
		String qna_title = request.getParameter("qna_title");
		String qna_content = request.getParameter("qna_content");
		
		QnaDto dto = new QnaDto();
		dto.setQna_name(qna_name);
		dto.setQna_pw(qna_pw);
		dto.setQna_title(qna_title);
		dto.setQna_content(qna_content);
		
		int result = qnaService.qna_write(dto);
		
		if( result >= 1 ) {
			return "<script>alert('묻고답하기 전송되었습니다.'); location.href='/';</script>";
		
		}else {
			
			return "<script>alert('묻고답하기 전송 실해하였습니다.'); history.back(-1);</script>";
			
		}
	}
	
	
	//FAQ 리스트 화면 및 검색
	@RequestMapping("/customer/customer03")
	public String customer03(@RequestParam(value="search_cate", required=false) String search_cate,
							@RequestParam(value="keyword", required=false) String keyword,
							HttpServletRequest request, Model model) {
		
		List<FaqDto> faq_list = null;
		
		// 검색을 통해 호출됨.
		if( StringUtils.hasText(keyword) ) {
			faq_list = faqService.faq_list_search(search_cate, keyword);	
		}else {
			faq_list = faqService.faq_list();	
		}
		
		model.addAttribute("faq_list", faq_list);
		model.addAttribute("mainPage", "customer/customer03.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	
	// FAQ 상세 화면
	@RequestMapping("/customer/customer03_1")
	public String customer03_1(@RequestParam("faq_idx") String faq_idx, 
			HttpServletRequest request, Model model) {
		
		FaqDto dto = faqService.contentView( faq_idx );
		request.setAttribute("dto", dto);
		
		model.addAttribute("mainPage", "customer/customer03_1.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	
	// 회사소개 화면
	@RequestMapping("/company/company01")
	public String company01(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "company/company01.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	
	// 오시는길 화면
	@RequestMapping("/company/company03")
	public String company03(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "company/company03.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	
	// 사업분야 화면	
	@RequestMapping("/business/business01")
	public String business01(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "business/business01.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	
	// 제품안내 화면
	@RequestMapping("/product/product01")
	public String product01(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "product/product01.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	
	// 제품안내 상세 화면
	@RequestMapping("/product/product01_1")
	public String product01_1(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "product/product01_1.jsp");
		
		return "index"; // index.jsp 디스패치 
	}
	
	
}



