package com.webfrequency.geekcommerce.domain.repository;

import com.webfrequency.geekcommerce.domain.Cart;

public interface CartRepository {
	
	Cart create(Cart cart);
	
	Cart read(String cardId);
	
	void update(String cardId, Cart cart);
	
	void delete(String cardId);

}
