package com.qf.novelwork.web;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.vo.CommentCustom;
import com.qf.novel.pojo.vo.ReplyCustom;
import com.qf.novel.service.ICommentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

    @RequestMapping("replyPage")
    public String replyListPage(@RequestParam("pid") Long pid, Model model){

        model.addAttribute("pid",pid);
        return "reply-list";
    }

    //查看回复
    @ResponseBody
    @RequestMapping("listRreply")
    public Result<ReplyCustom> listReplys(@RequestParam("pid") Long pid, Page page){
        Result<ReplyCustom> result = null;
        try{
            result = commentService.listReplysByPage(pid,page);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;


    }

}
