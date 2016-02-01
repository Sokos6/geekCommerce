package com.webfrequency.geekcommerce.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webfrequency.geekcommerce.domain.Cart;
import com.webfrequency.geekcommerce.domain.repository.CartRepository;
import com.webfrequency.geekcommerce.service.CartService;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartRepository cartRepository;

	public Cart create(Cart cart) {
		return cartRepository.create(cart);
	}

	public Cart read(String cartId) {
		return cartRepository.read(cartId);
	}

	public void update(String cartId, Cart cart) {
		cartRepository.update(cartId, cart);
	}

	public void delete(String cartId) {
		cartRepository.delete(cartId);
		
	}

}
