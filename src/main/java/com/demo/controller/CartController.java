package com.demo.controller;



import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.entity.OrderDetail;
import com.demo.entity.Orders;
import com.demo.entity.Watches;
import com.demo.entity.Dao.OrderDao;
import com.demo.entity.Dao.OrderDetailDao;
import com.demo.entity.Dao.WatchesDao;
import com.demo.entity.cart.OrderRequestDTO;
import com.demo.entity.cart.cart;
import com.demo.entity.cart.itemCart;
import com.demo.service.SessionService;

@Controller
public class CartController {
	

	@Autowired 
	OrderDetailDao detailDao;
	
	
	@Autowired
	OrderRequestDTO dto;
	
	@Autowired
	OrderDao orderDao;
	
	
	@Autowired
	WatchesDao dao;
	
	@Autowired
	SessionService service;
	
	
	@GetMapping("/product/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) {
        // Lấy thông tin sản phẩm từ cơ sở dữ liệu
//        Product product = productService.getProductById(productId);
        Optional<Watches> watches = dao.findById(productId);
        System.out.println(watches);
        if (watches.isPresent()) {
            // Nếu tìm thấy sản phẩm, gửi nó đến view để hiển thị
            model.addAttribute("product", watches.get());
        } 
        return "/home/cart/ProducDetails";

        // Hiển thị sản phẩm trên trang Chi tiết sản phẩm và cho phép người dùng thêm vào giỏ hàng
     
    }
	
	@GetMapping("/cart/view")
    public String viewCart(Model model , OrderRequestDTO dto) {
        // Lấy giỏ hàng từ phiên làm việc của người dùng và hiển thị nó trên trang web
        cart cart = service.get("cart");

    if (cart != null && !cart.getItems().isEmpty()) {
        // Tính tổng số tiền trong giỏ hàng
        BigDecimal totalAmount = BigDecimal.ZERO;
      
        
        for (itemCart item : cart.getItems()) {
            if (item != null) {
                BigDecimal itemTotal = item.getPrice().multiply(BigDecimal.valueOf(item.getQty()));
                totalAmount = totalAmount.add(itemTotal);

            }
        }

       
        
        model.addAttribute("totalAmount", totalAmount);

        model.addAttribute("cart", cart);
        
	}
        
        // Đặt tổng số tiền vào model để hiển thị trên trang JSP
      
        model.addAttribute("khachhang",dto);

        
        return "/home/cart/cart";
        
        
    }
	
	 @RequestMapping("/product/delete/{productId}")
	    public String deleteCart(@PathVariable Long productId ) {
		
	     cart cart = service.get("cart");

	     // Kiểm tra giỏ hàng không rỗng
	     if (cart != null) {
	         // Lặp qua danh sách mục và xóa mục có productId tương ứng
	         for (itemCart item : cart.getItems()) {
	             if (item != null &&  item.getId() == productId) {
	                 cart.deleteItem(item);
	                 break; // Kết thúc vòng lặp sau khi xóa mục
	             }
	         }
	     }
	     
	     
		 
	    return "redirect:/cart/view";
	 }
	 @RequestMapping("/product/add/{productId}")
	    public String addToCart(@PathVariable int productId, @RequestParam("quantity") int quantity) {
	        // Lấy thông tin sản phẩm từ cơ sở dữ liệu
	        Watches watches = dao.getById(productId);
	        
	        // Tạo một CartItem và thêm vào giỏ hàng
	        itemCart cartItem = new itemCart();
	        cartItem.setId(watches.getWatchid());
	        cartItem.setName(watches.getName());
	        cartItem.setPrice(watches.getPrice());
	        cartItem.setQty(quantity);
	        cartItem.setImage(watches.getImage());
            cartItem.setWatch(watches);

            System.out.println(cartItem.toString());
            
	        // Lấy giỏ hàng từ phiên làm việc của người dùng và thêm sản phẩm vào đó
	        cart cart = service.get("cart");
	        
	        if (cart == null) {
	            cart = new cart();
	            service.set("cart", cart);
	        }
	        cart.addItem(cartItem);

	        // Chuyển hướng người dùng đến trang giỏ hàng
	        return "redirect:/cart/view";
	    }
	 
	 @RequestMapping("/order")
	 public String createOder(Model model , @ModelAttribute("khachhang")OrderRequestDTO order ) {
		
		  // Lấy giỏ hàng từ phiên làm việc của người dùng và hiển thị nó trên trang web
	        cart cart = service.get("cart");
	        


	    if (cart != null && !cart.getItems().isEmpty()) {
	        // Tính tổng số tiền trong giỏ hàng
	        BigDecimal totalAmount = BigDecimal.ZERO;
	      
	        
	        for (itemCart item : cart.getItems()) {
	            if (item != null) {
	                BigDecimal itemTotal = item.getPrice().multiply(BigDecimal.valueOf(item.getQty()));
	                totalAmount = totalAmount.add(itemTotal);

	            }
	        }
	        
	        
//	        xử lí lưu thông tin orderdetail vào service
	        List<itemCart> cartItems = cart.getItems(); // Lấy danh sách sản phẩm từ giỏ hàng
	        List<OrderDetail> orderDetailsList = new ArrayList<>();

	        Orders orders = new Orders();
	        
	        orders.setFullname(order.getFullName());
	        orders.setPhoneNumber(order.getPhoneNumber());
	        orders.setEmail(order.getEmail());
	        orders.setAddress(order.getAddress());
	        orders.setNote(order.getNote());
	        orders.setPaymentMethod(order.getPaymentMethod());
	        
	     // Chuyển đổi BigDecimal thành double
	        double convertedAmount = totalAmount.doubleValue();
	        orders.setTotalAmount(convertedAmount);
	        
//	        orderDao.save(orders);
	        // lưu vào service
            service.set("order", orders);
	        
	        System.out.println("lưu orders vào sql ! ");
	        
	        for (itemCart cartItem : cartItems) {
	        	
	        	 OrderDetail orderDetails = new OrderDetail();	
	        	
	        	  orderDetails.setWatch(cartItem.getWatch());
	        	  orderDetails.setQuantity(cartItem.getQty());
	        	  orderDetails.setOrder(orders);
	        	  orderDetails.setPrice(cartItem.getPrice());
	        	  
	        	  service.set("orderDetails", orderDetails);
	        	  

			}

	       
//             // lưu vào service
//             service.set("cartdetail", orderDetailsList);
   
	        // xử lí mã giảm giá
             String Magiamgia = order.getDiscountCode();

             if (Magiamgia != null && Magiamgia.equals("chuongdeptrai") ) {
				
            	 totalAmount = totalAmount.subtract(totalAmount);
            	 model.addAttribute("totalAmount", totalAmount);
            	 model.addAttribute("message", "bạn đã sử dụng mã giảm giá 100%");
            	 
			}else {
			    // Đặt tổng số tiền vào model để hiển thị trên trang JSP

				model.addAttribute("totalAmount", totalAmount);
			} 
		}
	        
	    return "/home/cart/order";
	}
	 
	 @RequestMapping("/xacnhan")
	 public String thanhtoan(Model model) {
		
         // lấy ra đối tượng đã được lưu trước đó 
	    OrderDetail detail = service.get("orderDetails");
	    
	    Orders orders = service.get("order");
	    
	    
	    orderDao.save(orders);
	    // phải tạo order trước orderDetail
	    detailDao.save(detail);
	    
	    System.out.println(orders.toString());
		System.out.println(detail.toString());
		 
		System.out.println("lưu order và ordetail vào sql");
		 return "/home/cart/thankyou";
	 }
	

}
