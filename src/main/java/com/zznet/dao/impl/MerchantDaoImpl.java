package com.zznet.dao.impl;

import com.zznet.common.PageSize;
import com.zznet.dao.MerchantDao;
import com.zznet.entity.MerchantInfo;
import com.zznet.entity.ThePage;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by zz on 2017/1/10.
 */
@Service("merchantdao")
@Transactional
public class MerchantDaoImpl implements MerchantDao, PageSize {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public MerchantInfo getMerchant(int id) {
        String sql = "select a.id,a.merchantname,a.province_code,a.city_code,a.area_code,a.memo,a.headpic,a.contact,a.telno,a.addr,a.cocid,c.cocname,a.goodcount,a.score,a.createrid,a.createdate,a.mstatus, \tb.nickname from merchantinfo as a left join dbadmin b on a.createrid = b.id left join cocinfo c on a.cocid=c.id where a.id = ? ";

        MerchantInfo merchantInfo = new MerchantInfo();
        try {
            merchantInfo = this.jdbcTemplate.queryForObject(sql,
                    new Object[]{id}, (rs, rowNum) -> {
                        MerchantInfo a = new MerchantInfo();
                        a.setId(rs.getInt(1));
                        a.setMerchantname(rs.getString(2));
                        a.setProvince_code(rs.getString(3));
                        a.setCity_code(rs.getString(4));
                        a.setArea_code(rs.getString(5));
                        a.setMemo(rs.getString(6));
                        a.setHeadpic(rs.getString(7));
                        a.setContact(rs.getString(8));
                        a.setTelno(rs.getString(9));
                        a.setAddr(rs.getString(10));
                        a.setCocid(rs.getInt(11));
                        a.setCocname(rs.getString(12));
                        a.setGoodcount(rs.getInt(13));
                        a.setScore(rs.getBigDecimal(14));
                        a.setCreaterid(rs.getInt(15));
                        a.setCreatedate(rs.getString(16));
                        a.setMstatus(rs.getInt(17));
                        return a;
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return merchantInfo;
    }

    @Override
    public ThePage<MerchantInfo> getMerchantByName(String cocname, int pageno) {
        ThePage<MerchantInfo> merchantpage = new ThePage<>();

        String sql = "select a.id,a.merchantname,a.province_code,a.city_code,a.area_code,a.memo,a.headpic,a.contact,a.telno,a.addr,a.cocid,c.cocname,a.goodcount,a.score,a.createrid,a.createdate,a.mstatus, \tb.nickname from merchantinfo as a left join dbadmin b on a.createrid = b.id left join cocinfo c on a.cocid=c.id where a.merchantname like '%?%' order by a.createdate limit ?,?";
        String sql_count = "select count(*) from merchantinfo as a left join dbadmin b on a.createrid = b.id left join cocinfo c on a.cocid=c.id where a.merchantname like '%?%' ";

        if (pageno <= 0) {
            pageno = 1;
        }
        int startrecord = (pageno - 1) * pagesize;
        int totalrecord;
        int totalpage;

        RowMapper<MerchantInfo> mapper = (rs, rowNum) -> {
            MerchantInfo a = new MerchantInfo();
            a.setId(rs.getInt(1));
            a.setMerchantname(rs.getString(2));
            a.setProvince_code(rs.getString(3));
            a.setCity_code(rs.getString(4));
            a.setArea_code(rs.getString(5));
            a.setMemo(rs.getString(6));
            a.setHeadpic(rs.getString(7));
            a.setContact(rs.getString(8));
            a.setTelno(rs.getString(9));
            a.setAddr(rs.getString(10));
            a.setCocid(rs.getInt(11));
            a.setCocname(rs.getString(12));
            a.setGoodcount(rs.getInt(13));
            a.setScore(rs.getBigDecimal(14));
            a.setCreaterid(rs.getInt(15));
            a.setCreatedate(rs.getString(16));
            a.setMstatus(rs.getInt(17));
            return a;
        };

        totalrecord = jdbcTemplate.queryForObject(sql_count,
                new Object[]{cocname}, Integer.class);
        merchantpage.setTotalrecord(totalrecord);

        totalpage = (int) Math.ceil((double) totalrecord / (double) pagesize);

        merchantpage.setPageItems(jdbcTemplate.query(sql, new Object[]{cocname,
                startrecord, pagesize}, mapper));

        merchantpage.setCurrent(pageno);
        if (totalpage <= 0) {
            totalpage = 1;
        }
        merchantpage.setTotalpages(totalpage);

        return merchantpage;
    }
}
