package com.study.springboot.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;

//@NoArgsConstructor  //파라미터가 없는 기본 생성자를 생성
//@RequiredArgsConstructor //final이나 @NonNull인 필드 값만 파라미터로 받는 생성자
@AllArgsConstructor //모든 필드값을 파라미터로 받는 생성자
@Data  //기본생성자, Getter/Setter를 만들어줌.
public class NoticeDto {
	@NonNull  //널을 허용하지 않는 필드
	private int notice_idx;
	private String notice_title;
	private String notice_content;
	private String notice_member_id;
	private Date notice_date;
	
}
