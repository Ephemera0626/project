package com.bodeum.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
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
import com.bodeum.domain.CouponVO;
import com.bodeum.domain.Criterial;
import com.bodeum.domain.MemberVO;
import com.bodeum.domain.OrderListVO;
import com.bodeum.domain.PageDTO;
import com.bodeum.domain.PaymentDTO;
import com.bodeum.domain.PaymentVO;
import com.bodeum.domain.ProductVO;
import com.bodeum.domain.ReviewVO;
import com.bodeum.service.MyPageService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/bodeum/mypage/*")
public class MyPageController {

	@Autowired
	private MyPageService service;
	
	//김정환
	@GetMapping("/cart") // 장바구니
	public void cart(@RequestParam(value="mode", defaultValue="read") String mode, HttpServletRequest request, Model model) {
		String userid = "human111";
		int itemnum;
		int itemcnt;
		List<CartVO> cart = new ArrayList<>();
		CartDTO cartdto = new CartDTO();
		
		//RUD(읽기,업데이트,삭제)
		if(mode.equals("cart_del")) {
			System.out.println("222222222222222222222");
			itemnum = Integer.parseInt(request.getParameter("cart_del_idx"));
			System.out.println("delete"+itemnum);
			System.out.println("delete"+itemnum);
			service.deleteCartList(userid, itemnum);
		}
		else if(mode.equals("change_cnt")) {
			System.out.println("333333333333333333333333");
			System.out.println("update"+Integer.parseInt(request.getParameter("cart_edit_idx")));
			System.out.println("update"+Integer.parseInt(request.getParameter("goods_cnt")));
			itemnum = Integer.parseInt(request.getParameter("cart_edit_idx"));
			itemcnt = Integer.parseInt(request.getParameter("goods_cnt"));
			service.updateCartList(userid, itemnum, itemcnt);
		}
		
		cart = service.getCartList(userid);
		
		
		model.addAttribute("cartList",cart);
		model.addAttribute("sumprice",cartdto.sumitemprice(cart));
		model.addAttribute("deliveryfee",cartdto.itemdeliveryfee(cart));

	}
	
	@PostMapping("/cart") // 장바구니
	public void postcart(@RequestParam(value="mode", defaultValue="read") String mode, HttpServletRequest request, Model model) {
		String userid = "human111";
		int itemnum;
		int itemcnt;
		List<CartVO> cart = new ArrayList<>();
		CartDTO cartdto = new CartDTO();
		
		//RUD(읽기,업데이트,삭제)
		if(mode.equals("cart_del")) {
			System.out.println("222222222222222222222");
			itemnum = Integer.parseInt(request.getParameter("cart_del_idx"));
			service.deleteCartList(userid, itemnum);
		}
		else if(mode.equals("change_cnt")) {
			System.out.println("333333333333333333333333");
			System.out.println("update"+Integer.parseInt(request.getParameter("cart_edit_idx")));
			System.out.println("update"+Integer.parseInt(request.getParameter("goods_cnt")));
			itemnum = Integer.parseInt(request.getParameter("cart_edit_idx"));
			itemcnt = Integer.parseInt(request.getParameter("goods_cnt"));
			service.updateCartList(userid, itemnum, itemcnt);
		}
		
		cart = service.getCartList(userid); 
		
		
		model.addAttribute("cartList",cart);
		model.addAttribute("sumprice",cartdto.sumitemprice(cart));
		model.addAttribute("deliveryfee",cartdto.itemdeliveryfee(cart));

	}
	
	@GetMapping("/payment") //결제페이지
	public void payment(String userid, Model model) {
		int ordernum = 1234567890;	
		int itemnum = 1234567;
		userid = "human111";
		List<OrderListVO> orderlist = service.getOrderList(ordernum);
		List<ProductVO> product = service.getProduct(itemnum);
		System.out.println(product.get(0).getItem());
		System.out.println(product);
		System.out.println(product);
		System.out.println(product);
		System.out.println(product);
		System.out.println(product);
		MemberVO member = service.getUser(userid);
		AddressVO address = service.getAddress(userid);
		PaymentVO payment = service.getPayment(userid);
		PaymentDTO paymentdto = new PaymentDTO();
		
		int sumprice = paymentdto.sumitemprice(orderlist);
		int deliveryfee = paymentdto.itemdeliveryfee(orderlist);
		
		model.addAttribute("orderlist", orderlist);
		model.addAttribute("product", product);
		model.addAttribute("ordernum", ordernum);
		model.addAttribute("member", member);
		model.addAttribute("address", address);
		model.addAttribute("payment", payment);
		model.addAttribute("sumprice", sumprice);
		model.addAttribute("deliveryfee", deliveryfee);
		

	}

	@GetMapping("/order_complete") // 결제 완료 페이지
	public void order_complete(Model model) {
		int ordernum = 1234567890;
		String userid = "human111";
		List<OrderListVO> orderlist = service.getOrderList(ordernum);
		MemberVO member = service.getUser(userid);
		AddressVO address = service.getAddress(userid);
		PaymentVO payment = service.getPayment(userid);
		PaymentDTO paymentdto = new PaymentDTO();
		
		int sumprice = paymentdto.sumitemprice(orderlist);
		int deliveryfee = paymentdto.itemdeliveryfee(orderlist);
		
		model.addAttribute("orderlist", orderlist);
		model.addAttribute("ordernum", ordernum);
		model.addAttribute("member", member);
		model.addAttribute("address", address);
		model.addAttribute("payment", payment);
		model.addAttribute("sumprice", sumprice);
		model.addAttribute("deliveryfee", deliveryfee);
		
	}

	@GetMapping("/orderList") // 결제 내역 페이지
	public void orderList(HttpServletRequest request, Model model) {
		int ordernum = 1234567890;
		List<OrderListVO> orderlist = service.getOrderList(ordernum);
		String userid = request.getParameter("userid");

		model.addAttribute("orderlist", orderlist);
		model.addAttribute("ordernum", ordernum);
	}

	@GetMapping("/orderDetail") // 결제 내역 상세 페이지
	public void orderDetail(Model model) {
		int ordernum = 1234567890;
		String userid = "human111";
		List<OrderListVO> orderlist = service.getOrderList(ordernum);
		MemberVO member = service.getUser(userid);
		AddressVO address = service.getAddress(userid);
		PaymentVO payment = service.getPayment(userid);
		PaymentDTO paymentdto = new PaymentDTO();
		
		int sumprice = paymentdto.sumitemprice(orderlist);
		int deliveryfee = paymentdto.itemdeliveryfee(orderlist);
		
		model.addAttribute("orderlist", orderlist);
		model.addAttribute("ordernum", ordernum);
		model.addAttribute("member", member);
		model.addAttribute("address", address);
		model.addAttribute("payment", payment);
		model.addAttribute("sumprice", sumprice);
		model.addAttribute("deliveryfee", deliveryfee);
	}

	@GetMapping("/manager") // 관리자 페이지
	public void manager(Model model) {
		List<ProductVO> product = service.getProductList();
		
		model.addAttribute("product", product);
	}
	
	//성영준
	@GetMapping("/main")
	public void main(Model model) {
		
		model.addAttribute("main", service.get("aaaa"));
		
	}
	
	@GetMapping("/point")
	public String point(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		return "/bodeum/mypage/point";
	}
	
	@GetMapping("/coupon")
	public String coupon(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		return "/bodeum/mypage/coupon";
	}
	
	@GetMapping("/orderlist")
	public String orderlist() {
		
		return "/bodeum/mypage/orderlist";
	}	
	@GetMapping("/myinq")
	public String myinq(Model model) {
		model.addAttribute("member", service.get("aaaa"));
		return "/bodeum/mypage/myinq";
	}	
	@GetMapping("/inqregister")
	public String inqregister(Model model) {
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/inqregister";
	}
	@GetMapping("/mypage_modify")
	public String mypage_modify(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/mypage_modify";
	}
	@GetMapping("/mylesson")
	public String mylesson(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/mylesson";
	}
	@GetMapping("/lessonstatus")
	public String lessonstatus(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/lessonstatus";
	}
	@GetMapping("/lessonstatus_past")
	public String lessonstatus_past(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/lessonstatus_past";
	}
	@GetMapping("/reviewlist")
	public String reviewlist(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/reviewlist";
	}
	@GetMapping("/pet_register")
	public String pet_register(Model model) {
		
		model.addAttribute("member", service.get("aaaa"));
		
		return "/bodeum/mypage/pet_register";
	}

}
