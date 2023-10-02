package edu.poly.controller.admin;

import java.io.IOException;
import java.util.Date;
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
import org.springframework.web.bind.annotation.*;

import edu.poly.model.Category;
import edu.poly.model.Product;
import edu.poly.repository.CategoryDAO;
import edu.poly.repository.ProductDAO;
import org.springframework.web.multipart.MultipartFile;


@RequestMapping("admin")
@Controller
public class ProductController {
    @Autowired
    ProductDAO dao;

    @Autowired
    CategoryDAO categoryDAO;
    @Autowired
    FileStorageService fileStorageService;

    @GetMapping("/product")
    public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
        Pageable pageable = PageRequest.of(p.orElse(0), 5);
        Page<Product> page = dao.findAll(pageable);
        int currentPage = 1;
        int totalItems = page.getNumberOfElements();
        int totalPages = page.getTotalPages();
        model.addAttribute("totalItems", totalItems);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("page", page);
        return "admin/productList";
    }

    @GetMapping("/productControl")
    public String control(Model model) {
        Product item = new Product();
        model.addAttribute("item", item);
        return "admin/productControl";
    }

    @GetMapping("/product/edit/{id}")
    public String edit(Model model, @PathVariable("id") Integer id) {
        Product item = dao.findById(id).get();
        model.addAttribute("item", item);
        List<Product> items = dao.findAll();
        model.addAttribute("items", items);
        return "admin/productControl";
    }

    @PostMapping("/product/create")
    public String create(Product item, @RequestParam(name = "file") @Nullable MultipartFile multipartFile) throws IOException {
        String fileName = "";
        if (multipartFile != null) {
            fileName = fileStorageService.saveFile(multipartFile);
        }
        if (!fileName.equals("")) {
            item.setImage(fileName);
        }
        item.setCreateDate(new Date());
        dao.save(item);
        return "redirect:/admin/productControl";
    }

    @RequestMapping("/product/delete/{id}")
    public String delete(@PathVariable("id") Integer id) {
        dao.deleteById(id);
        return "redirect:/admin/product";
    }

    @PostMapping("/product/update/{id}")
    public String update(@PathVariable("id") Integer id, Product item, @RequestParam(name = "file") @Nullable MultipartFile multipartFile) throws IOException {
        String fileName = "";
        Product exists = dao.findById(id).orElse(null);
        if (!multipartFile.isEmpty()) {
            fileName = fileStorageService.saveFile(multipartFile);
        } else {
            if (exists != null) {
                fileName = exists.getImage();
            }
        }
        item.setImage(fileName);
        item.setId(id);
        dao.save(item);
        return "redirect:/admin/product/edit/" + item.getId();
    }

    @ModelAttribute("categories")
    public List<Category> getCategories() {
        List<Category> categories = categoryDAO.findAll();
        return categories;
    }


    @ModelAttribute("availables")
    public Map<Boolean, String> getAdmins() {
        Map<Boolean, String> map = new HashMap<>();
        map.put(true, "Stocking");
        map.put(false, "Out of Stock");
        return map;
    }
}
