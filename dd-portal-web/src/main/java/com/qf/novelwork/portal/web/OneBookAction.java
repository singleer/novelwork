package com.qf.novelwork.portal.web;

import com.qf.novel.pojo.po.NBook;
import com.qf.novel.pojo.po.NComment;
import com.qf.novel.pojo.vo.NBookCustom;
import com.qf.novel.service.OneBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;


@Controller
public class OneBookAction {
   @Autowired
   private OneBookService ser;
   @RequestMapping("/oneBook")
   public String searchbook(NBook nbook, HttpSession session,Long readid){
	   System.out.println("a");
	   Long id=nbook.getId();
	   System.out.println(id);
	  NBookCustom nbookCustom=new NBookCustom();
	try {
		nbookCustom = ser.onebook(id);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	session.setAttribute("nbookCustom",nbookCustom);
	System.out.println(readid);
	session.setAttribute("readid",readid);
	return "/bookDetail";
   }
   @RequestMapping("/jump")
	public String jump(NBookCustom nBookCustom,HttpSession session){
	   Long id=nBookCustom.getId();
	   System.out.println(id);
	   NBookCustom nbookCustom=new NBookCustom();
	   try {
		   nbookCustom = ser.onebook(id);
	   } catch (Exception e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
	   }
	   session.setAttribute("nbookCustom",nbookCustom);
   	return "/comment";
   }

	@RequestMapping("/jumpcomment")
	public String putcomment(NBookCustom nBookCustom,HttpSession session) {
		session.setAttribute("nbookCustom1", nBookCustom);
		return "/putcomment";
	}

	@RequestMapping("/commitcomment")
	@ResponseBody
	public int commitcomment(NComment nComment, HttpSession session){
		System.out.println(nComment.getContent());
		Long id=(Long) session.getAttribute("readid");
		nComment.setRid(id);
		Date date=new Date();
		nComment.setCreated(date);
		nComment.setStatus(1);
		int i = 0;
		try {
			i = ser.savecomment(nComment);
		}catch (Exception e){
			e.printStackTrace();
		}
		return i;
	}
}
