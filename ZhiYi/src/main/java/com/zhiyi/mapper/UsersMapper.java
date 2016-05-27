package com.zhiyi.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyi.entity.Admin;
import com.zhiyi.entity.Users;

public interface UsersMapper {

	int getTotal();



	List<Users> find(Map<String, Object> params);

	
	Users login(Users user); //登录

}