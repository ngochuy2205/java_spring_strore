package edu.poly.controller.site;


import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import edu.poly.service.FileStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import edu.poly.model.Account;
import edu.poly.model.Category;
import edu.poly.repository.AccountDAO;
import edu.poly.utils.ParamService;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("home")
public class RegisterController {
	@Autowired
	ParamService paramService;
	
	@Autowired
	AccountDAO accountDAO;

	@Autowired
	FileStorageService fileStorageService;
	
	@GetMapping("register")
	public String register(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		return "home/register";
	}
	
	@PostMapping("/register/create")
	public String create(Model model, Account item, @RequestParam(name = "file")@Nullable MultipartFile multipartFile) throws IOException {
		String fileName = "";
		if(!multipartFile.isEmpty()){
			fileName=fileStorageService.saveFile(multipartFile);
		}
		if(!fileName.equals("")){
			item.setPhoto(fileName);
		}
		item.setActivated(false);
		item.setAdmin(false);
		accountDAO.save(item);
		model.addAttribute("message", "Insert successfully");
		return "redirect:/home/login";
	}
	

	@ModelAttribute("activateds")
	public Map<Boolean, String>getActivateds(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Active");
		map.put(false, "Unactive");
		return map;
	}
	
	@ModelAttribute("admins")
	public Map<Boolean, String>getAdmins(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Admin");
		map.put(false, "Customer");
		return map;
	}
}
