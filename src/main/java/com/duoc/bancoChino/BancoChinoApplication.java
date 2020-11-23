package com.duoc.bancoChino;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = { "com.duoc.bancoChino" })
public class BancoChinoApplication {

	public static void main(String[] args) {
		SpringApplication.run(BancoChinoApplication.class, args);
	}

}
