package com.enjoyStage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.enjoyStage.service.IOrderService;

@Controller
@RequestMapping(value="/order")
public class OrderController {
	
	@Autowired
	private IOrderService orderService;
	
	@RequestMapping(value="/payLoad")
	public ModelAndView payLoad(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("alipay");
		return mv;
	}
	
	@RequestMapping(value="/alipayLoad")
	public ModelAndView alipayLoad(String aliuser, String password){
		
		boolean bool = orderService.selectByAliuser(aliuser, password);
		
		ModelAndView mv = new ModelAndView();
		
		if(bool){
			mv.setViewName("payconfirm");
		}else{
			mv.setViewName("alipay");
		}
		return mv;
	}
}
