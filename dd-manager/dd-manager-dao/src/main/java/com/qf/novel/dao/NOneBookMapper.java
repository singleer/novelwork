package com.qf.novel.dao;

import com.qf.novel.pojo.po.*;
import com.qf.novel.pojo.vo.CommentCustom;
import com.qf.novel.pojo.vo.NBookCustom;

import java.util.List;

/**
 * User: Administrator
 * Date: 2017/11/25
 * Time: 17:26
 * Version:V1.0
 */
public interface NOneBookMapper {
    public NBookCustom searchbook(Long id);

    public Integer countcomment(Long id);

    public Integer countbookml(Long id);

    public List<CommentCustom> clist(Long id);

    public List<NBookMl> mlist(Long id);

    public NBookDesc desctitle(Long id);

    public NAuthor authordetail(Long aid);

    public NBookCat bookcat(Long cid);

    public Integer reply(long bid);

    public NReader reader(long rid);
}
