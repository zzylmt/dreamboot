package org.zznet.dao.impl;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zznet.common.PageSize;
import org.zznet.dao.StreetDao;
import org.zznet.entity.StreetInfo;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zz on 2016/12/22.
 */
@Service("streetdao")
@Transactional
public class StreetDaoImpl implements StreetDao, PageSize {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<StreetInfo> getStreetList() {
        String mysql = "select a.code, a.name, a.parent_code from street as a";
        List<StreetInfo> areaList = new ArrayList<>();
        try {
            RowMapper<StreetInfo> mapper = (rs, rowNum) -> {
                StreetInfo a = new StreetInfo();
                a.setCode(rs.getString(1));
                a.setName(rs.getString(2));
                a.setParent_code(rs.getString(3));
                return a;
            };
            areaList = jdbcTemplate.query(mysql, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return areaList;
    }

    @Override
    public List<StreetInfo> getStreetList(String name) {
        String mysql = "select a.code, a.name, a.parent_code from street as a where a.name like '%?%'";
        List<StreetInfo> areaList = new ArrayList<>();
        try {
            RowMapper<StreetInfo> mapper = (rs, rowNum) -> {
                StreetInfo a = new StreetInfo();
                a.setCode(rs.getString(1));
                a.setName(rs.getString(2));
                a.setParent_code(rs.getString(3));
                return a;
            };
            areaList = jdbcTemplate.query(mysql, new Object[]{name}, mapper);
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