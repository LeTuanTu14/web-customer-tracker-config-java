package com.se.webcustomertracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
    public String showHomePage() {
		return "redirect:/customer/list";
    }

    @GetMapping("/showMyLoginPage")
    public String showMyLoginPage() {

        return "fancy-login";

    }

    // add request mapping for /access-denied
    @GetMapping("/access-denied")
    public String showAccessDenied() {

        return "access-denied";

    }

}
