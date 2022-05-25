package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.NoticeDto;

@Mapper
public interface INoticeDao {
	public List<NoticeDto> notice_list();
	public NoticeDto notice_content( String notice_idx );
	public List<NoticeDto> notice_list_search_title( String keyword );
	public List<NoticeDto> notice_list_search_content( String keyword );
	public List<NoticeDto> notice_list_search_member_id( String keyword );
}
