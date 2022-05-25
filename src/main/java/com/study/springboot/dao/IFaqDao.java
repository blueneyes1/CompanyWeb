package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.FaqDto;
import com.study.springboot.dto.NoticeDto;

@Mapper
public interface IFaqDao {
	public List<FaqDto> faq_list();
	public FaqDto contentView(String faq_idx);
	public List<FaqDto> faq_list_search_title( String keyword );
	public List<FaqDto> faq_list_search_content( String keyword );
	public List<FaqDto> faq_list_search_member_id( String keyword );
}
