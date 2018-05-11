package com.zznet.dao.impl;

import com.zznet.common.PageSize;
import com.zznet.dao.ArticleDao;
import com.zznet.entity.ArticleInfo;
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
 * Created by zz on 2016/9/28 15:52.
 */
@Repository("articledao")
@Transactional
public class ArticleDaoImpl implements ArticleDao, PageSize {
    @Resource
    private JdbcTemplate jdbcTemplate;

    public ArticleInfo addArticle(final ArticleInfo articleinfo_old) {

        final String mysql = "INSERT INTO articleinfo (atitle,atitle_min,thumb_pic,atext,createrid,createdatetime,columnid,readcount,goodcount,orderscore,PROFILE,astatus ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

        ArticleInfo articleinfo;
        KeyHolder keyHolder = new GeneratedKeyHolder();

        this.jdbcTemplate.update(connection -> {
                    PreparedStatement ps = connection.prepareStatement(mysql,
                            new String[]{"id"});
                    ps.setString(1, articleinfo_old.getAtitle());
                    ps.setString(2, articleinfo_old.getAtitle_min());
                    ps.setString(3, articleinfo_old.getThumb_pic());
                    ps.setString(4, articleinfo_old.getAtext());
                    ps.setInt(5, articleinfo_old.getCreaterid());
                    ps.setString(6, articleinfo_old.getCreatedatetime());
                    ps.setInt(7, articleinfo_old.getColumnid());
                    ps.setInt(8, articleinfo_old.getReadcount());
                    ps.setInt(9, articleinfo_old.getGoodcount());
                    ps.setBigDecimal(10, articleinfo_old.getOrderscore());
                    ps.setString(11, articleinfo_old.getProfile());
                    ps.setInt(12, articleinfo_old.getAstatus());
                    return ps;
                }
                , keyHolder);
        articleinfo = articleinfo_old;
        articleinfo.setId(keyHolder.getKey().intValue());

        return articleinfo;
    }

    public ArticleInfo getArticle(int id) {
        String sql = "SELECT a.id,a.atitle,a.atitle_min,a.thumb_pic,a.atext,a.createrid,c.nickname,date_format(a" +
                ".createdatetime,'%Y-%m-%d %k:%i:%s'),a.columnid,a.readcount,a.goodcount,a.orderscore,b.columnname,a" +
                ".profile,a.astatus from articleinfo a LEFT JOIN columninfo b on a.columnid=b.id LEFT JOIN dbadmin c on a" +
                ".createrid=c.id where a.id = ? ";

        ArticleInfo articleInfo = new ArticleInfo();
        try {
            articleInfo = this.jdbcTemplate.queryForObject(sql,
                    new Object[]{id}, (rs, rowNum) -> {
                        ArticleInfo a = new ArticleInfo();
                        a.setId(rs.getInt(1));
                        a.setAtitle(rs.getString(2));
                        a.setAtitle_min(rs.getString(3));
                        a.setThumb_pic(rs.getString(4));
                        a.setAtext(rs.getString(5));
                        a.setCreaterid(rs.getInt(6));
                        a.setCreatername(rs.getString(7));
                        a.setCreatedatetime(rs.getString(8));
                        a.setColumnid(rs.getInt(9));
                        a.setReadcount(rs.getInt(10));
                        a.setGoodcount(rs.getInt(11));
                        a.setOrderscore(rs.getBigDecimal(12));
                        a.setColumnname(rs.getString(13));
                        a.setProfile(rs.getString(14));
                        a.setAstatus(rs.getInt(15));
                        return a;
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return articleInfo;
    }

    public ThePage<ArticleInfo> getArticleList(String atitle, int pageno) {

        return null;
    }

    public ThePage<ArticleInfo> getArticleByCol(int cid, int pageno) {
        ThePage<ArticleInfo> articlepage = new ThePage<>();

        String sql = "SELECT * FROM (SELECT aa.*, ROWNUM RN FROM (SELECT a.id,a.atitle,a.atitle_min,a.thumb_pic,a" +
                ".atext,a.createrid,a.creatername,to_char(a.createdatetime,'yyyy-mm-dd hh24:mi:ss'),a.columnid,a" +
                ".readcount,a.goodcount,a.orderscore,b.columnname,a.profile from articleinfo a LEFT JOIN columninfo b" +
                " on a.columnid=b.id where a.columnid= ? ORDER BY a.orderscore) aa WHERE ROWNUM <= ? order by aa" +
                ".orderscore desc) a WHERE RN >= ? order by a.orderscore desc,a.id desc";
        String sql_count = "SELECT COUNT(*) from articleinfo a LEFT JOIN columninfo b on a.columnid=b.id where a.columnid=?";

        if (pageno <= 0) {
            pageno = 1;
        }
        int startrecord = (pageno - 1) * pagesize + 1;
        int endrecord = pageno * pagesize;
        int totalrecord;
        int totalpage;

        RowMapper<ArticleInfo> mapper = (rs, rowNum) -> {
            ArticleInfo a = new ArticleInfo();
            a.setId(rs.getInt(1));
            a.setAtitle(rs.getString(2));
            a.setAtitle_min(rs.getString(3));
            a.setThumb_pic(rs.getString(4));
            a.setAtext(rs.getString(5));
            a.setCreaterid(rs.getInt(6));
            a.setCreatername(rs.getString(7));
            a.setCreatedatetime(rs.getString(8));
            a.setColumnid(rs.getInt(9));
            a.setReadcount(rs.getInt(10));
            a.setGoodcount(rs.getInt(11));
            a.setOrderscore(rs.getBigDecimal(12));
            a.setColumnname(rs.getString(13));
            a.setProfile(rs.getString(14));
            return a;
        };

        totalrecord = jdbcTemplate.queryForObject(sql_count,
                new Object[]{cid}, Integer.class);
        articlepage.setTotalrecord(totalrecord);

        totalpage = (int) Math.ceil((double) totalrecord / (double) pagesize);

        articlepage.setPageItems(jdbcTemplate.query(sql, new Object[]{cid, endrecord,
                startrecord}, mapper));

        articlepage.setCurrent(pageno);
        if (totalpage <= 0) {
            totalpage = 1;
        }
        articlepage.setTotalpages(totalpage);

        return articlepage;
    }

    public ThePage<ArticleInfo> getArticleByDBadmin(int adminid, int pageno) {
        ThePage<ArticleInfo> articlepage = new ThePage<>();

        String sql = "select a.id,a.atitle,a.atitle_min,a.thumb_pic,a.atext,a.createrid,c.nickname,date_format(a.createdatetime,'%Y-%m-%d %k:%i:%s'),a" +
                ".columnid,a.readcount,a.goodcount,a.orderscore,b.columnname,a.profile,a.astatus from articleinfo a left join columninfo b on a.columnid = b.id left join dbadmin c on a.createrid=c.id where a.createrid = ? order by a.id desc,a.orderscore limit ?,?";
        String sql_count = "SELECT COUNT(*) from articleinfo a LEFT JOIN columninfo b on a.columnid=b.id LEFT JOIN dbadmin c on a.createrid=c.id where a.createrid=? ";

        if (pageno <= 0) {
            pageno = 1;
        }
        int startrecord = (pageno - 1) * pagesize;
        int totalrecord;
        int totalpage;
        try {
            RowMapper<ArticleInfo> mapper = (rs, rowNum) -> {
                ArticleInfo a = new ArticleInfo();
                a.setId(rs.getInt(1));
                a.setAtitle(rs.getString(2));
                a.setAtitle_min(rs.getString(3));
                a.setThumb_pic(rs.getString(4));
                a.setAtext(rs.getString(5));
                a.setCreaterid(rs.getInt(6));
                a.setCreatername(rs.getString(7));
                a.setCreatedatetime(rs.getString(8));
                a.setColumnid(rs.getInt(9));
                a.setReadcount(rs.getInt(10));
                a.setGoodcount(rs.getInt(11));
                a.setOrderscore(rs.getBigDecimal(12));
                a.setColumnname(rs.getString(13));
                a.setProfile(rs.getString(14));
                a.setAstatus(rs.getInt(15));
                return a;
            };

            totalrecord = jdbcTemplate.queryForObject(sql_count,
                    new Object[]{adminid}, Integer.class);
            articlepage.setTotalrecord(totalrecord);

            totalpage = (int) Math.ceil((double) totalrecord / (double) pagesize);

            articlepage.setPageItems(jdbcTemplate.query(sql, new Object[]{adminid,
                    startrecord, pagesize}, mapper));

            articlepage.setCurrent(pageno);
            if (totalpage <= 0) {
                totalpage = 1;
            }
            articlepage.setTotalpages(totalpage);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return articlepage;
    }

    public ThePage<ArticleInfo> getArticleByLab(int lid, int pageno) {
        return null;
    }

    public boolean update(ArticleInfo articleinfo) {
        String mysql = "update articleinfo set atitle=?,atitle_min=?,thumb_pic=?,atext=?,createrid=?,createdatetime=?,columnid=?,readcount=?,goodcount=?,orderscore=?,profile=?,astatus=? where id=?";

        boolean result = false;

        try {
            this.jdbcTemplate.update(mysql, articleinfo.getAtitle(), articleinfo.getAtitle_min(), articleinfo.getThumb_pic(), articleinfo.getAtext(), articleinfo.getCreaterid(), articleinfo.getCreatedatetime(), articleinfo.getColumnid(), articleinfo.getReadcount(), articleinfo.getGoodcount(), articleinfo.getOrderscore(), articleinfo.getProfile(), articleinfo.getAstatus(), articleinfo.getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean delete(int id) {
        String mysql = "DELETE from articleinfo where id =?";

        boolean result = false;

        try {
            this.jdbcTemplate.update(mysql, id);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
