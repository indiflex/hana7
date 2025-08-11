package com.hana7.springdemo.config;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import com.hana7.springdemo.security.JwtAuthenticationFilter;
import com.hana7.springdemo.security.handler.CustomAccessDeiniedHandler;
import com.hana7.springdemo.security.handler.LoginFailureHandler;
import com.hana7.springdemo.security.handler.LoginSuccessHandler;

import lombok.extern.log4j.Log4j2;

@Configuration
@Log4j2
@EnableMethodSecurity
public class CustomSecurityConfig {
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		log.info("--- securityConfig");
		System.out.println("** SecurityConfig.filgerChain");

		http
			// .httpBasic(AbstractHttpConfigurer::disable)
			.csrf(AbstractHttpConfigurer::disable)
			.cors(config -> config.configurationSource(corsConfigurationSource()))
			.sessionManagement(config -> config.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
			.formLogin(form -> form
				.loginPage("/api/subscriber/login")
				// .loginProcessingUrl("/api/subscriber/login")
				.successHandler(new LoginSuccessHandler())
				.failureHandler(new LoginFailureHandler())
			)
			.exceptionHandling(config -> config.accessDeniedHandler(new CustomAccessDeiniedHandler()))
			.addFilterBefore(new JwtAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class);

		return http.build();
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public AuthenticationManager authenticationManager
		(AuthenticationConfiguration authConfig) throws Exception {
		return authConfig.getAuthenticationManager();
	}

	private CorsConfigurationSource corsConfigurationSource() {
		CorsConfiguration config = new CorsConfiguration();
		config.setAllowedOriginPatterns(List.of("*"));
		config.setAllowedMethods(List.of(
			HttpMethod.GET.name(),
			HttpMethod.POST.name(),
			HttpMethod.PATCH.name(),
			HttpMethod.OPTIONS.name(),
			HttpMethod.DELETE.name()));
		config.setAllowedHeaders(List.of(
			HttpHeaders.AUTHORIZATION,
			HttpHeaders.CACHE_CONTROL,
			HttpHeaders.CONTENT_TYPE));
		config.setAllowCredentials(true);

		UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
		source.registerCorsConfiguration("/**", config);
		return source;
	}
}
