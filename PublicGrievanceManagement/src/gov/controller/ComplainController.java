package gov.controller;

import org.springframework.mail.*;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import gov.Dao.ConsumerDao;
import gov.model.AdminLog;
import gov.model.CompStatus;
import gov.model.Complaints;
import gov.model.GovtConsumer;
import gov.model.Login;
import gov.model.MyComplaints;

@Controller
public class ComplainController {

	@Autowired
	ConsumerDao consumerDao;
	@Autowired
	ServletContext servletContext;
	@Autowired
	private JavaMailSender mailSenderObj;
	
	@RequestMapping(value="/insertComplain",method=RequestMethod.POST)
	public ModelAndView showLogin(HttpServletRequest request,HttpServletResponse response, Complaints comp) throws IOException
	{
		ModelAndView mv=new ModelAndView("showcomplain");
		mv.addObject("complain",new Complaints());
		mv.addObject("name",comp.getConsumerName());
		mv.addObject("compcat",comp.getComplain_Category());
		mv.addObject("compheading",comp.getComplain_Heading());
		mv.addObject("desc",comp.getDescription());
		mv.addObject("img",comp.getImage());
	
		consumerDao.complainRegister(comp);
		
		final String mailTo=consumerDao.getEmail();
		
		mailSenderObj.send(new MimeMessagePreparator() {
            public void prepare(MimeMessage mimeMessage) throws Exception {
 
                MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");             
                mimeMsgHelperObj.setTo(mailTo);
                mimeMsgHelperObj.setFrom("prasad1998shinde@gmail.com");               
                /*mimeMsgHelperObj.setText(emailMessage);
                mimeMsgHelperObj.setSubject(emailSubject);*/
 
                // Determine If There Is An File Upload. If Yes, Attach It To The Client Email              
               
            }
        });
        System.out.println("\nMessage Send Successfully.... Hurrey!\n");
 
     
		
		
		
	 /*   
	   String path="E:\\FinalProjectBeta\\PublicGrievanceManagement\\WebContent\\resources\\images\\";
	   
	    File file = new File(path+comp.getImage());
	    OutputStream out = new FileOutputStream(file);
	    
	    out.close();*/
/*		Path result =  Files.move(Paths.get("‪C\\Users\\group003\\Downloads\\"+comp.getImage()), Paths.get("E\\FinalProjectBeta\\PublicGrievanceManagement\\WebContent\\resources\\images\\"+comp.getImage()));
*/		
		File file = new File("C:\\Users\\group003\\Downloads\\"+comp.getImage()); 
        
        
        file.renameTo 
           (new File("E:\\FinalProjectBeta\\PublicGrievanceManagement\\WebContent\\resources\\images\\"+comp.getImage()));
        OutputStream out = new FileOutputStream(file);
		return mv;
	}
	@RequestMapping(value="/showstat",method=RequestMethod.POST)
	public ModelAndView inputStatus(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("showstatus") List<CompStatus> co)
	{
		
		consumerDao.status(co);
		ModelAndView mv=new ModelAndView("welcomeadmin");
		return mv;
		
	}
	
	@RequestMapping(value="/mycomplaints",method=RequestMethod.POST)
	public ModelAndView showComplaints(HttpServletRequest request,HttpServletResponse response,MyComplaints m )
	{
		
		List<MyComplaints> ac=consumerDao.showMyComplaints(m);
		ModelAndView mv=new ModelAndView("viewmycomplain");
		System.out.println(mv.addObject(ac));
		
		mv.addObject("a",ac);
		return mv;
		
	}
	
}
