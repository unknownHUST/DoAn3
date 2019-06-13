package com.leanhtuan.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.leanhtuan.entity.Cart;

@Controller
@RequestMapping("cart")
public class CartController {
	
	@GetMapping
	public String getCartDefault(HttpSession httpSession,  ModelMap modelMap) {
		Cart cart = (Cart) httpSession.getAttribute("cart");
		modelMap.addAttribute("listcart", cart);
		//System.out.println(cart.totalCart());getItemCart().isEmpty()
//		cart.getItemCart().size();
		return "cart.jsp";
	}
}
