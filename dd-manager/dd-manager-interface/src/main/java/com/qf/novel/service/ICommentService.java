package com.qf.novel.service;

import com.qf.novel.common.dto.Page;
import com.qf.novel.common.dto.Result;
import com.qf.novel.pojo.vo.CommentCustom;
import com.qf.novel.pojo.vo.ReplyCustom;

/**
 * User: LXH
 * Date: 2017/11/22 0022
 * Time: 22:29
 */
public interface ICommentService {
    Result<CommentCustom> listCommentsByPage(Page page);

    Result<ReplyCustom> listReplysByPage(Long pid, Page page);
}
