package org.zznet.dao.impl;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zznet.dao.CoCDao;
import org.zznet.entity.CoCInfo;
import org.zznet.entity.ThePage;

import javax.annotation.Resource;

/**
 * Created by zz on 2017/1/10.
 */
@Service("cocdao")
@Transactional
public class CoCDaoImpl implements CoCDao {
    @Resource
    private JdbcTemplate jdbcTemplate;

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
        return null;
    }
}
