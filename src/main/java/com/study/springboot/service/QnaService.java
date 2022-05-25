package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IQnaDao;
import com.study.springboot.dto.QnaDto;

@Component
public class QnaService {
	@Autowired
	private IQnaDao qnaDao;
	
	public List<QnaDto> qna_list() {
		List<QnaDto> qna_list = qnaDao.qna_list();
		return qna_list;
	}
	
	public int qna_pwCheck(String qna_idx, String qna_pw) {
		int result = qnaDao.qna_pwCheck(qna_idx, qna_pw);
		return result;
	}
	
	public QnaDto contentView(String qna_idx) {
		QnaDto dto = qnaDao.contentView(qna_idx);
		return dto;
	}
	
	public int qna_write(QnaDto dto) {
		int result = qnaDao.qna_write(dto);
		return result;
	}
}
