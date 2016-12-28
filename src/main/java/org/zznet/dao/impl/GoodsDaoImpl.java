package org.zznet.dao.impl;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zznet.common.PageSize;
import org.zznet.dao.GoodsDao;
import org.zznet.entity.GoodsInfo;
import org.zznet.entity.ThePage;

import javax.annotation.Resource;

/**
 * Created by zz on 2016/12/23.
 */
@Service("goodsdao")
@Transactional
public class GoodsDaoImpl implements GoodsDao, PageSize {
    @Resource
    private JdbcTemplate jdbcTemplate;

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
    public ThePage<GoodsInfo> getAreaPageByCreater(int createrid, int pageno) {
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
