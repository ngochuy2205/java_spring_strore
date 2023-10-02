package edu.poly.controller.admin;

import java.net.http.HttpRequest;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.model.Account;
import edu.poly.model.Order;
import edu.poly.model.ReportCategory;
import edu.poly.model.RevenueReport;
import edu.poly.model.Top10;
import edu.poly.model.TopCustomer;
import edu.poly.repository.AccountDAO;
import edu.poly.repository.OrderDAO;
import edu.poly.repository.OrderDetailDAO;
import edu.poly.repository.ProductDAO;
import edu.poly.utils.CookieService;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;

@RequestMapping("admin")
@Controller
public class ReportController {

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
	OrderDAO orderDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@RequestMapping("bestsaler")
	public String bestSaler(Model model) {
		Pageable pageable = PageRequest.of(0, 10000); 
		Page<Top10> topList = orderDetailDAO.getTop10(pageable);
		model.addAttribute("topList", topList);
		return ("admin/bestsaler");
	}
	
	@RequestMapping("topcustomer")
	public String topCustomer(Model model) {
		List<TopCustomer> topCustomer = accDAO.getTopAccount();
		model.addAttribute("topCustomer", topCustomer);
		return ("admin/topcustomer");
	}
	
	@RequestMapping("reportcategory")
	public String inventory(Model model) {
		List<ReportCategory> items = proDAO.getReportCategory();
		model.addAttribute("items", items);
		return "admin/reportcategory";
	}
	
	@RequestMapping("reportOrderByDate")
	public String reportOrderByDate(Model model) {
		return "admin/reportOrderByDate";
	}
	
	
	@PostMapping("reportOrderByDate")
	public String reportByDate(Model model, @RequestParam("p") Optional<Integer> p) {
		Date firstDate = paramService.getDate("firstDate", "MM-dd-yyyy");
		Date lastDate = paramService.getDate("lastDate", "MM-dd-yyyy");
		sessionService.set("firstDate", firstDate);
		sessionService.set("lastDate", lastDate);
		Pageable pageable = PageRequest.of(p.orElse(0), 1000);
		Page<Order> page = orderDAO.findOrderByDate(firstDate, lastDate, pageable);
		model.addAttribute("page", page);
		return "admin/reportOrderByDate";
	}
	
	
	@RequestMapping("revenuereport")
	public String RevenueReport(Model model) {
		List<RevenueReport> items = orderDetailDAO.getRevenueByCategory();
		model.addAttribute("items", items);
		return "admin/revenuereport";
	}
	
}
