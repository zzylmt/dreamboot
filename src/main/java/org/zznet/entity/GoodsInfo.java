package org.zznet.entity;

import java.math.BigDecimal;

/**
 * Created by zz on 2016/12/22.
 * 商品信息
 */
public class GoodsInfo {
    private int id;
    private String goodspic;
    private String goodstitle;
    private String goodsname;
    private String memo;
    private BigDecimal gprice;
    private String salesurl;
    private int merchantid;
    private int createrid;
    private String createdate;
    private int goodsclass;
    private int goodcount;
    private int readcount;
    private BigDecimal score;
    private int gstatus;

    private String creatername;
    private String merchantname;
    private String cocname;

    public String getCreatername() {
        return creatername;
    }

    public void setCreatername(String creatername) {
        this.creatername = creatername;
    }

    public String getMerchantname() {
        return merchantname;
    }

    public void setMerchantname(String merchantname) {
        this.merchantname = merchantname;
    }

    public String getCocname() {
        return cocname;
    }

    public void setCocname(String cocname) {
        this.cocname = cocname;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGoodspic() {
        return goodspic;
    }

    public void setGoodspic(String goodspic) {
        this.goodspic = goodspic;
    }

    public String getGoodstitle() {
        return goodstitle;
    }

    public void setGoodstitle(String goodstitle) {
        this.goodstitle = goodstitle;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public BigDecimal getGprice() {
        return gprice;
    }

    public void setGprice(BigDecimal gprice) {
        this.gprice = gprice;
    }

    public String getSalesurl() {
        return salesurl;
    }

    public void setSalesurl(String salesurl) {
        this.salesurl = salesurl;
    }

    public int getMerchantid() {
        return merchantid;
    }

    public void setMerchantid(int merchantid) {
        this.merchantid = merchantid;
    }

    public int getCreaterid() {
        return createrid;
    }

    public void setCreaterid(int createrid) {
        this.createrid = createrid;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public int getGoodsclass() {
        return goodsclass;
    }

    public void setGoodsclass(int goodsclass) {
        this.goodsclass = goodsclass;
    }

    public int getGoodcount() {
        return goodcount;
    }

    public void setGoodcount(int goodcount) {
        this.goodcount = goodcount;
    }

    public int getReadcount() {
        return readcount;
    }

    public void setReadcount(int readcount) {
        this.readcount = readcount;
    }

    public BigDecimal getScore() {
        return score;
    }

    public void setScore(BigDecimal score) {
        this.score = score;
    }

    public int getGstatus() {
        return gstatus;
    }

    public void setGstatus(int gstatus) {
        this.gstatus = gstatus;
    }
}
