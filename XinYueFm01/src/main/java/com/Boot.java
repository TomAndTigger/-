package com;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.idao")
public class Boot {

	public static void main(String[] args) {
		SpringApplication.run(Boot.class, args);
	}
}
