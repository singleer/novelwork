package com.qf.novel.pojo.vo;

import com.qf.novel.pojo.po.NReply;

/**
 * User: LXH
 * Date: 2017/11/23 0023
 * Time: 15:21
 */
public class ReplyCustom extends NReply {
    private String title;
    private String poster;
    private String reviewer;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String getReviewer() {
        return reviewer;
    }

    public void setReviewer(String reviewer) {
        this.reviewer = reviewer;
    }
}
