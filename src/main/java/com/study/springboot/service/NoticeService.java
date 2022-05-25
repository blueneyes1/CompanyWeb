package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.INoticeDao;
import com.study.springboot.dto.NoticeDto;

@Component
public class NoticeService {
	@Autowired
	private INoticeDao noticeDao;
	
	public List<NoticeDto> notice_list(){
		List<NoticeDto> notice_list = noticeDao.notice_list();
		return notice_list;
	}
	
	public NoticeDto notice_content(String notice_idx) {
		NoticeDto notice_dto = noticeDao.notice_content( notice_idx );
		return notice_dto;
	}
	
	public List<NoticeDto> notice_list_search(String search_cate, String keyword) {
		
		List<NoticeDto> notice_list = null;
		if(search_cate.equals("title")) {
			notice_list = noticeDao.notice_list_search_title( keyword );
		}
		else if(search_cate.equals("content")) {
			notice_list = noticeDao.notice_list_search_content( keyword );
		}
	
		return notice_list;
	}
}



