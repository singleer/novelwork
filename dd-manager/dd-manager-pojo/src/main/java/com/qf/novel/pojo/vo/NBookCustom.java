package com.qf.novel.pojo.vo;

import com.qf.novel.pojo.po.NBook;
import com.qf.novel.pojo.po.NBookMl;

import java.util.List;

/**
 * Created by ${lxh} on 2017/11/18 0018
 */
public class NBookCustom extends NBook {
    private String catName;//书籍类别
    private String author;//作者名
    private String clickView;//点击量
    private String ticketsView;//票数
    private String countView;
    private String scoreView;
    private List<CommentCustom> clist;
    private List<NBookMl> mlist;
    private Integer mnum;
    private Integer cnum;
    private String  desctitle;
    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getClickView() {
        return clickView;
    }

    public void setClickView(String clickView) {
        this.clickView = clickView;
    }

    public String getTicketsView() {
        return ticketsView;
    }

    public void setTicketsView(String ticketsView) {
        this.ticketsView = ticketsView;
    }

    public String getCountView() {
        return countView;
    }

    public void setCountView(String countView) {
        this.countView = countView;
    }

    public String getScoreView() {
        return scoreView;
    }

    public void setScoreView(String scoreView) {
        this.scoreView = scoreView;
    }

    public List<CommentCustom> getClist() {
        return clist;
    }

    public void setClist(List<CommentCustom> clist) {
        this.clist = clist;
    }

    public List<NBookMl> getMlist() {
        return mlist;
    }

    public void setMlist(List<NBookMl> mlist) {
        this.mlist = mlist;
    }

    public Integer getMnum() {
        return mnum;
    }

    public void setMnum(Integer mnum) {
        this.mnum = mnum;
    }

    public Integer getCnum() {
        return cnum;
    }

    public void setCnum(Integer cnum) {
        this.cnum = cnum;
    }

    public String getDesctitle() {
        return desctitle;
    }

    public void setDesctitle(String desctitle) {
        this.desctitle = desctitle;
    }

}
