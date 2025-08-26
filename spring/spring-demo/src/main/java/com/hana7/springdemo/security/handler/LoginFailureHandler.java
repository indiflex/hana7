package com.hana7.springdemo.security.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginFailureHandler implements AuthenticationFailureHandler {
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
		AuthenticationException exception) throws IOException, ServletException {
		System.out.println("*** FailureHandler = " + exception.getMessage());

		ObjectMapper objectMapper = new ObjectMapper();

		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.println(objectMapper.writeValueAsString(Map.of("error", "ERROR_LOGIN")));
		out.close();
	}
}
