package com.hw.photoshop;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hw.photoshop.config.ProConf;


@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes=App.class)
public class AppTest {
	@Autowired
	private ProConf conf;
	
	@Test
	public void outinfo(){
		System.out.println(conf.getSimpleProp());
	}
	
    
}
