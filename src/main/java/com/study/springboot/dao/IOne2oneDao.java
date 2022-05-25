package com.study.springboot.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.One2oneDto;

@Mapper
public interface IOne2oneDao {
	public int one2one_insert(One2oneDto dto);
	public int one2one_insert_map(Map map);
}
