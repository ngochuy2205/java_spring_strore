package edu.poly.controller.site;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.model.Product;
import edu.poly.repository.AccountDAO;
import edu.poly.repository.ProductDAO;
import edu.poly.utils.CookieService;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;

@Controller
@RequestMapping("home")
public class ShopController {

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

	// filter sản phẩm
//	@RequestMapping("shop")
//	public String shop(Model model, @RequestParam("field2") Optional<String> field2) {
//		Sort sort = Sort.by(Direction.DESC, field2.orElse("price"));
//		List<Product> list = proDAO.findAll(sort);
//		model.addAttribute("items", list);
//		return "home/shop";
//	}

	@RequestMapping("shop")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = proDAO.findAll(pageable);
		int currentPage = 1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "home/shop";
	}

	// Submit lọc theo hãng
	@RequestMapping("brand")
	public String locBrand(Model model, @RequestParam("category") Optional<String> categoryId,
			@RequestParam("p") Optional<Integer> p) {
		String field = categoryId.orElse(sessionService.get("categoryId"));
		sessionService.set("categoryId", field);
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = proDAO.findByCategory(field, pageable);
		model.addAttribute("page", page);
		return "home/brandshop";
	}

	// Submit theo khoang gia
	@RequestMapping("price")
	public String searchGia(Model model, @RequestParam("min") Optional<Integer> min,
			@RequestParam("max") Optional<Integer> max, @RequestParam("p") Optional<Integer> p) {
		Integer minPrice = min.orElse(Integer.MIN_VALUE);
		Integer maxPrice = max.orElse(Integer.MAX_VALUE);
		sessionService.set("max", maxPrice);
		sessionService.set("min", minPrice);
		Pageable pageable = PageRequest.of(p.orElse(0), 999);
		Page<Product> page = proDAO.findByPrice(minPrice, maxPrice, pageable);
		model.addAttribute("page", page);
		return "home/priceshop";

	}

	@RequestMapping("search")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(sessionService.get("keywords"));
		sessionService.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = proDAO.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "home/searchshop";
	}

}
