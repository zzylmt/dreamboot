package com.zznet.dao.impl;

import com.zznet.common.PageSize;
import com.zznet.dao.StreetDao;
import com.zznet.entity.StreetInfo;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zz on 2016/12/22.
 */
@Repository("streetdao")
@Transactional
public class StreetDaoImpl implements StreetDao, PageSize {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<StreetInfo> getStreetList() {
        String mysql = "select a.code, a.name, a.parent_code from street as a";
        List<StreetInfo> streetList = new ArrayList<>();
        try {
            RowMapper<StreetInfo> mapper = (rs, rowNum) -> {
                StreetInfo a = new StreetInfo();
                a.setCode(rs.getString(1));
                a.setName(rs.getString(2));
                a.setParent_code(rs.getString(3));
                return a;
            };
            streetList = jdbcTemplate.query(mysql, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return streetList;
    }

    @Override
    public List<StreetInfo> getStreetListByParent(String parentcode) {
        String mysql = "select a.code, a.name, a.parent_code from street as a where a.parent_code = ?";
        List<StreetInfo> streetList = new ArrayList<>();
        try {
            RowMapper<StreetInfo> mapper = (rs, rowNum) -> {
                StreetInfo a = new StreetInfo();
                a.setCode(rs.getString(1));
                a.setName(rs.getString(2));
                a.setParent_code(rs.getString(3));
                return a;
            };
            streetList = jdbcTemplate.query(mysql, new Object[]{parentcode}, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return streetList;
    }

    @Override
    public List<StreetInfo> getStreetList(String name) {
        String mysql = "select a.code, a.name, a.parent_code from street as a where a.name like ?";
        List<StreetInfo> areaList = new ArrayList<>();
        try {
            RowMapper<StreetInfo> mapper = (rs, rowNum) -> {
                StreetInfo a = new StreetInfo();
                a.setCode(rs.getString(1));
                a.setName(rs.getString(2));
                a.setParent_code(rs.getString(3));
                return a;
            };
            areaList = jdbcTemplate.query(mysql, new Object[]{"%"+name+"%"}, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return areaList;
    }

    @Override
    public StreetInfo getStreet(String code) {
        String sql = "select a.code, a.name, a.parent_code from street as a where a.code = ? ";

        StreetInfo StreetInfo = new StreetInfo();
        try {
            StreetInfo = this.jdbcTemplate.queryForObject(sql,
                    new Object[]{code}, (rs, rowNum) -> {
                        StreetInfo a = new StreetInfo();
                        a.setCode(rs.getString(1));
                        a.setName(rs.getString(2));
                        a.setParent_code(rs.getString(3));
                        return a;
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return StreetInfo;
    }
}