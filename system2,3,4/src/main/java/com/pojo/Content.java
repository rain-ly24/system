package com.pojo;

public class Content {
    private long contentId;
    private String contentName;
    private int contentNum;
    private String contentDetail;
    private String picPath;
    public String getPicPath() {
        return picPath;
    }
    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }
    public long getContentId() {
        return this.contentId;
    }

    public void setContentId(long contentId) {
        this.contentId = contentId;
    }

    public String getContentName() {
        return this.contentName;
    }

    public void setContentName(String contentName) {
        this.contentName = contentName;
    }

    public int getContentNum() {
        return contentNum;
    }

    public void setContentNum(int contentNum) {
        this.contentNum = contentNum;
    }

    public String getContentDetail() {
        return contentDetail;
    }

    public void setContentDetail(String contentDetail) {
        this.contentDetail = contentDetail;
    }

    @Override
    public String toString() {
        return "Content{" +
                "contentId=" + contentId +
                ", contentName='" + contentName + '\'' +
                ", contentNum=" + contentNum +
                ", contentDetail='" + contentDetail + '\'' +
                '}';
    }
}