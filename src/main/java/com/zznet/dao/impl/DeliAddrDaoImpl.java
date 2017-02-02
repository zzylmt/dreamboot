package com.zznet.dao.impl;

import com.zznet.dao.DeliAddrDao;
import com.zznet.entity.DeliAddr;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zz on 2017/2/2.
 */
@Repository("deliaddrdao")
@Transactional
public class DeliAddrDaoImpl implements DeliAddrDao {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<DeliAddr> getDeliAddrList(int userid) {
        String sql = "select a.userid, a.provincecode, a.citycode, a.areacode, a.streetcode, a.detailinfo, a.isdefault, a.orderno, province.`name` as provincename, city.`name` as cityname, area.`name` as areaname, street.`name` as streetname,dbuser.nickname,a.telno,a.consignee from deliaddr as a left join province on a.provincecode = province.`code` left join city on a.citycode = city.`code` left join area on area.`code` = a.areacode left join street on street.`code` = a.streetcode LEFT JOIN dbuser on a.userid=dbuser.id where a.userid =  ? order by a.orderno asc ";
        List<DeliAddr> delliaddrList = new ArrayList<>();
        try {
            RowMapper<DeliAddr> mapper = (rs, rowNum) -> {
                DeliAddr a = new DeliAddr();
                a.setUserid(rs.getInt(1));
                a.setProvincecode(rs.getString(2));
                a.setCitycode(rs.getString(3));
                a.setAreacode(rs.getString(4));
                a.setStreetcode(rs.getString(5));
                a.setDetailinfo(rs.getString(6));
                a.setIsdefault(rs.getInt(7));
                a.setOrderno(rs.getInt(8));
                a.setProvincename(rs.getString(9));
                a.setCityname(rs.getString(10));
                a.setAreaname(rs.getString(11));
                a.setStreetname(rs.getString(12));
                a.setUsername(rs.getString(13));
                a.setTelno(rs.getString(14));
                a.setConsignee(rs.getString(15));
                return a;
            };
            delliaddrList = jdbcTemplate.query(sql, new Object[]{userid}, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        return delliaddrList;
    }

    @Override
    public DeliAddr addDeliAddr(DeliAddr deliaddr_old) {
        return null;
    }

    @Override
    public boolean delete(int userid, int orderno) {
        return false;
    }

    @Override
    public boolean update(DeliAddr deliaddr) {
        return false;
    }

    @Override
    public DeliAddr getDeliAddr(int userid, int orderno) {
        return null;
    }
}
