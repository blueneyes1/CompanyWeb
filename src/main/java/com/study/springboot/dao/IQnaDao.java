package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.QnaDto;

@Mapper
public interface IQnaDao {
	public List<QnaDto> qna_list();
	public int qna_pwCheck(String qna_idx, String qna_pw);
	public QnaDto contentView(String qna_idx);
	public int qna_write(QnaDto dto);
	public int qna_delete(String qna_idx);
	public int qna_modify(String qna_idx, String qna_name, String qna_pw, String qna_title, String qna_content);
}
