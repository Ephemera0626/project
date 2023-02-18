package com.bodeum.controller;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bodeum.domain.AddressVO;
import com.bodeum.domain.BoardVO;
import com.bodeum.domain.CartDTO;
import com.bodeum.domain.CartVO;
import com.bodeum.domain.Criterial;
import com.bodeum.domain.MemberVO;
import com.bodeum.domain.OrderListVO;
import com.bodeum.domain.PageDTO;
import com.bodeum.domain.PaymentDTO;
import com.bodeum.domain.PaymentVO;
import com.bodeum.domain.ProductVO;
import com.bodeum.domain.ReviewVO;
import com.bodeum.service.ShopService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/bodeum/shop/*")
public class ShopController {
	
	@Autowired
	private ShopService service;
	
	@GetMapping("/body")
	public String body() {
		return "/bodeum/shop/body";
	}
	
	//고객센터
	@GetMapping("/customer")
	public String customer() {
		return "/bodeum/shop/customer";
	}
	
	//카테고리내 메뉴
		@GetMapping("/menu")
		public String menu() {
			return "/bodeum/shop/menu";
		}
	
	//상품 Q&A
	@GetMapping("/specific") 
	public void specific(Model model) {
		int itemnum = 1;
		int boardnum = 1;
		int rboardnum =1;
//		String qacatcode ="1000";
		
		ProductVO productvo = service.getSpecificList(itemnum); //불러주고 받아주기 위해 ProductVO (불러줄 곳) 써줘야
		BoardVO boardvo = service.getSpecBoard(boardnum);
		ReviewVO rvo = service.getReviewBoard(rboardnum);
	//	QacatVO qacatvo = service.getQacate(qacatcode);
		
		model.addAttribute("itemnum", productvo);
		model.addAttribute("boardnum", boardvo);
		model.addAttribute("rboardnum", rvo);
	//	model.addAttribute("qacatcode", qacatvo);
	}
	
	@PostMapping("/specific") //매개변수 역할 need -> @requestparam으로 받아줌
	public String specific(@RequestParam("boardnum") int boardnum, RedirectAttributes rttr) {
//		log.info("register==> " + boardnum);
//		service.getSpecBoard(boardnum);
//		
//		rttr.addFlashAttribute("result", boardnum.getBoardnum());
		return "redirect:/bodeum/shop/specific";
	}
	
	@GetMapping("/footer")
	public String footer() {
		return "/includes/footer";
	}
	
	@GetMapping("/header")
	public String header() {
		return "/views/includes/header";
	}
	
	 //리뷰
	@GetMapping("/list")
	public void list(Criterial cri,  Model model) {
		int rboardnum = 1;
		
		log.info("list==============>");
		int total = service.getTotal(cri);
		
		ReviewVO rvo = service.getReviewBoard(rboardnum);
		model.addAttribute("rboardnum", rvo);
		
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	//리뷰
	@GetMapping("/register") 	
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String register(ReviewVO rboard, RedirectAttributes rttr) {
		log.info("register==> " + rboard);
		service.register(rboard);
		
//		rttr.addFlashAttribute("result", board.getBoardnum());
		return "redirect:/bodeum/shop/list";
	}
	

	//리뷰
	@PostMapping("/modify")
	public String modify(ReviewVO rvo, @ModelAttribute("cri") Criterial cri, RedirectAttributes rttr) throws Exception {
		log.info("modify===> ");
		log.info("cri===> " + cri.getPageNum());
		if(service.modify(rvo)) {
			rttr.addFlashAttribute("result","modify");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/bodeum/shop/list";
	}
	
	//리뷰
	@PostMapping("/remove")
	public String remove(int rboardnum, @ModelAttribute("cri") Criterial cri, RedirectAttributes rttr) {
		log.info("remove===> ");
		
		if(service.remove(rboardnum)) {
			rttr.addFlashAttribute("result","delete");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/bodeum/shop/list";
	}

	//리뷰 - 기존
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("rboardnum") int rboardnum, @ModelAttribute("cri") Criterial cri, Model model) {
		log.info("get or modify ======> ");
		model.addAttribute("rboardnum", service.get(rboardnum));
	}
	
}