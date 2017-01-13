package com.zznet.dao.impl;

import com.zznet.common.PageSize;
import com.zznet.dao.CityDao;
import com.zznet.entity.CityInfo;
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
@Repository("citydao")
@Transactional
public class CityDaoImpl implements CityDao, PageSize {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<CityInfo> getCityList() {
        String mysql = "select a.code, a.name, a.parent_code from city as a";
        List<CityInfo> cityList = new ArrayList<>();
        try {
            RowMapper<CityInfo> mapper = (rs, rowNum) -> {
                CityInfo a = new CityInfo();
                a.setCode(rs.getString(1));
                a.setName(rs.getString(2));
                a.setParent_code(rs.getString(3));
                return a;
            };
            cityList = jdbcTemplate.query(mysql, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return cityList;
    }

    @Override
    public List<CityInfo> getCityListByParent(String parentcode) {
        String mysql = "select a.code, a.name, a.parent_code from city as a where a.parent_code = ?";
        List<CityInfo> cityList = new ArrayList<>();
        try {
            RowMapper<CityInfo> mapper = (rs, rowNum) -> {
                CityInfo a = new CityInfo();
                a.setCode(rs.getString(1));
                a.setName(rs.getString(2));
                a.setParent_code(rs.getString(3));
                return a;
            };
            cityList = jdbcTemplate.query(mysql, new Object[]{parentcode}, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return cityList;
    }

    @Override
    public List<CityInfo> getCityList(String name) {
        String mysql = "select a.code, a.name, a.parent_code from city as a where a.name like ?";


        List<CityInfo> cityList = new ArrayList<>();
        try {
            RowMapper<CityInfo> mapper = (rs, rowNum) -> {
                CityInfo a = new CityInfo();
                a.setCode(rs.getString(1));
                a.setName(rs.getString(2));
                a.setParent_code(rs.getString(3));
                return a;
            };
            cityList = jdbcTemplate.query(mysql, new Object[]{"%"+name+"%"}, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return cityList;
    }

    @Override
    public CityInfo getCity(String code) {
        String sql = "select a.code, a.name, a.parent_code from city as a where a.code = ? ";

        CityInfo cityInfo = new CityInfo();
        try {
            cityInfo = this.jdbcTemplate.queryForObject(sql,
                    new Object[]{code}, (rs, rowNum) -> {
                        CityInfo a = new CityInfo();
                        a.setCode(rs.getString(1));
                        a.setName(rs.getString(2));
                        a.setParent_code(rs.getString(3));
                        return a;
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cityInfo;
    }
}