package edu.poly.service;

import java.util.Collection;

import edu.poly.model.CartItem;



public interface ShoppingCartService {

	
	CartItem add(Integer id);

	
	CartItem sub(Integer id);
	
	void remove(Integer id);

	
	
	CartItem update(Integer id, int qty);

	
	
	void clear();

	
	
	Collection<CartItem> getItems();

	
	int getCount();

	
	
	double getAmount();
	
	
	
	
	double getTotal();
}
