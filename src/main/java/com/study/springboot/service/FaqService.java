package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IFaqDao;
import com.study.springboot.dto.FaqDto;

@Component
public class FaqService {
	@Autowired
	private IFaqDao faqDao;
	
	public List<FaqDto> faq_list() {
		 List<FaqDto> faq_list = faqDao.faq_list();
		 return faq_list;
	}
	public FaqDto contentView(String faq_index) {
		FaqDto dto = faqDao.contentView(faq_index);
		return dto;
	}
	
	public List<FaqDto> faq_list_search(String search_cate, String keyword) {
		
		List<FaqDto> faq_list = null;
		if(search_cate.equals("title")) {
			faq_list = faqDao.faq_list_search_title( keyword );
		}
		else if(search_cate.equals("content")) {
			faq_list = faqDao.faq_list_search_content( keyword );
		}
		
		return faq_list;
		
	}
}
