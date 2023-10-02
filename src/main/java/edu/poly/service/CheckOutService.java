package edu.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.model.Account;
import edu.poly.model.CartItem;
import edu.poly.model.Order;
import edu.poly.model.OrderDetail;
import edu.poly.model.Product;
import edu.poly.repository.OrderDAO;
import edu.poly.repository.OrderDetailDAO;

@Service
public class CheckOutService {

	
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	public Order order (Account user, String address) {
		Order order = new Order();
		order.setAccount(user);
		order.setAddress(address);
		orderDAO.save(order);
		for(CartItem item:shoppingCartService.getItems()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setPrice(item.getPrice());
			orderDetail.setQuantity(item.getQty());
			
			Product product = new Product();
			product.setId(item.getId());
			product.setName(item.getName());
			orderDetail.setProduct(product);
			orderDetailDAO.save(orderDetail);
		}
		shoppingCartService.clear();
		return order;
	}
}
