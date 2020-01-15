package gov.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.log.UserDataHelper.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import gov.model.GovtConsumer;
import gov.model.Login;
import gov.service.ConsumerService;

@Controller
public class LoginController {
	@Autowired
	 ConsumerService consumerService;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("login") Login log)
	{
		ModelAndView mv=new ModelAndView("login");
		mv.addObject("login",new Login());
		return mv;
	}
	
	@RequestMapping(value="/loginSuccess",method=RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("login") Login log)
	{
		ModelAndView mv=null;
		GovtConsumer cons=consumerService.login(log);
		if(cons!=null)
		{
			mv=new ModelAndView("welcome");
			mv.addObject("Name",cons.getName());
		}
		else
		{
			mv=new ModelAndView("login");
			mv.addObject("message","Username or Password is Wrong!!");
		}
		return mv;
	} 
	
	
}
