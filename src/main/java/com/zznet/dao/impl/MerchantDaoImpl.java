package com.zznet.dao.impl;

import com.zznet.common.PageSize;
import com.zznet.dao.MerchantDao;
import com.zznet.entity.MerchantInfo;
import com.zznet.entity.ThePage;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.sql.PreparedStatement;

/**
 * Created by zz on 2017/1/10.
 */
@Service("merchantdao")
@Transactional
public class MerchantDaoImpl implements MerchantDao, PageSize {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public MerchantInfo addMerchant(MerchantInfo merchant_old) {
        final String mysql = "insert into merchantinfo (merchantname,province_code,city_code,area_code,memo,headpic,contact,telno,addr,cocid,goodcount,score," +
                "createrid,createdate,mstatus) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        MerchantInfo merchantinfo;
        KeyHolder keyHolder = new GeneratedKeyHolder();

        jdbcTemplate.update(connection -> {
                    PreparedStatement ps = connection.prepareStatement(mysql,
                            new String[]{"id"});
                    ps.setString(1, merchant_old.getMerchantname());
                    ps.setString(2, merchant_old.getProvince_code());
                    ps.setString(3, merchant_old.getCity_code());
                    ps.setString(4, merchant_old.getArea_code());
                    ps.setString(5, merchant_old.getMemo());
                    ps.setString(6, merchant_old.getHeadpic());
                    ps.setString(7, merchant_old.getContact());
                    ps.setString(8, merchant_old.getTelno());
                    ps.setString(9, merchant_old.getAddr());
                    ps.setInt(10, merchant_old.getCocid());
                    ps.setInt(11, merchant_old.getGoodcount());
                    ps.setBigDecimal(12, merchant_old.getScore());
                    ps.setInt(13, merchant_old.getCreaterid());
                    ps.setString(14, merchant_old.getCreatedate());
                    ps.setInt(15, merchant_old.getMstatus());
                    return ps;
                }
                , keyHolder);

        merchantinfo = merchant_old;
        merchantinfo.setId(keyHolder.getKey().intValue());

        return merchantinfo;
    }

    @Override
    public boolean delete(int id) {
        String mysql = "delete from merchantinfo where id=?";

        boolean result = false;

        try {
            this.jdbcTemplate.update(mysql, id);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public boolean update(MerchantInfo merchantinfo) {
        String mysql = "update merchantinfo set a.merchantname=?,a.province_code=?,a.city_code=?,a.area_code=?,a.memo=?,a.headpic=?,a.contact=?,a.telno=?,a.addr=?,a.cocid=?,a.goodscount=?,a.score=?,a.createrid=?,a.createdate=?,a.mstatus where a.id=?";

        boolean result = false;

        try {
            this.jdbcTemplate.update(mysql, merchantinfo.getMerchantname(), merchantinfo.getProvince_code(), merchantinfo.getCity_code(), merchantinfo.getArea_code(), merchantinfo.getMemo(), merchantinfo.getHeadpic(), merchantinfo.getContact(), merchantinfo.getTelno(), merchantinfo.getAddr(), merchantinfo.getCocid(), merchantinfo.getGoodcount(), merchantinfo.getScore(), merchantinfo.getCreaterid(), merchantinfo.getCreatedate(), merchantinfo.getMstatus(), merchantinfo.getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public MerchantInfo getMerchant(int id) {
        String sql = "select a.id,a.merchantname,a.province_code,a.city_code,a.area_code,a.memo,a.headpic,a.contact,a.telno,a.addr,a.cocid,c.cocname,a.goodcount,a.score,a.createrid,a.createdate,a.mstatus, b.nickname from merchantinfo as a left join dbadmin b on a.createrid = b.id left join cocinfo c on a.cocid=c.id where a.id = ? ";

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
    public ThePage<MerchantInfo> getMerchantByName(String merchantname, int pageno) {
        ThePage<MerchantInfo> merchantpage = new ThePage<>();

        String sql = "select a.id,a.merchantname,a.province_code,a.city_code,a.area_code,a.memo,a.headpic,a.contact,a.telno,a.addr,a.cocid,c.cocname,a" +
                ".goodcount,a.score,a.createrid,a.createdate,a.mstatus, b.nickname from merchantinfo as a left join dbadmin b on a.createrid = b.id left join" +
                " cocinfo c on a.cocid=c.id where a.merchantname like ? order by a.createdate limit ?,?";
        String sql_count = "select count(*) from merchantinfo as a left join dbadmin b on a.createrid = b.id left join cocinfo c on a.cocid=c.id where a" +
                ".merchantname like ? ";

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
                new Object[]{"%" + merchantname + "%"}, Integer.class);
        merchantpage.setTotalrecord(totalrecord);

        totalpage = (int) Math.ceil((double) totalrecord / (double) pagesize);

        merchantpage.setPageItems(jdbcTemplate.query(sql, new Object[]{"%" + merchantname + "%",
                startrecord, pagesize}, mapper));

        merchantpage.setCurrent(pageno);
        if (totalpage <= 0) {
            totalpage = 1;
        }
        merchantpage.setTotalpages(totalpage);

        return merchantpage;
    }
}
