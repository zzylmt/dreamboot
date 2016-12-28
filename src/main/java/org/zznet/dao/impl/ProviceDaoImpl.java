package org.zznet.dao.impl;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zznet.common.PageSize;
import org.zznet.dao.ProviceDao;
import org.zznet.entity.ProvinceInfo;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zz on 2016/12/22.
 */
@Service("provicedao")
@Transactional
public class ProviceDaoImpl implements ProviceDao, PageSize {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<ProvinceInfo> getProviceList() {
        String mysql = "select a.code, a.name from provinces as a";
        List<ProvinceInfo> provincesList = new ArrayList<>();
        try {
            RowMapper<ProvinceInfo> mapper = (rs, rowNum) -> {
                ProvinceInfo a = new ProvinceInfo();
                a.setCode(rs.getString(1));
                a.setName(rs.getString(2));
                return a;
            };
            provincesList = jdbcTemplate.query(mysql, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return provincesList;
    }

    @Override
    public List<ProvinceInfo> getProviceList(String name) {
        String mysql = "select a.code, a.name from provinces as a where a.name like '%?%'";
        List<ProvinceInfo> provincesList = new ArrayList<>();
        try {
            RowMapper<ProvinceInfo> mapper = (rs, rowNum) -> {
                ProvinceInfo a = new ProvinceInfo();
                a.setCode(rs.getString(1));
                a.setName(rs.getString(2));
                return a;
            };
            provincesList = jdbcTemplate.query(mysql, new Object[]{name}, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return provincesList;
    }

    @Override
    public ProvinceInfo getProvice(String code) {
        String sql = "select a.code, a.name from provinces as a where a.code = ? ";

        ProvinceInfo articleInfo = new ProvinceInfo();
        try {
            articleInfo = this.jdbcTemplate.queryForObject(sql,
                    new Object[]{code}, (rs, rowNum) -> {
                        ProvinceInfo a = new ProvinceInfo();
                        a.setCode(rs.getString(1));
                        a.setName(rs.getString(2));
                        return a;
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return articleInfo;
    }
}