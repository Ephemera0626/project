package com.bodeum.mapper;

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

public interface ShopMapper {
	
	//여기부터 하진
//	public List<BoardVO> getList();
	public List<ReviewVO> getList();
//	public BoardVO read(int rboardnum);
	public ReviewVO read(int rboardnum);
	public void insert(ReviewVO rvo);
	public void insertSelectKey(ReviewVO rvo);
	public int delete(int rboardnum);
	public int update(ReviewVO rvo);
	public List<ReviewVO> getListWithPaging(Criterial cri);
	public int getTotalCount(Criterial cri);
	
	public ProductVO getSpecificList(int itemnum);
	public BoardVO getSpecBoard(int boardnum);
	public ReviewVO getReviewBoard(int rboardnum);
	
	public void updateReplyCnt(@Param("boardnum") Long bno, @Param("amount") int amount);
}
