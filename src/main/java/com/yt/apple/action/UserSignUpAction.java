package com.yt.apple.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserSignUpAction {
	public UserSignUpAction(){
		System.out.println("��ü����");
	}
	public int enterTest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("1");
		request.setAttribute("TEST", "�ȳ�");
		System.out.println("Enter!!");
		return 30;
	}
}
