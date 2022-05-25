package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class One2oneDto {
	private int one2one_idx;
	private String one2one_name;
	private String one2one_phone;
	private String one2one_email;
	private String one2one_address;
	private String one2one_title;
	private String one2one_content;
	private Date one2one_date;
	
}
