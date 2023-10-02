package edu.poly.controller.site;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class ProfileController {

	@RequestMapping("profile")
	public String profile() {
		
		return "home/profile";
	}
}
