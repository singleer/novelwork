package com.qf.novelwork.web;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.vo.CommentCustom;
import com.qf.novel.service.ICommentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: LXH
 * Date: 2017/11/22 0022
 * Time: 22:16
 */
@Controller
public class CommentAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Autowired
    private ICommentService commentService;

    @ResponseBody
    @RequestMapping("comments")
    public Result<CommentCustom> listBooks(Page page){

        Result<CommentCustom> result = null;
        try{
            result = commentService.listCommentsByPage(page);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;

    }
}
