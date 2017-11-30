package com.qf.novel.pojo.po;

import java.util.Date;

public class NBook {
    private Long id;

    private String title;

    private Long click;

    private Long tickets;

    private Long count;

    private Integer score;

    private String readpoint;

    private Integer status;

    private Integer attribute;

    private String img;

    private Long cid;

    private Long rid;

    private Long aid;

    private Long pid;

    private Date created;

    private Date updated;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Long getClick() {
        return click;
    }

    public void setClick(Long click) {
        this.click = click;
    }

    public Long getTickets() {
        return tickets;
    }

    public void setTickets(Long tickets) {
        this.tickets = tickets;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getReadpoint() {
        return readpoint;
    }

    public void setReadpoint(String readpoint) {
        this.readpoint = readpoint == null ? null : readpoint.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getAttribute() {
        return attribute;
    }

    public void setAttribute(Integer attribute) {
        this.attribute = attribute;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public Long getCid() {
        return cid;
    }

    public void setCid(Long cid) {
        this.cid = cid;
    }

    public Long getRid() {
        return rid;
    }

    public void setRid(Long rid) {
        this.rid = rid;
    }

    public Long getAid() {
        return aid;
    }

    public void setAid(Long aid) {
        this.aid = aid;
    }

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }

    @Override
    public String toString() {
        return "NBook{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", click=" + click +
                ", tickets=" + tickets +
                ", count=" + count +
                ", score=" + score +
                ", readpoint='" + readpoint + '\'' +
                ", status=" + status +
                ", attribute=" + attribute +
                ", img='" + img + '\'' +
                ", cid=" + cid +
                ", rid=" + rid +
                ", aid=" + aid +
                ", pid=" + pid +
                ", created=" + created +
                ", updated=" + updated +
                '}';
    }
}