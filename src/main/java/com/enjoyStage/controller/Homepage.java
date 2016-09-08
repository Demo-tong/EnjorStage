package com.enjoyStage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="homepage")
public class Homepage {
	@RequestMapping(value="homepageLoad")
	public ModelAndView homepageLoad(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("homepage");
		return mv;
	}

}
