package com.ve.veBackend.dao;

import com.ve.veBackend.model.UserOrder;

public interface UserOrderDAO {
	
	public void addOrder(UserOrder order);
	public UserOrder getUserOrderById(int orderId);

}
