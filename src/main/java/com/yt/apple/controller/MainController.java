package com.yt.apple.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yt.apple.action.UserSignUpAction;

@Controller
public class MainController {
	private static final Logger Logger = LoggerFactory.getLogger(MainController.class);
	
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String home() {
    	Logger.info("HOME ON");
    	return "home";
    }

    @RequestMapping(value = "/signUp.do", method = RequestMethod.GET)
    public String signUp() {
    	return "signUp";
    }
    
    @RequestMapping(value = "/userSignup.do", method = RequestMethod.POST)
    public String userSignUp(HttpServletRequest request, HttpServletResponse response) {
    	System.out.println(request.getParameter("mberId"));
    	UserSignUpAction usua = new UserSignUpAction();
    	usua.enterTest(request, response);
    	return "home";
    }
}