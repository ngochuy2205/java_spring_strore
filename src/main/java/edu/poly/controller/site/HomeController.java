package edu.poly.controller.site;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.model.Product;
import edu.poly.model.ProductReport;
import edu.poly.model.Top10;
import edu.poly.repository.AccountDAO;
import edu.poly.repository.OrderDetailDAO;
import edu.poly.repository.ProductDAO;
import edu.poly.utils.CookieService;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;


@Controller
@RequestMapping("home")
public class HomeController {
	
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDAO accDAO;	
	
	@Autowired
	ProductDAO proDAO;
	
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	
	// show index
	@RequestMapping("index")
	public String shop(Model model) {
		Pageable pageable = PageRequest.of(0, 10); 
		Page<Top10> topList = orderDetailDAO.getTop10(pageable);
		List<Product> wmList = proDAO.findByCategoryHome("2");
		model.addAttribute("WMitems", wmList);
		List<Product> mList = proDAO.findByCategoryHome("1");
		model.addAttribute("Mitems", mList);
		model.addAttribute("topList", topList);
		
		return "home/index";
	}
}
