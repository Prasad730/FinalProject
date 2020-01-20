package gov.controller;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

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
import gov.model.Complaints;
import gov.model.Login;

@Controller
public class ComplainController {

	@Autowired
	ConsumerDao consumerDao;
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value="/insertComplain",method=RequestMethod.POST)
	public ModelAndView showLogin(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("complain") Complaints comp) throws IOException
	{
		ModelAndView mv=new ModelAndView("showcomplain");
		mv.addObject("complain",new Complaints());
		mv.addObject("name",comp.getConsumerName());
		mv.addObject("compcat",comp.getComplain_Category());
		mv.addObject("compheading",comp.getComplain_Heading());
		mv.addObject("desc",comp.getDescription());
		mv.addObject("img",comp.getImage());
	
		consumerDao.complainRegister(comp);
		
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
}
