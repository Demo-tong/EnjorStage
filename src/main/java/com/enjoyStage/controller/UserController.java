package com.enjoyStage.controller;

import java.io.Console;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.enjoyStage.entity.User;
import com.enjoyStage.service.IUserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="/loginRequest")
	public ModelAndView loginRequest(String username, String password){
		
		boolean bool = userService.selectByUsername(username, password);

		ModelAndView mv=new ModelAndView();
		if(bool){
			mv.addObject("username", username);
			mv.setViewName("homepage");
		}else{
			mv.addObject("bool", bool);
			mv.setViewName("login");
		}
		return mv;
	}
	
	@RequestMapping(value="/registRequest")
	public ModelAndView registRequest(String username, String password, String password_t){
		ModelAndView mv = new ModelAndView();
		boolean bool = userService.insertUser(username, password, password_t);
		if(bool){
			mv.setViewName("login");
		}else{
			mv.setViewName("regist");
		}
		return mv;
	}
	
	@RequestMapping(value="/registLoad")
	public ModelAndView registLoad(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("regist");
		return mv;
	}
	
	@RequestMapping(value="/loginLoad")
	public ModelAndView loginLoad(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
}