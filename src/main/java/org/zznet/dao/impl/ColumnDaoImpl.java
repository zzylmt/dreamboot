package org.zznet.dao.impl;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zznet.dao.ColumnDao;
import org.zznet.entity.ColumnInfo;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zz on 2016/10/4.
 */

@Service("columndao")
@Transactional
public class ColumnDaoImpl implements ColumnDao {
    @Resource
    private JdbcTemplate jdbcTemplate;

    public List<ColumnInfo> getColList() {
        String sql = "select a.id,a.columnname from columninfo a";
        List<ColumnInfo> columnInfoList = new ArrayList<>();
        try {
            RowMapper<ColumnInfo> mapper = (rs, rowNum) -> {
                ColumnInfo a = new ColumnInfo();
                a.setId(rs.getInt(1));
                a.setColumnname(rs.getString(2));

                return a;
            };
            columnInfoList = jdbcTemplate.query(sql,
                    mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        return columnInfoList;
    }

    public ColumnInfo getColumnInfo(int id) {
        String sql = "SELECT a.id,a.columnname from columninfo a where a.id = ? ";

        ColumnInfo columnInfo = new ColumnInfo();
        try {
            columnInfo = this.jdbcTemplate.queryForObject(sql,
                    new Object[]{id}, (rs, rowNum) -> {
                        ColumnInfo a = new ColumnInfo();
                        a.setId(rs.getInt(1));
                        a.setColumnname(rs.getString(2));
                        return a;
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return columnInfo;
    }

    public boolean update(ColumnInfo columnInfo) {
        String mysql = "update columninfo set columnname=? where id=?";

        boolean result = false;

        try {
            this.jdbcTemplate.update(mysql, columnInfo.getColumnname(), columnInfo.getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }


}
