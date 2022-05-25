package com.study.springboot.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IOne2oneDao;
import com.study.springboot.dto.One2oneDto;

@Component
public class One2oneService {
	@Autowired
	IOne2oneDao one2oneDao;
	
	public int one2one_insert(One2oneDto dto) {
		int result = one2oneDao.one2one_insert(dto);
		return result;
	}

	public int one2one_insert_map(Map map) {
		int result = one2oneDao.one2one_insert_map(map);
		return result;
	}
}
