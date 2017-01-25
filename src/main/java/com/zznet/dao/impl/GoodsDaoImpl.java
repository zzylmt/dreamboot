package com.zznet.dao.impl;

import com.zznet.common.PageSize;
import com.zznet.dao.GoodsDao;
import com.zznet.entity.GoodsInfo;
import com.zznet.entity.ThePage;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.sql.PreparedStatement;

/**
 * Created by zz on 2016/12/23.
 */
@Repository("goodsdao")
@Transactional
public class GoodsDaoImpl implements GoodsDao, PageSize {
    @Resource
    private JdbcTemplate jdbcTemplate;

    public GoodsInfo addGoods(final GoodsInfo goods_old) {

        final String mysql = "INSERT INTO goodsinfo (goodspic,goodstitle,goodsname,memo,gprice,salesurl,merchantid,createrid,createdate,goodsclass,goodcount," +
                "readcount,score,gstatus ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        GoodsInfo goodsinfo;
        KeyHolder keyHolder = new GeneratedKeyHolder();

        this.jdbcTemplate.update(connection -> {
                    PreparedStatement ps = connection.prepareStatement(mysql,
                            new String[]{"id"});
                    ps.setString(1, goods_old.getGoodspic());
                    ps.setString(2, goods_old.getGoodstitle());
                    ps.setString(3, goods_old.getGoodsname());
                    ps.setString(4, goods_old.getMemo());
                    ps.setBigDecimal(5, goods_old.getGprice());
                    ps.setString(6, goods_old.getSalesurl());
                    ps.setInt(7, goods_old.getMerchantid());
                    ps.setInt(8, goods_old.getCreaterid());
                    ps.setString(9, goods_old.getCreatedate());
                    ps.setInt(10, goods_old.getGoodsclass());
                    ps.setInt(11, goods_old.getGoodcount());
                    ps.setInt(12, goods_old.getReadcount());
                    ps.setBigDecimal(13, goods_old.getScore());
                    ps.setInt(14, goods_old.getGstatus());
                    return ps;
                }
                , keyHolder);
        goodsinfo = goods_old;
        goodsinfo.setId(keyHolder.getKey().intValue());

        return goodsinfo;
    }

    @Override
    public boolean delete(int id) {
        String mysql = "DELETE from goodsinfo where id=?";

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
    public boolean update(GoodsInfo goodsinfo) {
        String mysql = "update goodsinfo set goodspic=?,goodstitle=?,goodsname=?,memo=?,gprice=?,salesurl=?,merchantid=?,createrid=?,createdate=?,goodsclass=?,goodcount=?,readcount=?,score=?,gstatus=? where id=?";

        boolean result = false;

        try {
            this.jdbcTemplate.update(mysql, goodsinfo.getGoodspic(), goodsinfo.getGoodstitle(), goodsinfo.getGoodsname(), goodsinfo.getMemo(), goodsinfo.getGprice(), goodsinfo.getSalesurl(), goodsinfo.getMerchantid(), goodsinfo.getCreaterid(), goodsinfo.getCreatedate(), goodsinfo.getGoodsclass(), goodsinfo.getGoodcount(), goodsinfo.getReadcount(), goodsinfo.getScore(), goodsinfo.getGstatus(), goodsinfo.getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public GoodsInfo getGoods(int id) {
        String sql = "select a.id, a.goodspic, a.goodstitle, a.goodsname, a.memo, a.gprice, a.salesurl, a.merchantid, a.createrid, a.createdate, " +
                "a.goodsclass, a.goodcount, a.readcount, a.score, a.gstatus from goodsinfo as a where a.id = ?";

        GoodsInfo goodsinfo = new GoodsInfo();
        try {
            goodsinfo = this.jdbcTemplate.queryForObject(sql,
                    new Object[]{id}, (rs, rowNum) -> {
                        GoodsInfo a = new GoodsInfo();
                        a.setId(rs.getInt(1));
                        a.setGoodspic(rs.getString(2));
                        a.setGoodstitle(rs.getString(3));
                        a.setGoodsname(rs.getString(4));
                        a.setMemo(rs.getString(5));
                        a.setGprice(rs.getBigDecimal(6));
                        a.setSalesurl(rs.getString(7));
                        a.setMerchantid(rs.getInt(8));
                        a.setCreaterid(rs.getInt(9));
                        a.setCreatedate(rs.getString(10));
                        a.setGoodsclass(rs.getInt(11));
                        a.setGoodcount(rs.getInt(12));
                        a.setReadcount(rs.getInt(13));
                        a.setScore(rs.getBigDecimal(14));
                        a.setGstatus(rs.getInt(15));
                        return a;
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return goodsinfo;
    }

    @Override
    public ThePage<GoodsInfo> getGoodsPageByCreater(int createrid, int pageno) {
        ThePage<GoodsInfo> goodsinfopage = new ThePage<>();

        String sql = "select a.id,a.goodspic,a.goodstitle,a.goodsname,a.memo,a.gprice,a.salesurl,a.merchantid,a.createrid,a.createdate,a.goodsclass,a" +
                ".goodcount,a.readcount,a.score,a.gstatus from goodsinfo as a where a.createrid = ? order by a.createdate limit ?,?";
        String sql_count = "select count(*) from goodsinfo as a where a.createrid = ?";

        if (pageno <= 0) {
            pageno = 1;
        }
        int startrecord = (pageno - 1) * pagesize;
        int totalrecord;
        int totalpage;

        RowMapper<GoodsInfo> mapper = (rs, rowNum) -> {
            GoodsInfo a = new GoodsInfo();
            a.setId(rs.getInt(1));
            a.setGoodspic(rs.getString(2));
            a.setGoodstitle(rs.getString(3));
            a.setGoodsname(rs.getString(4));
            a.setMemo(rs.getString(5));
            a.setGprice(rs.getBigDecimal(6));
            a.setSalesurl(rs.getString(7));
            a.setMerchantid(rs.getInt(8));
            a.setCreaterid(rs.getInt(9));
            a.setCreatedate(rs.getString(10));
            a.setGoodsclass(rs.getInt(11));
            a.setGoodcount(rs.getInt(12));
            a.setReadcount(rs.getInt(13));
            a.setScore(rs.getBigDecimal(14));
            a.setGstatus(rs.getInt(15));
            return a;
        };

        totalrecord = jdbcTemplate.queryForObject(sql_count,
                new Object[]{createrid}, Integer.class);
        goodsinfopage.setTotalrecord(totalrecord);

        totalpage = (int) Math.ceil((double) totalrecord / (double) pagesize);

        goodsinfopage.setPageItems(jdbcTemplate.query(sql, new Object[]{createrid,
                startrecord, pagesize}, mapper));

        goodsinfopage.setCurrent(pageno);
        if (totalpage <= 0) {
            totalpage = 1;
        }
        goodsinfopage.setTotalpages(totalpage);

        return goodsinfopage;
    }
}
