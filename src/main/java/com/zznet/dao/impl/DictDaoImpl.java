package com.zznet.dao.impl;

import com.zznet.dao.DictDao;
import com.zznet.entity.Dict;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zz on 2017/1/12.
 */
@Service("dictdao")
@Transactional
public class DictDaoImpl implements DictDao {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Dict> getDictList(String itype) {
        String mysql = "SELECT a.itype,a.typevalue,a.typename from dict a where a.itype = ?";
        List<Dict> dictList = new ArrayList<>();
        try {
            RowMapper<Dict> mapper = (rs, rowNum) -> {
                Dict a = new Dict();
                a.setItype(rs.getString(1));
                a.setTypevalue(rs.getString(2));
                a.setTypename(rs.getString(3));
                return a;
            };
            dictList = jdbcTemplate.query(mysql, new Object[]{itype}, mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        return dictList;
    }
}
