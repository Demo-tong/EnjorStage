package com.enjoyStage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.enjoyStage.entity.Good;
import com.enjoyStage.service.IGoodService;

@Controller
@RequestMapping("/good")
public class GoodController {

	@Autowired
	private IGoodService goodService;

	@RequestMapping("/doDetail")
	public ModelAndView doDetail(int id) {
		Good good = goodService.selectGoodById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("good", good);
		mv.setViewName("goodDetails");
		return mv;
	}

	@RequestMapping("/orderSure")
	public ModelAndView orderSure(double price, Good good, String inlineRadioOptions) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("price", price);
		mv.addObject("inlineRadioOptions", inlineRadioOptions);
		mv.setViewName("order");
		return mv;
	}
}
