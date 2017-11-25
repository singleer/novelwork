package com.qf.novelwork.service.impl;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.dao.NCommentCustomMapper;
import com.qf.novel.dao.NReplyCustomMapper;
import com.qf.novel.dao.NReplyMapper;
import com.qf.novel.pojo.vo.CommentCustom;
import com.qf.novel.pojo.vo.ReplyCustom;
import com.qf.novel.service.ICommentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * User: LXH
 * Date: 2017/11/22 0022
 * Time: 22:30
 */
@Service
public class CommentServiceImpl implements ICommentService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private NCommentCustomMapper commentCustomDao;
    @Autowired
    private NReplyCustomMapper replyCustomDao;
    @Override
    public Result<CommentCustom> listCommentsByPage(Page page) {
        Result<CommentCustom> result = null;
        try{
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("page",page);
            //map.put("query",query);
            result = new Result<CommentCustom>();
            result.setTotal(commentCustomDao.countComments());
            result.setRows(commentCustomDao.listCommentsByPage(map));

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public Result<ReplyCustom> listReplysByPage(Long pid, Page page) {
        Result<ReplyCustom> result = null;
        try{
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("page",page);
            map.put("commentId",pid);
            //map.put("query",query);
            result = new Result<ReplyCustom>();
            result.setTotal(replyCustomDao.countReplys(pid));
            result.setRows(replyCustomDao.listReplysByPage(map));

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }
}
