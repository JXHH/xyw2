package com.zzkj.xyw.service;

import java.util.List;

import com.zzkj.xyw.model.User;

public interface IUserService {

	public void regist(User user);

	public List<User> login(String uname, String upsw);

	public List<User> findByPage(int pageNow, int size);

	public User findById(int uid);

	public int userCnt();

	public void update(User user);
	
	public List<User> queryUser(String uname, String usex,int age1, int age2);
	
	public List<User> findByEmail(String uemail);

}
