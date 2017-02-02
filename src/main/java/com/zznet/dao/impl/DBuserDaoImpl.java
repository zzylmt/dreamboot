package com.zznet.dao.impl;

import com.zznet.dao.DBuserDao;
import com.zznet.entity.DBuser;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by zz on 2017/2/2.
 */

@Repository("dbuserdao")
@Transactional
public class DBuserDaoImpl implements DBuserDao {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public DBuser getDBuser(int id) {
        return null;
    }

    @Override
    public DBuser addDBuser() {
        return null;
    }

    @Override
    public DBuser checkDBuser(String username, String pswd) {
        String mysql = "select a.id, a.username, a.pswd, a.nickname, a.email, a.qq, a.mobileno, a.addr, a.score, a.headpic, a.wx from dbuser a where a.username = ? and a.pswd = ? ";
        DBuser admin = new DBuser();
        try {
            RowMapper<DBuser> mapper = (rs, rowNum) -> {
                DBuser a = new DBuser();
                a.setId(rs.getInt(1));
                a.setUsername(rs.getString(2));
                a.setPswd(rs.getString(3));
                a.setNickname(rs.getString(4));
                a.setEmail(rs.getString(5));
                a.setQq(rs.getString(6));
                a.setMobileno(rs.getString(7));
                a.setAddr(rs.getString(8));
                a.setScore(rs.getBigDecimal(9));
                a.setHeadpic(rs.getString(10));
                a.setWx(rs.getString(11));
                return a;
            };

            admin = this.jdbcTemplate
                    .queryForObject(mysql, new Object[]{username, pswd}, mapper);
        } catch (EmptyResultDataAccessException ex) {
            admin = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }

    @Override
    public boolean update(DBuser userinfo) {
        return false;
    }
}
