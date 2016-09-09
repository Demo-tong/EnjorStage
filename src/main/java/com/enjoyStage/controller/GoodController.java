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
		
		@RequestMapping("/orderSure")
		public ModelAndView orderSure(){
			ModelAndView mv=new ModelAndView();
			mv.setViewName("order");
			return mv;
		}
}
