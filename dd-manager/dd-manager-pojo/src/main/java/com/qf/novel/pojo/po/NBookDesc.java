package com.qf.novel.pojo.po;

import java.util.Date;

public class NBookDesc {
    private Long bookId;

    private Date created;

    private Date updated;

    private String bookDesc;

    public Long getBookId() {
        return bookId;
    }

    public void setBookId(Long bookId) {
        this.bookId = bookId;
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

    public String getBookDesc() {
        return bookDesc;
    }

    public void setBookDesc(String bookDesc) {
        this.bookDesc = bookDesc == null ? null : bookDesc.trim();
    }

    @Override
    public String toString() {
        return "NBookDesc{" +
                "bookId=" + bookId +
                ", created=" + created +
                ", updated=" + updated +
                ", bookDesc='" + bookDesc + '\'' +
                '}';
    }
}