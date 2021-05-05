package com.AlfaFidelReyhan.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.AlfaFidelReyhan.entity.Customer;
import com.AlfaFidelReyhan.entity.Product;
import com.AlfaFidelReyhan.repository.ProductRepository;

@Controller
public class ProductController {
	@Autowired
	 private ProductRepository productRepository;
	
	@GetMapping("/list-product")
    public String main(@RequestParam(required = false, defaultValue = "") String search,
                       Model model,
                       @PageableDefault(sort = {"id"}, direction = Sort.Direction.ASC) Pageable pageable
    ) {
        Page<Product> products;

        if (search != null && !search.isEmpty()) {
        	System.out.print("search: " + search);
            products = productRepository.findByName(search, pageable);
            System.out.print("products: " + products);
        } else {
        	products = productRepository.findAll(pageable);
        }

        model.addAttribute("products", products);
        model.addAttribute("search", search);

        return "operations/list-product";
    }
	
	@GetMapping("/addproduct")
	public String showSignUpForm(Product product) {
        return "operations/add-product";
    }
	
	@PostMapping("/addproduct")
    public String addProduct(@Valid Product product, BindingResult result, Model model, Pageable pageable) {
        if (result.hasErrors()) {
            return "operations/add-product";
        }
        
        productRepository.save(product);
        model.addAttribute("product", productRepository.findAll(pageable));
        return "redirect:/list-product";

    }
	@GetMapping("/edit1/{id}") public String showUpdateForm(@PathVariable("id")
	  long id, Model model) { Product product =
	  productRepository.findById(id) .orElseThrow(() -> new
	  IllegalArgumentException("Invalid  id:" + id));
	  
	  model.addAttribute("product", product); return "operations/update-product";
	  }
	  
	  @PostMapping("/update1/{id}") public String updateUser(@PathVariable("id")
	  long id, @Valid Product product, BindingResult result, Model model,
	  Pageable pageable) { if (result.hasErrors()) { product.setId(id);
	  return "operations/update-product"; }
	  
	  productRepository.save(product); model.addAttribute("product",
	  productRepository.findAll(pageable)); return "redirect:/list-product"; }
	  
	  @GetMapping("/delete1/{id}")
	    public String deleteUser(@PathVariable("id") long id, Model model, Pageable pageable) {
	        Product product = productRepository.findById(id)
	                .orElseThrow(() -> new IllegalArgumentException("Invalid  Id:" + id));
	        productRepository.delete(product);
	        model.addAttribute("product", productRepository.findAll(pageable));
	        return "redirect:/list-product";
	    }
	  
	 
}

