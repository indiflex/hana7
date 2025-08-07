package com.hana7.springdemo.jpa.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.context.MessageSource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.hana7.springdemo.jpa.dto.Lang;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/public")
public class LangController {
	private static final String SessLocale = SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME;

	private final MessageSource ms;

	@GetMapping("/langs")
	public Map<String, Object> langs(HttpSession session) {
		Map<String, Object> res = new HashMap<>();
		// res.put("Langs", Lang.values());
		res.put("Langs", Lang.getLangs());

		Locale currLang = (Locale)session.getAttribute(SessLocale);
		if (currLang == null)
			currLang = Locale.getDefault();

		res.put("currLang", currLang);

		res.put("siteTitle", ms.getMessage("site.title", null, currLang));

		return res;
	}

	@PostMapping("setlang")
	public ResponseEntity<?> setLang(@RequestHeader("Accept-Language") String lang, HttpSession session) {
		Locale locale = Locale.forLanguageTag(lang);
		session.setAttribute(SessLocale, locale);
		return ResponseEntity.ok((Locale)session.getAttribute(SessLocale));
	}

}
