package com.bodeum.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
import com.bodeum.mapper.ShopMapper;

@Service
public class ShopServiceimpl implements ShopService {

	@Autowired
	public ShopMapper boardMapper;
	
	@Override
	public ProductVO getSpecificList(int itemnum) {
		return boardMapper.getSpecificList(itemnum);
	}
	@Override
	public void register(ReviewVO rvo) {
		boardMapper.insertSelectKey(rvo);
	}

//	@Override
//	public BoardVO get(int rboardnum) {
//		return boardMapper.read(rboardnum);
//	}
	
	@Override
	public ReviewVO get(int rboardnum){
		return boardMapper.read(rboardnum);
	}

	@Override
	public boolean modify(ReviewVO rvo) {
		return boardMapper.update(rvo)==1? true : false;
	}

	@Override
	public boolean remove(int rboardnum) {
		return boardMapper.delete(rboardnum)==1? true : false;
	}

	@Override
	public List<ReviewVO> getList(Criterial cri) {
		return boardMapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criterial cri) {
		return boardMapper.getTotalCount(cri);
	}

//	@Override
//	public ProductVO getSpecificList() {
//		return boardMapper.getSpecificList();
//	}

	@Override
	public BoardVO getSpecBoard(int boardnum) {
		return boardMapper.getSpecBoard(boardnum);
	}
	
//	@Override
//	public QacatVO getQate(String qacatcode) {
//		return boardMapper.getQacate(qacatcode);
//	}
	
	@Override
	public ReviewVO getReviewBoard(int rboardnum) {
		return boardMapper.getReviewBoard(rboardnum);
	}

	
	
	
}
