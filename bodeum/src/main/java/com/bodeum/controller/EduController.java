package com.bodeum.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bodeum.domain.EduBoardVO;
import com.bodeum.domain.EduVO;
import com.bodeum.domain.EdugroupVO;
import com.bodeum.domain.EdusingleVO;
import com.bodeum.domain.MemberVO;
import com.bodeum.service.EduService;
import com.bodeum.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/bodeum/edu/*")
public class EduController {
	
	@Autowired
	 private EduService service;
	
	@Autowired
	private MemberService mservice;
	
	
	
	
	@GetMapping("/company")
	public String company() {
	
		return "/bodeum/edu/company";
		
	}
	
	@GetMapping("/map")
	public void map() {
	
		
	}
	
	@GetMapping("/video")
	public void video() {
	
	}
	
	@GetMapping("/group")
	public void group() {
		
	}
	
	
	@GetMapping("/single")
	public void single() {
		
	}

	
	
	
	
	@GetMapping("/edulist")
	public void edulist(Model model) {
		List<EduVO> List = service.getList();
		log.info("edulist==============>"+List);
		
//		int aaa = List.get(0).getEdupic();
//		DecimalFormat df = new DecimalFormat("###,###,###");
//		String bbb = df.format(aaa);
		
		model.addAttribute("edulist", List);
	}
	
	
	
	@GetMapping("/eduitem")
	public String eduitem(@RequestParam("itemnum") int vo, Model model) {
		
		List<EduVO> List = service.getItemList(vo);
			

		
		model.addAttribute("eduitem", List);
		model.addAttribute("itemnum", vo);
		
		
		return "/bodeum/edu/eduitem";
	}
	
	
	@GetMapping("/edugroup")
	public void edugroup(Model model) {
		List<EdugroupVO> GroupList = service.getEdugroupList();
		log.info("edugrouplist==============>"+GroupList);

		
		model.addAttribute("edugroup", GroupList);
		
	}
	
	
	@GetMapping("/edugroupitem")
	public String edugroupitem(@RequestParam("itemnum") int vo, Model model) {
		
		List<EdugroupVO> List = service.getGroupItemList(vo);
			

		
		model.addAttribute("edugroupitem", List);
		model.addAttribute("itemnum", vo);
		
		
		return "/bodeum/edu/edugroupitem";
	}
	
	
	
	
	@GetMapping("/edusingle")
	public void edusingle(Model model) {
		List<EdusingleVO> List = service.getSingleList();
		log.info("eduSinglelist==============>"+List);
		

		model.addAttribute("edusingle", List);
	}
	

	@GetMapping("/edusingleitem")
	public String edusingleitem(@RequestParam("itemnum") int vo, Model model) {
		
		List<EdusingleVO> List = service.getSingleItemList(vo);
			

		
		model.addAttribute("edusingleitem", List);
		model.addAttribute("itemnum", vo);
		
		
		return "/bodeum/edu/edusingleitem";
	}
	
	
	@GetMapping("/join")
	public void join() {
		
	}
	
	
	
	
	
	@PostMapping("/join")
	public String join(HttpServletRequest request) {
		
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		int b_year = Integer.parseInt(request.getParameter("b_year"));
		int b_month = Integer.parseInt(request.getParameter("b_month"));
		int b_day = Integer.parseInt(request.getParameter("b_day"));
		String ph1 =request.getParameter("ph1");
//		String ph2 =request.getParameter("ph2");
//		String ph3 =request.getParameter("ph3");
		String sms =request.getParameter("sms");
		String mailing =request.getParameter("mailing");
//		String email1 =request.getParameter("email1");
//		String email2 =request.getParameter("email2");
		String agree1 =request.getParameter("agree1");
		String agree2 = request.getParameter("agree2");
		String agree3 = request.getParameter("agree3");
		
		MemberVO vo=new MemberVO();
		vo.setUserid(userid);
		vo.setPasswd(passwd);
		vo.setName(name);
		vo.setGender(gender);
		vo.setB_year(b_year);
		vo.setB_month(b_month);
		vo.setB_day(b_day);
		vo.setPh1("020");
		vo.setPh2("020");
		vo.setPh3("030");
		vo.setSms(sms);
		vo.setMailing(mailing);
		vo.setEmail1("11111");
		vo.setEmail2("yt");
		vo.setAgree1(agree1);
		vo.setAgree2(agree2);
		vo.setAgree3(agree3);
		vo.setGrede("text");
		vo.setPoint(1111);
			
		mservice.insertMember(vo);
		
		return "redirect:/bodeum/edu/main";
	}
	
	@RequestMapping(value="/idcheck", method= {RequestMethod.GET})
	@ResponseBody
	public int idcheck(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String userid){
		int result=mservice.idcheck(userid);
		System.out.println("========================"+result);
		return result;
	
		
	}
	
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	
	
	
	@PostMapping("/login")
	public String login(@RequestParam("uid") String userid, @RequestParam("passwd") String passwd, HttpSession session) {
		
		MemberVO vo=new MemberVO();
		vo.setUserid(userid);
		vo.setPasswd(passwd);
		
		MemberVO login=mservice.login(vo);
		if(login!=null) {
			session.setAttribute("user", login);
			
		}
		return "/bodeum/edu/main";
		
	}
	
	
	@GetMapping("/delete")
	public String delete(MemberVO vo, HttpSession session) {
		
		MemberVO member = (MemberVO) session.getAttribute("user");
		String sessionUserid = member.getUserid();
		String voUserid = vo.getUserid();
		
		if((sessionUserid.equals(voUserid))) {
			mservice.deleteMember(member);
			session.invalidate();
		}
		return "/bodeum/edu/main";
		
		
		
		
	}
	
	
	
	
	@GetMapping("/findid")
	public void findid() {
		
	
	}
	
	
	
	@RequestMapping(value="/searchid", method= {RequestMethod.GET})
	@ResponseBody
	public String search_id(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String name, String email1, String email2){
	
		System.out.println(name+" "+email1+" "+email2);
		MemberVO vo=new MemberVO();
		vo.setName(name);
		vo.setEmail1(email1);
		vo.setEmail2(email2);
		
		
		String userid=mservice.searchid(vo);
		System.out.println("========================"+userid);
		
		return userid;
		
	
	}
	
	
	@RequestMapping(value="/searchid2", method= {RequestMethod.GET})
	@ResponseBody
	public String search_id2(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String name, String ph1, String ph2, String ph3){
	
		System.out.println(name+" "+ph1+" "+ph2+" "+ph3);
		MemberVO vo=new MemberVO();
		vo.setName(name);
		vo.setPh1(ph1);
		vo.setPh2(ph2);
		vo.setPh3(ph3);
		
		String userid=mservice.searchid2(vo);
		System.out.println("========================"+userid);
		return userid;
		
	
	}
	
	//강형욱 게시판 글 목록
	@GetMapping("/eduboardlist")
	public ModelAndView eduboardlist() {
		List<EduBoardVO> list = service.getEduboardList();
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("/bodeum/edu/eduboardlist");
		mav.addObject("list",list);
		return mav;
		
	}
	
	
	
	
	//강형욱 게시판 글 쓰기 이동
	@RequestMapping(value="/eduregistert", method=RequestMethod.GET)
	public String eduregistert() throws Exception{
		
		return "/bodeum/edu/eduregistert";
	}
	
	
	//게시글 작성처리
	@RequestMapping(value="/Eduinsert", method=RequestMethod.POST)
	public String Eduinsert(@ModelAttribute EduBoardVO vo) {
		service.Educreate(vo);
		return"redirect:/bodeum/edu/eduboardlist";
	

	}
	
	//계시글 상세내용 조회
	@RequestMapping(value="/Eduboardview", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam int boardnum, HttpSession session) {
	
	//조회수 증가 처리
	service.increaseViewcnt(boardnum, session);
	
	//모델(데이터)+뷰를 함께 전달
	ModelAndView mav=new ModelAndView();
	
	mav.setViewName("/bodeum/edu/view");
	
	//전달 데이터
	mav.addObject("dto",service.read(boardnum));
	return mav;
	
	}
	
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(@ModelAttribute EduBoardVO vo) {
		service.update(vo);
		return "redirect:/bodeum/edu/eduboardlist";
	}
	
	
	@RequestMapping("/delete")
	public String delete(@RequestParam int boardnum) {
		service.delete(boardnum);
		return "redirect:/bodeum/edu/eduboardlist";
	}

	
//	@GetMapping("/register")
//	public void register() {
//		
//	}
//	
//	@PostMapping("/register")
//	public String register(BoardVO board, RedirectAttributes rttr) {
//		log.info("register==> " + board);
//		service.register(board);
//		
//		rttr.addFlashAttribute("result", board.getBno());
//		return "redirect:/board/list";
//	}
//	
//	
//	@PostMapping("/modify")
//	public String modify(BoardVO board, @ModelAttribute("cri") Criterial cri, RedirectAttributes rttr) {
//		log.info("modify===> ");
//		log.info("cri===> " + cri.getPageNum());
//		if(service.modify(board)) {
//			rttr.addFlashAttribute("result","modify");
//		}
//		rttr.addAttribute("pageNum", cri.getPageNum());
//		rttr.addAttribute("amount", cri.getAmount());
//		rttr.addAttribute("type", cri.getType());
//		rttr.addAttribute("keyword", cri.getKeyword());
////		return "redirect:/board/list";
//		return "abc";
//	}
//	
//	@PostMapping("/remove")
//	public String remove(Long bno, @ModelAttribute("cri") Criterial cri, RedirectAttributes rttr) {
//		log.info("remove===> ");
//		
//		if(service.remove(bno)) {
//			rttr.addFlashAttribute("result","delete");
//		}
//		rttr.addAttribute("pageNum", cri.getPageNum());
//		rttr.addAttribute("amount", cri.getAmount());
//		rttr.addAttribute("type", cri.getType());
//		rttr.addAttribute("keyword", cri.getKeyword());
//		return "redirect:/board/list";
//	}
//
//	@GetMapping({"/get", "/modify"})
//	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criterial cri, Model model) {
//		log.info("get or modify ======> ");
//		model.addAttribute("board", service.get(bno));
//	}
//
//	
//	
//	
//	
//	
//	
	
	
	
	
	
	
	
	
	
}
