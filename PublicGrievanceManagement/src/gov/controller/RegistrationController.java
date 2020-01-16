package gov.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import gov.model.GovtConsumer;
import gov.service.ConsumerService;

@Controller
public class RegistrationController {
	@Autowired
	public ConsumerService consumerService;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("consumer") GovtConsumer consumer) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("consumer",new GovtConsumer());
		//consumerService.register(consumer);
		return mav;
	}

	@RequestMapping(value = "/regsuccess", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("consumer") GovtConsumer consumer){
		ModelAndView mav1= new ModelAndView("registersuccess");
		mav1.addObject("Name",consumer.getName());
		consumerService.register(consumer);
		return mav1;
	}

}
