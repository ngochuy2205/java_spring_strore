package edu.poly.controller.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import edu.poly.service.FileStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.model.Account;
import edu.poly.model.Category;
import edu.poly.repository.AccountDAO;
import org.springframework.web.multipart.MultipartFile;

@RequestMapping("admin")
@Controller
public class AccountController {
    @Autowired
    AccountDAO dao;

    @Autowired
    FileStorageService fileStorageService;

    @RequestMapping("account")
    public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
        Pageable pageable = PageRequest.of(p.orElse(0), 5);
        Page<Account> page = dao.findAll(pageable);
        int currentPage = 1;
        int totalItems = page.getNumberOfElements();
        int totalPages = page.getTotalPages();
        model.addAttribute("totalItems", totalItems);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("page", page);
        return "admin/accountList";
    }

    @RequestMapping("/accountControl")
    public String control(Model model) {
        Account item = new Account();
        model.addAttribute("item", item);
        return "admin/accountControl";
    }
    @RequestMapping("/account/edit/{username}")
    public String edit(Model model, @PathVariable("username") String username) {
        Account item = dao.findById(username).get();
        model.addAttribute("item", item);
        List<Account> items = dao.findAll();
        model.addAttribute("items", items);
        return "admin/accountControl";
    }

    @RequestMapping("/account/create")
    public String create(Account item, @RequestParam(name = "file") @Nullable MultipartFile multipartFile) throws IOException {
        String fileName = "";
        if (multipartFile !=null && !multipartFile.isEmpty()) {
            fileName = fileStorageService.saveFile(multipartFile);
        }
        if (!fileName.equals("")) {
            item.setPhoto(fileName);
        }
        dao.save(item);
        return "redirect:/admin/accountControl";
    }

    @RequestMapping("/account/delete/{username}")
    public String delete(@PathVariable("username") String username) {
        dao.deleteById(username);
        return "redirect:/admin/account";
    }

    @RequestMapping("/account/update/{username}")
    public String update(@PathVariable(name = "username") String username, Account item, @RequestParam(name = "file") @Nullable MultipartFile multipartFile) throws IOException {
        Account exsist = dao.findById(username).orElse(null);
        String fileName = "";
        if ( multipartFile !=null && !multipartFile.isEmpty()) {
            fileName = fileStorageService.saveFile(multipartFile);
        } else {
            if (exsist != null) {
                fileName = exsist.getPhoto();
            }
        }
        item.setPhoto(fileName);
        dao.save(item);
        return "redirect:/admin/account/edit/" + item.getUsername();
    }


    @ModelAttribute("activateds")
    public Map<Boolean, String> getActivateds() {
        Map<Boolean, String> map = new HashMap<>();
        map.put(true, "Active");
        map.put(false, "Unactive");
        return map;
    }

    @ModelAttribute("admins")
    public Map<Boolean, String> getAdmins() {
        Map<Boolean, String> map = new HashMap<>();
        map.put(true, "Admin");
        map.put(false, "Customer");
        return map;
    }
}
