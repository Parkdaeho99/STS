package com.yt.apple.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserSignUpAction {
	public UserSignUpAction(){
		System.out.println("°´Ã¼»ý¼º");
	}
	public int enterTest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("1");
		request.setAttribute("TEST", "³È³È");
		System.out.println("Enter!!");
		return 30;
	}
}
