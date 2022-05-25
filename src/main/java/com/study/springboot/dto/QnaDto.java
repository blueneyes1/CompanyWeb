package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class QnaDto {
	private int qna_idx;
	private String qna_name;
	private String qna_pw;
	private String qna_title;
	private String qna_content;
	private Date qna_date;
}
