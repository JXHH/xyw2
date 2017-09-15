package com.xt.ebook.service;

import java.util.List;

import com.xt.ebook.model.Manager;

public interface IManagerService {

	public void regist(Manager mng);

	public List<Manager> login(String mname, String mpsw);

	public List<Manager> findAll();

	public void delete(String[] mid);
}
