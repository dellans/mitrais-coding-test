package com.della.mitrais.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.della.mitrais.model.RegistrationModel;
import com.della.mitrais.service.RegistrationService;

@Controller
public class RegistrationController {

	private RegistrationService regService;
	
//	@Autowired(required = true)
//	@Qualifier(value = "registrationService")
//	public void setRegistrationService(RegistrationService reg) {
//		this.regService = reg;
//	}
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		String url = "registration";
		return url;
	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String homeRegistration() {
		String url = "registration";
		return url;
	}
	
	@RequestMapping(value="/registration/save")
	public String addRegistration(HttpServletRequest request, Model model) throws ParseException {
		String phoneNumber = request.getParameter("phoneNumber");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		Date dob = null;
		if (request.getParameter("month").length() > 0) {
			String months = request.getParameter("month");
			String day = request.getParameter("day");
			String year = request.getParameter("year");
			String date = year + "-" + months + "-" + day;
			SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-mm-dd");
			dob = dateformat.parse(date);
		}
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");

		
		RegistrationModel regModel = new RegistrationModel();
		regModel.setPhoneNumber(phoneNumber);
		regModel.setFirstName(firstName);
		regModel.setLastName(lastName);
		regModel.setBirthday(dob);
		regModel.setGender(gender);
		regModel.setEmail(email);
		
		this.regService.register(regModel);
		
		String jsp = "success";
		return jsp;
	}
	
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public String successRegistration() {
		String url = "success";
		return url;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		String url = "login";
		return url;
	}
	
}
