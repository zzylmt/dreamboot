package com.zznet.entity;

/**
 * Created by zz on 2017/7/9.
 */
public class TVLine {
    private int tvid;
    private String titlename;
    private String titleurl;
    private int titleno;

    public TVLine(int tvid, String titlename, String titleurl, int titleno) {
        this.tvid = tvid;
        this.titlename = titlename;
        this.titleurl = titleurl;
        this.titleno = titleno;
    }

    public int getTvid() {
        return tvid;
    }

    public void setTvid(int tvid) {
        this.tvid = tvid;
    }

    public String getTitlename() {
        return titlename;
    }

    public void setTitlename(String titlename) {
        this.titlename = titlename;
    }

    public String getTitleurl() {
        return titleurl;
    }

    public void setTitleurl(String titleurl) {
        this.titleurl = titleurl;
    }

    public int getTitleno() {
        return titleno;
    }

    public void setTitleno(int titleno) {
        this.titleno = titleno;
    }
}
