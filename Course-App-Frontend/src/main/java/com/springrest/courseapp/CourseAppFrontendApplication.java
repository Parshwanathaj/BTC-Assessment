package com.springrest.courseapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class CourseAppFrontendApplication {

	public static void main(String[] args) {
		SpringApplication.run(CourseAppFrontendApplication.class, args);
	}

	@Bean
	public RestTemplate getRestTemplateBean() {
		return new RestTemplate();
	}

}
