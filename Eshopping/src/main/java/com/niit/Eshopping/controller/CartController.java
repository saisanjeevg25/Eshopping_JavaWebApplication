package com.niit.Eshopping.controller;


import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.EshoppingBackend1.dao.CartDAO;
import com.niit.EshoppingBackend1.dao.ProductDAO;
import com.niit.EshoppingBackend1.dao.UserDAO;
import com.niit.EshoppingBackend1.dao.CartItemDAO;
import com.niit.EshoppingBackend1.dto.Cart;
import com.niit.EshoppingBackend1.dto.CartItem;
import com.niit.EshoppingBackend1.dto.Product;
import com.niit.EshoppingBackend1.dto.User;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	UserDAO userDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CartDAO cartDAO;
	@Autowired
	CartItemDAO cartItemDAO;
	
	private User user;
	
	CartItem cartItem = new CartItem();

	@RequestMapping(value = "/user/viewcart")
	public String userviewcart(Principal principal, Model model) {

		if (principal != null) {
			user = userDAO.getUserByUsername(principal.getName());
               System.out.println("checking for the user");
			if (user.getRole().equals("ADMIN"))
				return "redirect:/admin/show/product";

		}

		model.addAttribute("title", "View Cart");

		model.addAttribute("cartitemlist", (user.getCart()).getCartItem());

		model.addAttribute("userClickViewCart", true);
		
		return "page";
	}
	
	@RequestMapping(value = "/user/addtocart/{id}")
	public String useraddproducttocart(@PathVariable("id") int id, Principal principal, Model model) {

		CartItem cartItem = null;
         System.out.println("principal user "+principal.getName());
		user = userDAO.getUserByUsername(principal.getName());
		System.out.println("value:"+user.getEmail());
		Cart cart = user.getCart();
		System.out.println("cart" + cart.getId());
		if (cart.getCartItem() != null) {
			for (CartItem o : cart.getCartItem()) {
				if (o.getProduct().getId() == id) {
					System.out.println("inside loop");
					cartItem = o;
					System.out.println("going to exit loop");
					break;
				}
			}
		}
	
		if (cartItem == null) {
			
			Product product = productDAO.getById(id);
			cartItem = new CartItem();
			cartItem.setCart(cart);
			cartItem.setProduct(product);
			cartItem.setQuantity(cartItem.getQuantity() + 1);
			cartItem.setTotalPrice(product.getPrice() * cartItem.getQuantity());

			cart.setGrandTotal(cart.getGrandTotal() + cartItem.getTotalPrice());
			cart.setCartItemsCount(cart.getCartItemsCount() + 1);
			cartItemDAO.add(cartItem);
		} else {
			cartItem.setQuantity(cartItem.getQuantity() + 1);
			cartItem.setTotalPrice((cartItem.getProduct()).getPrice() * cartItem.getQuantity());

			cart.setGrandTotal(cart.getGrandTotal() + cartItem.getTotalPrice());
			cartItemDAO.update(cartItem);

		}
		return "redirect:/cart/user/viewcart";

	}
	
	@RequestMapping(value = "/user/delete/{id}")
	public String userdeleteproductfromcart(@PathVariable("id") int id, Model mv) {

		CartItem cartItem = cartItemDAO.get(id);
		Cart cart = cartItem.getCart();
		cart.setCartItemsCount(cart.getCartItemsCount() - cartItem.getQuantity());
		cart.setGrandTotal(cart.getGrandTotal() - cartItem.getTotalPrice());
		cartDAO.update(cart);
		cartItemDAO.delete(id);
		return "redirect:/cart/user/viewcart";
	}

	public void confirmDeleteCartItem(CartItem cartItem) {
		Cart existingCart = new Cart();

		// if no items in the cart
		if (existingCart == null || existingCart.getId() == 0) {

		} else {
			if (cartItem.getQuantity() == 1)
				cartItemDAO.delete(existingCart.getId());
			else {
				cartItem.setQuantity(cartItem.getQuantity() - 1);

				cartItemDAO.update(cartItem);
			}
		}

	}

}
