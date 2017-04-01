package com.hw.photoshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hw.photoshop.config.ProConf;

@RestController
public class PhotoShopController {
	@Autowired
	private ProConf pro; 
	
	@RequestMapping("/")
	public String hello(){
		return pro.getSimpleProp();
		
	}

}
