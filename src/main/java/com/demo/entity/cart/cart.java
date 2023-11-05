package com.demo.entity.cart;

import java.util.ArrayList;
import java.util.List;

public class cart {

	
	 private List<itemCart> list = new ArrayList<>();

	    public cart() {
	        this.list = new ArrayList<>();
	    }

	    public void addItem(itemCart item) {
	    	list.add(item);
	    }

	    public List<itemCart> getItems() {
	        return list;
	    }
	    
	    public void deleteItem(itemCart item) {
	    	list.remove(item);
	    }
	    
}
