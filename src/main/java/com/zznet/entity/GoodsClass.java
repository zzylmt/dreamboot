package com.zznet.entity;

/**
 * Created by zz on 2016/12/25.
 */
public class GoodsClass {
    private int id;
    private String goodsclassname;
    private int parentid;
    private int clevel;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGoodsclassname() {
        return goodsclassname;
    }

    public void setGoodsclassname(String goodsclassname) {
        this.goodsclassname = goodsclassname;
    }

    public int getParentid() {
        return parentid;
    }

    public void setParentid(int parentid) {
        this.parentid = parentid;
    }

    public int getClevel() {
        return clevel;
    }

    public void setClevel(int clevel) {
        this.clevel = clevel;
    }
}
