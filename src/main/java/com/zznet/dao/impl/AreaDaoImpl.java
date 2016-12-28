package com.zznet.dao.impl;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.zznet.common.PageSize;
import com.zznet.dao.AreaDao;
import com.zznet.entity.AreaInfo;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zz on 2016/12/22.
 */
@Repository("areadao")
@Transactional
public class AreaDaoImpl implements AreaDao, PageSize {

    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<AreaInfo> getAreaList() {
        String mysql = "select a.code, a.name, a.parent_code from area as a";
        List<AreaInfo> areaList = new ArrayList<>();
        try {
            RowMapper<AreaInfo> mapper = (rs, rowNum) -> {
                AreaInfo a = new AreaInfo();
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
    public List<AreaInfo> getAreaList(String name) {
        String mysql = "select a.code, a.name, a.parent_code from area as a where a.name like '%?%'";
        List<AreaInfo> areaList = new ArrayList<>();
        try {
            RowMapper<AreaInfo> mapper = (rs, rowNum) -> {
                AreaInfo a = new AreaInfo();
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
    public AreaInfo getArea(String code) {
        String sql = "select a.code, a.name, a.parent_code from area as a where a.code = ? ";

        AreaInfo areaInfo = new AreaInfo();
        try {
            areaInfo = this.jdbcTemplate.queryForObject(sql,
                    new Object[]{code}, (rs, rowNum) -> {
                        AreaInfo a = new AreaInfo();
                        a.setCode(rs.getString(1));
                        a.setName(rs.getString(2));
                        a.setParent_code(rs.getString(3));
                        return a;
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return areaInfo;
    }
}