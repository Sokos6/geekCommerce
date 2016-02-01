package com.webfrequency.geekcommerce.service;

import com.webfrequency.geekcommerce.domain.Cart;

public interface CartService {
	
	Cart create(Cart cart);
	
	Cart read(String cartId);
	
	void update(String cartId, Cart cart);
	
	void delete(String cartId);

}
