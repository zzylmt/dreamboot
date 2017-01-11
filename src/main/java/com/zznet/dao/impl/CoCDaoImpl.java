package com.zznet.dao.impl;

import com.zznet.common.PageSize;
import com.zznet.dao.CoCDao;
import com.zznet.entity.CoCInfo;
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
@Service("cocdao")
@Transactional
public class CoCDaoImpl implements CoCDao, PageSize {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public CoCInfo addCoC(CoCInfo coc_old) {
        final String mysql = "insert into cocinfo (cocname,province_code,city_code,area_code,memo,headpic,contact,telno,addr,createrid,createdate,cstatus) values(?,?,?,?,?,?,?,?,?,?,?,?)";

        CoCInfo cocinfo;
        KeyHolder keyHolder = new GeneratedKeyHolder();

        jdbcTemplate.update(connection -> {
                    PreparedStatement ps = connection.prepareStatement(mysql,
                            new String[]{"id"});
                    ps.setString(1, coc_old.getCoCname());
                    ps.setString(2, coc_old.getProvince_code());
                    ps.setString(3, coc_old.getCity_code());
                    ps.setString(4, coc_old.getArea_code());
                    ps.setString(5, coc_old.getMemo());
                    ps.setString(6, coc_old.getHeadpic());
                    ps.setString(7, coc_old.getContact());
                    ps.setString(8, coc_old.getTelno());
                    ps.setString(9, coc_old.getAddr());
                    ps.setInt(10, coc_old.getCreaterid());
                    ps.setString(11, coc_old.getCreatedate());
                    ps.setInt(12, coc_old.getCstatus());
                    return ps;
                }
                , keyHolder);

        cocinfo = coc_old;
        cocinfo.setId(keyHolder.getKey().intValue());

        return cocinfo;
    }

    @Override
    public boolean delete(int id) {
        String mysql = "delete from cocinfo where id=?";

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
    public boolean update(CoCInfo cocinfo) {
        String mysql = "update cocinfo set a.cocname=?,a.province_code=?,a.city_code=?,a.area_code=?,a.memo=?,a.headpic=?,a.contact=?,a.telno=?,a.addr=?,a.createrid=?,a.createdate=?,a.cstatus where a.id=?";

        boolean result = false;

        try {
            this.jdbcTemplate.update(mysql, cocinfo.getCoCname(), cocinfo.getProvince_code(), cocinfo.getCity_code(), cocinfo.getArea_code(), cocinfo.getMemo()
                    , cocinfo.getHeadpic(), cocinfo.getContact(), cocinfo.getTelno(), cocinfo.getAddr(), cocinfo.getCreaterid(), cocinfo.getCreatedate(), cocinfo.getCstatus(), cocinfo.getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public CoCInfo getCoC(int id) {
        String sql = "select a.id, a.cocname, a.province_code, a.city_code, a.area_code, a.memo, a.headpic, a.contact, a.telno, a.addr, a.createrid, a" +
                ".createdate, a.cstatus,b.nickname from cocinfo as a LEFT JOIN dbadmin b on a.createrid=b.id where a.id= ? ";

        CoCInfo cocInfo = new CoCInfo();
        try {
            cocInfo = this.jdbcTemplate.queryForObject(sql,
                    new Object[]{id}, (rs, rowNum) -> {
                        CoCInfo a = new CoCInfo();
                        a.setId(rs.getInt(1));
                        a.setCoCname(rs.getString(2));
                        a.setProvince_code(rs.getString(3));
                        a.setCity_code(rs.getString(4));
                        a.setArea_code(rs.getString(5));
                        a.setMemo(rs.getString(6));
                        a.setHeadpic(rs.getString(7));
                        a.setContact(rs.getString(8));
                        a.setTelno(rs.getString(9));
                        a.setAddr(rs.getString(10));
                        a.setCreaterid(rs.getInt(11));
                        a.setCreatedate(rs.getString(12));
                        a.setCstatus(rs.getInt(13));
                        return a;
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cocInfo;
    }

    @Override
    public ThePage<CoCInfo> getCoCByName(String cocname, int pageno) {
        ThePage<CoCInfo> cocinfopage = new ThePage<>();

        String sql = "select a.id, a.cocname, a.province_code, a.city_code, a.area_code, a.memo, a.headpic, a.contact, a.telno, a.addr, a.createrid, a" +
                ".createdate, a.cstatus,b.nickname from cocinfo as a LEFT JOIN dbadmin b on a.createrid=b.id where a.cocname like '%?%' order by a.createdate limit ?,?";
        String sql_count = "select count(*) from cocinfo as a LEFT JOIN dbadmin b on a.createrid=b.id where a.cocname like '%?%' ";

        if (pageno <= 0) {
            pageno = 1;
        }
        int startrecord = (pageno - 1) * pagesize;
        int totalrecord;
        int totalpage;

        RowMapper<CoCInfo> mapper = (rs, rowNum) -> {
            CoCInfo a = new CoCInfo();
            a.setId(rs.getInt(1));
            a.setCoCname(rs.getString(2));
            a.setProvince_code(rs.getString(3));
            a.setCity_code(rs.getString(4));
            a.setArea_code(rs.getString(5));
            a.setMemo(rs.getString(6));
            a.setHeadpic(rs.getString(7));
            a.setContact(rs.getString(8));
            a.setTelno(rs.getString(9));
            a.setAddr(rs.getString(10));
            a.setCreaterid(rs.getInt(11));
            a.setCreatedate(rs.getString(12));
            a.setCstatus(rs.getInt(13));
            return a;
        };

        totalrecord = jdbcTemplate.queryForObject(sql_count,
                new Object[]{cocname}, Integer.class);
        cocinfopage.setTotalrecord(totalrecord);

        totalpage = (int) Math.ceil((double) totalrecord / (double) pagesize);

        cocinfopage.setPageItems(jdbcTemplate.query(sql, new Object[]{cocname,
                startrecord, pagesize}, mapper));

        cocinfopage.setCurrent(pageno);
        if (totalpage <= 0) {
            totalpage = 1;
        }
        cocinfopage.setTotalpages(totalpage);

        return cocinfopage;
    }
}
