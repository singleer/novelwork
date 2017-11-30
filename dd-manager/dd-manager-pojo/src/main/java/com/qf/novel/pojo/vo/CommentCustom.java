package com.qf.novel.pojo.vo;

import com.qf.novel.pojo.po.NComment;

/**
 * User: LXH
 * Date: 2017/11/22 0022
 * Time: 22:27
 */
public class CommentCustom extends NComment {
    private String novel;
    private String reader;
    private String author;
    private Integer replyNum;

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getNovel() {
        return novel;
    }

    public void setNovel(String novel) {
        this.novel = novel;
    }

    public String getReader() {
        return reader;
    }

    public void setReader(String reader) {
        this.reader = reader;
    }

    public Integer getReplyNum() {
        return replyNum;
    }

    public void setReplyNum(Integer replyNum) {
        this.replyNum = replyNum;
    }
}
