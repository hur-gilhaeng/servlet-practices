package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;

public class GuestbookDaoTest {

	public static void main(String[] args) {
//		insertTest("김철수","안녕하십니까?","0000");
//		insertTest("이영희","안녕하시옵니까?","0001");
//		selectTest();
//		if(ckSelectTest(2L,"0000")) deleteTest(2L);
		selectTest();
	}

	public static void deleteTest(Long no) {
		 new GuestbookDao().delete(no);
	}

	public static Boolean ckSelectTest(Long no, String password) {
		return new GuestbookDao().ckPassword(no, password);
	}

	public static void selectTest() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vos : list) {
			System.out.println(vos);
		}
	}

	public static void insertTest(String name, String contents,String password) {
		GuestbookVo vo = new GuestbookVo();
		vo.setName(name);
		vo.setContents(contents);
		vo.setPassword(password);
		
		new GuestbookDao().insert(vo);
	}
}
