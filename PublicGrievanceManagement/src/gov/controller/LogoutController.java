package gov.controller;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.sun.java.swing.plaf.windows.resources.windows;

import gov.model.Login;
@Controller
@SessionAttributes("Name")
public class LogoutController {
	
	 @RequestMapping(value="/logout")
	    public ModelAndView doFilter(ServletRequest req, ServletResponse res) throws IOException,
	                ServletException {

	            HttpServletRequest request = (HttpServletRequest) req;
	            HttpServletResponse response = (HttpServletResponse) res;
	            String url = request.getRequestURI();
	           // windows.clearCache();
	            response.setHeader("pragma", "no-cache");              
	            response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");             
	            response.setHeader("Expires", "0"); 
	            HttpSession session = request.getSession();
	            session.invalidate();
	          ModelAndView mv=new ModelAndView("login");
	          return mv;
	            
	            }

	            
	        }
/*public ModelAndView logout(HttpServletRequest request,HttpServletResponse response)
{
		ModelAndView mv=new ModelAndView("login");
		
		
		
		HttpSession session=request.getSession();  
        session.invalidate();  
        session=request.getSession(false);
        return mv;
		}*/

