package gov.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.log.UserDataHelper.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import gov.Dao.AdminDao;
import gov.Dao.ConsumerDao;
import gov.model.Admin;
import gov.model.AdminLog;
import gov.model.AreaComplaints;
import gov.model.GovtConsumer;
import gov.model.Login;
import gov.service.ConsumerService;

@Controller
@SessionAttributes("Name")
public class LoginController {
	@Autowired
	 ConsumerService consumerService;
	@Autowired
	ConsumerDao consumerDao;
	@Autowired
	AdminDao adminDao;
	
	@RequestMapping( method=RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("login") Login log)
	{
		ModelAndView mv=new ModelAndView("login");
		mv.addObject("login",new Login());
		return mv;
	}
	
	@RequestMapping(value="/loginSuccess",method=RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request,HttpServletResponse response,HttpSession session,@ModelAttribute("login") Login log)
	{
		 
		ModelAndView mv=null;
		GovtConsumer cons=consumerService.login(log);
		if(cons!=null)
		{
			
			mv=new ModelAndView("complain");
			session=request.getSession();
			mv.addObject("Name",cons.getName());
			session.setAttribute("Name", cons.getName());
			mv.addObject("sub",cons.getSuburb());
			mv.addObject("consid",cons.getConsumerId());
//			List<AreaComplaints> ac=consumerDao.selection();
//			//ModelAndView mv=new ModelAndView("welcome");
//			mv.addObject("AreaName",ac.get(0));
//			mv.addObject("AreaName1",ac.get(1));
		}
		else
		{
			mv=new ModelAndView("error");
			mv.addObject("message","Username or Password is Wrong!!");
		}
		return mv;
	} 
	
	@RequestMapping(value="/adminloginSuccess", method=RequestMethod.POST)
	public ModelAndView showComplaints(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("Alogin") Admin ad)
	{
		
//		//mv.addObject("Area",a.getAreaName());
//		List<AreaCompla> ac=consumerDao.selection();
//		ModelAndView mv=new ModelAndView("welcome");
//		mv.addObject("AreaName",ac.get(0));
//		return mv;
		
		ModelAndView mv=null;
		Admin cons=adminDao.selection(ad);
		if(cons!=null)
		{
			
			mv=new ModelAndView("welcomeadmin");
			List<AdminLog> ac=adminDao.selected(ad);
			//mv.addObject("list2",ac);
			//ModelAndView mv=new ModelAndView("welcomeadmin");
			//List<Student> students = studentJDBCTemplate.listStudents();
			
		
				mv.addObject("a",ac);
				mv.addObject("ac",ac);
				
			//mv.addObject("ComplainId",ac.get(a));
			/*mv.addObject("ConsumerName",ac.getConsumerName());
			mv.addObject("ComplainCategory",ac.getComplain_Category());
			mv.addObject("ComplainHeading",ac.getComplain_Heading());
			mv.addObject("Description",ac.getDescription());
			mv.addObject("Image",ac.getImage());
			mv.addObject("Affected_Address",ac.getAffected_Address());
			*/
			
			/*List<AdminLog> ac=adminDao.selected(ad);
			mv.addObject("All",ac.get(0));*/
			/*session=request.getSession();
			mv.addObject("Name",cons.getName());
			session.setAttribute("Name", cons.getName());*/
			//mv.addObject("sub",cons.getSuburb());
//			List<AreaComplaints> ac=consumerDao.selection();
//			//ModelAndView mv=new ModelAndView("welcome");
//			mv.addObject("AreaName",ac.get(0));
//			mv.addObject("AreaName1",ac.get(1));
		}
		else
		{
			mv=new ModelAndView("error");
			mv.addObject("message","Username or Password is Wrong!!");
		}
		return mv;
	}
	
	/*@RequestMapping(value="/adminlog", method=RequestMethod.POST)
	public ModelAndView showLog(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("Alogin") Admin ad)
	{
		List<AdminLog> ac=adminDao.selected(ad);
		ModelAndView mv=new ModelAndView("welcomeadmin");
		//List<Student> students = studentJDBCTemplate.listStudents();
		mv.addObject("ComplainId",((AdminLog) ac).getComplainId());
		mv.addObject("ConsumerName",((AdminLog) ac).getConsumerName());
		mv.addObject("ComplainCategory",((Admin) ac).getComplain_Category());
		mv.addObject("ComplainHeading",((AdminLog) ac).getComplain_Heading());
		mv.addObject("Description",((AdminLog) ac).getDescription());
		mv.addObject("Image",((AdminLog) ac).getImage());
		mv.addObject("Affected_Address",((AdminLog) ac).getAffected_Address());
		return mv;
	
}*/
}
