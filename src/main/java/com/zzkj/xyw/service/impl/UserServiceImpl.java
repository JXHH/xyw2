package com.zzkj.xyw.service.impl;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzkj.xyw.dao.IUserDAO;
import com.zzkj.xyw.model.User;
import com.zzkj.xyw.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDAO userDao;

	public void regist(User user) {

		userDao.add(user);
	}

	public List<User> login(String uname, String upsw) {

		String hql = "from User u where u.uname=? and u.upsw=?";
		return userDao.find(hql, new String[] { uname, upsw });
	}

	public List<User> findByPage(int pageNow, int pageSize) {

		return userDao.findByPage(pageNow, pageSize);
	}

	public int userCnt() {

		String hql = "User as u";
		return userDao.cnt(hql);
	}

	public void update(User user) {

		userDao.update(user);
	}

	public User findById(int uid) {

		return userDao.findById(uid);
	}
	

	public List<User> queryUser(String uname,String sex,int age1,int age2) {
		 List<User> list1=null;
		 List<User> list2=null;
		 List<User> list3=null;
		 Calendar a=Calendar.getInstance();
		 int uage1 = a.get(Calendar.YEAR) - age1;//大年份
	     int uage2 = a.get(Calendar.YEAR) - age2;//小年份
	     System.out.println(uage1);
	     String hql="from User u where year(u.ubirth)>=?  and year(u.ubirth) <= ?";
	     System.out.println(hql);
	     list1 = userDao.find(hql,new Object[]{uage2, uage1});
	     System.out.println(list1.size());
		 if(uname != null)
	    {
			hql = "from User u where u.uname like ?";
	    	list2 = userDao.find(hql, "%" +uname+ "%");
	    	System.out.println(list2.size());
	    	list1.retainAll(list2);
	    
	    }
		 if(sex == null){
			  return list1;
		 }
		 else
	    {
			hql = "from User u where u.usex=?";
		    list3 = userDao.find(hql, sex);
		    list1.retainAll(list3);
		}
       return list1;
	}
}
