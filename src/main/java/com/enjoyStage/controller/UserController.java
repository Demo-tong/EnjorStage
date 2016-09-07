package com.enjoyStage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.enjoyStage.entity.User;
import com.enjoyStage.service.IUserService;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="/list")
	public ModelAndView list(){
		List<User> userList = userService.findAll();
		ModelAndView mv = new ModelAndView();

		mv.addObject("list", userList);
		mv.setViewName("list");
		
		return mv;
	}
}
