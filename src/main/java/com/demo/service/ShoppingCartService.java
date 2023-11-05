package com.demo.service;

import java.util.Collection;

import com.demo.entity.cart.itemCart;

public interface ShoppingCartService {

	
	itemCart addCart(itemCart cart);
	/**
	 * Xóa mặt hàng khỏi giỏ
	 * @param id mã mặt hàng cần xóa
	 */
	void remove(Integer id);
	/**
	 * Thay đổi số lượng lên của mặt hàng trong giỏ
	 * @param id mã mặt hàng
	 * @param qty số lượng mới
	 * @return mặt hàng đã được thay đổi số lượng
	 */
	itemCart update(Integer id, int qty);
	/**
	 * Xóa sạch các mặt hàng trong giỏ
	 */
	void clear();
	/**
	 * Lấy tất cả các mặt hàng trong giỏ
	 */
	Collection<itemCart> getItems();
	/**
	 * Lấy tổng số lượng các mặt hàng trong giỏ
	 */
	int getCount();
	/**
	 * Lấy tổng số tiền tất cả các mặt hàng trong giỏ
	 */
	double getAmount();
}
