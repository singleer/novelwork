package com.qf.novel.service;
import com.qf.novel.pojo.po.NComment;
import com.qf.novel.pojo.vo.NBookCustom;
public interface OneBookService {
	NBookCustom onebook(Long id);

    int savecomment(NComment nComment);
}
