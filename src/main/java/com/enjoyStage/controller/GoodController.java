package com.enjoyStage.controller;

import java.text.DecimalFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.enjoyStage.entity.Good;
import com.enjoyStage.service.IGoodService;
import com.enjoyStage.service.IOrderService;

@Controller
@RequestMapping("/good")
public class GoodController {

	@Autowired
	private IGoodService goodService;
	private IOrderService orderService;

	@RequestMapping("/doDetail")
	public ModelAndView doDetail(int id) {
		Good good = goodService.selectGoodById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("good", good);
		mv.setViewName("goodDetails");
		return mv;
	}
	
	/*
	 * 功能：实现从商品详情页面跳转至订单确认页面
	 * 参数：商品价格，商品分几期购买
	 */
	@RequestMapping("/orderSure")
	public ModelAndView orderSure(double price, Good good, String inlineRadioOptions) {
		
		double monthPay=0.0, subMoney=0.0;
		if(inlineRadioOptions.equals("三月")){
			monthPay = price/3.0 + price*0.005;
			subMoney = monthPay*3;
		}else if(inlineRadioOptions.equals("六月")){
			monthPay = price/6.0 + price*0.005;
			subMoney = monthPay*6;
		}else if(inlineRadioOptions.equals("九月")){
			monthPay = price/9.0 + price*0.005;
			subMoney = monthPay*9;
		}else if(inlineRadioOptions.equals("十二月")){
			monthPay = price/12.0 + price*0.005;
			subMoney = monthPay*12;
		}else{
			monthPay = price;
			subMoney = monthPay;
		}
		monthPay = Math.round(monthPay*100)/100;
		/*double monthPay = orderService.getMonthPay(price, inlineRadioOptions);*/
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("price", price);
		mv.addObject("inlineRadioOptions", inlineRadioOptions);
		mv.addObject("monthPay", monthPay);
		mv.addObject("subMoney", subMoney);
		mv.setViewName("order");
		return mv;
	}
}
