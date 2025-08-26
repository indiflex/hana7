package com.hana7.springdemo.security;

import java.nio.charset.StandardCharsets;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.Map;

import javax.crypto.SecretKey;

import org.springframework.security.core.Authentication;

import com.hana7.springdemo.jpa.dto.SubscriberDTO;
import com.hana7.springdemo.security.exception.CustomJwtException;

import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.InvalidClaimException;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.security.Keys;
import io.jsonwebtoken.security.WeakKeyException;

public class JwtUtil {
	private static final SecretKey K = Keys.hmacShaKeyFor(
		"asdlkjsa232sa;ljdsf$#$asdfdsaf!@!asdfdsafsdfsdaf".getBytes(StandardCharsets.UTF_8));

	public static String generateToken(Map<String, Object> valueMap, int min) {
		String jwtStr = Jwts.builder().setHeader(Map.of("typ", "JWT"))
			.setClaims(valueMap)
			.setIssuedAt(Date.from(ZonedDateTime.now().toInstant()))
			.setExpiration(Date.from(ZonedDateTime.now().plusMinutes(min).toInstant()))
			.signWith(K).compact();
		System.out.println("jwtStr = " + jwtStr);
		return jwtStr;
	}

	public static Map<String, Object> validateToken(String token) {
		// Claims claim = null;
		Map<String, Object> claim = null;
		SecretKey key = null;

		try {
			claim = Jwts.parserBuilder()
				.setSigningKey(K)
				.build()
				.parseClaimsJws(token).getBody();
		} catch (WeakKeyException e) {
			throw new CustomJwtException("WeakException");
		} catch (MalformedJwtException e) {
			throw new CustomJwtException("MalFormed");
		} catch (ExpiredJwtException e) {
			throw new CustomJwtException("Expired");
		} catch (InvalidClaimException e) {
			throw new CustomJwtException("Invalid");
		} catch (JwtException e) {
			throw new CustomJwtException("JwtError");
		} catch (Exception e) {
			throw new CustomJwtException("UnknownError");
		}

		return claim;
	}

	public static Map<String, Object> authenticationToClaims(Authentication authentication) {
		SubscriberDTO d = (SubscriberDTO)authentication.getPrincipal();
		SubscriberDTO dto = new SubscriberDTO(d.getEmail(), "", d.getNickname(), d.isSocial(), d.getRoleNames());
		Map<String, Object> claims = dto.getClaims();
		claims.put("accessToken", JwtUtil.generateToken(claims, 10));
		claims.put("refreshToken", JwtUtil.generateToken(claims, 60 * 24));

		return claims;
	}
}
