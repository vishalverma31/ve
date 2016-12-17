package com.ve.veBackend.dao;

import com.ve.veBackend.model.Cart;
import com.ve.veBackend.model.Item;

public interface ItemDAO {
	public void addItem(Item item);
	public void removeItem(Item item);
	public void removeAllItems(Cart cart);
	public Item getItemByItemId(int itemId);

}
