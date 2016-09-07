package com.enjoyStage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/good")
public class GoodController {

		@RequestMapping("/doDetail")
		public ModelAndView doDetail(){
			ModelAndView mv=new ModelAndView();
			mv.setViewName("goodsDetails");
			return mv;
		}
		
		@RequestMapping("/alipay")
		public ModelAndView alipay(){
			ModelAndView mv=new ModelAndView();
			mv.setViewName("alipay");
			return mv;
		}
		
		@RequestMapping("/cardpay")
		public ModelAndView cardpay(){
			ModelAndView mv=new ModelAndView();
			mv.setViewName("cardpay");
			return mv;
		}
}
