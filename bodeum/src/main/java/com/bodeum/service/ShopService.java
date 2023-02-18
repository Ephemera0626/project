package com.bodeum.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bodeum.domain.AddressVO;
import com.bodeum.domain.BoardVO;
import com.bodeum.domain.CartVO;
import com.bodeum.domain.CouponVO;
import com.bodeum.domain.Criterial;
import com.bodeum.domain.MemberVO;
import com.bodeum.domain.OrderListVO;
import com.bodeum.domain.PaymentVO;
import com.bodeum.domain.ProductVO;
import com.bodeum.domain.ReviewVO;

public interface ShopService {
//하진
	public ProductVO getSpecificList(int itemnum);
	public BoardVO getSpecBoard(int boardnum);
//	public QacatVO getQacate(String qacatcode);
	public ReviewVO getReviewBoard(int rboardnum);

	
	public void register(ReviewVO rvo);
//	public BoardVO get(int rboardnum);
	public ReviewVO get(int rboardnum);
	public boolean modify(ReviewVO rvo) throws Exception;
	public boolean remove(int rboardnum);
	public List<ReviewVO> getList(Criterial cri);
	public int getTotal(Criterial cri);
	
}