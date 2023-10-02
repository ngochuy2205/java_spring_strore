package edu.poly.controller.site;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.model.Product;
import edu.poly.repository.AccountDAO;
import edu.poly.repository.ProductDAO;
import edu.poly.utils.CookieService;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;

@Controller
@RequestMapping("home")
public class ProductSiteController {

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
	
	
	@RequestMapping("product")
	public String index() {
		return "home/product";
	}
	
	
	@RequestMapping(value = "product/detail/{id}")
	public String view(ModelMap model, @PathVariable("id") int id) {
		Product product = new Product();
		List<Product> products = proDAO.findAll();
		for (Product pr : products) {
			if (pr.getId() == id) {
				product = pr;
				break;
			}
		}
		model.addAttribute("products", products);
		model.addAttribute("pr", product);
		return "home/product";
	}
}
