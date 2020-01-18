package gov.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import gov.Dao.ConsumerDao;
import gov.model.Complaints;
import gov.model.Login;

@Controller
public class ComplainController {

	@Autowired
	ConsumerDao consumerDao;
	
	@RequestMapping(value="/insertComplain",method=RequestMethod.POST)
	public ModelAndView showLogin(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("complain") Complaints comp)
	{
		ModelAndView mv=new ModelAndView("showcomplain");
		mv.addObject("complain",new Complaints());
		mv.addObject("name",comp.getConsumerName());
		mv.addObject("compcat",comp.getComplain_Category());
		mv.addObject("compheading",comp.getComplain_Heading());
		mv.addObject("desc",comp.getDescription());
		consumerDao.complainRegister(comp);
		return mv;
	}
}
