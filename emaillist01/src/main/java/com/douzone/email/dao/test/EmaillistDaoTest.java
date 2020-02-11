package com.douzone.email.dao.test;

import java.util.List;

import com.douzone.email.dao.EmaillistDao;
import com.douzone.email.vo.EmaillistVo;

public class EmaillistDaoTest {

	public static void main(String[] args) {
		insertTest();
		selectTest();
	}
	
	public static void selectTest() {
		List<EmaillistVo> list = new EmaillistDao().findAll();
		for(EmaillistVo vos : list) {
			System.out.println(vos);
		}
	}
	
	public static void insertTest() {
		EmaillistVo vo = new EmaillistVo();
		vo.setFirstName("마");
		vo.setLastName("이콜");
		vo.setEmail("ma@email.com");
		
		new EmaillistDao().insert(vo);
	}

}
