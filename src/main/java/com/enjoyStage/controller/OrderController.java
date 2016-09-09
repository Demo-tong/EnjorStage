package com.enjoyStage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/order")
public class OrderController {
	@RequestMapping(value="/payLoad")
	public ModelAndView payLoad(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("alipay");
		return mv;
	}
	
	@RequestMapping(value="/alipayLoad")
	public ModelAndView alipayLoad(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("payconfirm");
		return mv;
	}
}
