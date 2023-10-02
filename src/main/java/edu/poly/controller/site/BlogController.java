package edu.poly.controller.site;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class BlogController {

	@RequestMapping("blog")
	public String index() {
		return "home/blog";
	}
}
