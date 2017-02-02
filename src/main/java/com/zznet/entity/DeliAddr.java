package com.zznet.entity;

/**
 * Created by zz on 2017/2/2.
 */
public class DeliAddr {
    private int userid;
    private String provincecode;
    private String citycode;
    private String areacode;
    private String streetcode;
    private String detailinfo;
    private int isdefault;
    private int orderno;
    private String telno;
    private String consignee;

    public String getTelno() {
        return telno;
    }

    public void setTelno(String telno) {
        this.telno = telno;
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }

    private String provincename;
    private String cityname;
    private String areaname;
    private String streetname;
    private String username;

    public int getOrderno() {
        return orderno;
    }

    public void setOrderno(int orderno) {
        this.orderno = orderno;
    }

    public String getProvincename() {
        return provincename;
    }

    public void setProvincename(String provincename) {
        this.provincename = provincename;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public String getAreaname() {
        return areaname;
    }

    public void setAreaname(String areaname) {
        this.areaname = areaname;
    }

    public String getStreetname() {
        return streetname;
    }

    public void setStreetname(String streetname) {
        this.streetname = streetname;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getProvincecode() {
        return provincecode;
    }

    public void setProvincecode(String provincecode) {
        this.provincecode = provincecode;
    }

    public String getCitycode() {
        return citycode;
    }

    public void setCitycode(String citycode) {
        this.citycode = citycode;
    }

    public String getAreacode() {
        return areacode;
    }

    public void setAreacode(String areacode) {
        this.areacode = areacode;
    }

    public String getStreetcode() {
        return streetcode;
    }

    public void setStreetcode(String streetcode) {
        this.streetcode = streetcode;
    }

    public String getDetailinfo() {
        return detailinfo;
    }

    public void setDetailinfo(String detailinfo) {
        this.detailinfo = detailinfo;
    }

    public int getIsdefault() {
        return isdefault;
    }

    public void setIsdefault(int isdefault) {
        this.isdefault = isdefault;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
