package com.qf.novelwork.service.impl;


import com.qf.novel.dao.NCommentMapper;
import com.qf.novel.dao.NOneBookMapper;
import com.qf.novel.pojo.po.*;
import com.qf.novel.pojo.vo.CommentCustom;
import com.qf.novel.pojo.vo.NBookCustom;
import com.qf.novel.service.OneBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OneBookServiceImpl implements OneBookService{
	@Autowired
	private NOneBookMapper mapper;
	@Autowired
	private NCommentMapper commentMapper;
	@Override
	public NBookCustom onebook(Long id) {
		//书本信息
		NBookCustom nbookCustom = mapper.searchbook(id);
		//评论数
		Integer cnum=mapper.countcomment(id);
		nbookCustom.setCnum(cnum);
		//章节数
	    Integer mnum=mapper.countbookml(id);
		nbookCustom.setMnum(mnum);
	    //评论列表及评论人，回复数
	    List<CommentCustom> clist=mapper.clist(id);
	    for(int i=0;i<cnum;i++){
	    	long bid=clist.get(i).getId();
	    	long rid=clist.get(i).getRid();
	    	Integer replynum=mapper.reply(bid);
            NReader nReader=mapper.reader(rid);
            clist.get(i).setReader(nReader.getUsername());
            clist.get(i).setReplyNum(replynum);
	    }
		nbookCustom.setClist(clist);
        //章节列表
	    List<NBookMl> mlist=mapper.mlist(id);
		nbookCustom.setMlist(mlist);
	    //作品信息简介
	    NBookDesc bookDesc=mapper.desctitle(id);
		nbookCustom.setDesctitle( bookDesc.getBookDesc());
	    //作品作者
		Long aid=nbookCustom.getAid();
		NAuthor nAuthor=mapper.authordetail(aid);
		nbookCustom.setAuthor(nAuthor.getAuthorname());
		//作品类别
		Long cid=nbookCustom.getCid();
		NBookCat nBookCat=mapper.bookcat(cid);
		nbookCustom.setCatName(nBookCat.getName());

		return nbookCustom;
	}

	@Override
	public int savecomment(NComment nComment) {
        NComment record=new NComment();
        record.setCreated(nComment.getCreated());
        record.setRid(nComment.getRid());
        record.setTitle(nComment.getTitle());
        record.setContent(nComment.getContent());
		int i = commentMapper.insert(nComment);
		return i;
	}
}
