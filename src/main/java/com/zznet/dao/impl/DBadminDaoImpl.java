package com.zznet.dao.impl;

import com.zznet.dao.DBadminDao;
import com.zznet.entity.DBadmin;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by zz on 2016/9/28 15:39.
 */
@Repository("dbadmindao")
@Transactional
public class DBadminDaoImpl implements DBadminDao {
    @Resource
    private JdbcTemplate jdbcTemplate;

    public DBadmin getDBadmin(int id) {
        return null;
    }

    public DBadmin addDBadmin() {
        return null;
    }

    public List<DBadmin> getDBadmin(String username) {
        return null;
    }

    public DBadmin checkDBadmin(String username, String pswd) {
        String mysql = "SELECT a.id, a.username, a.pswd, a.userlevel, a.nickname, a.roleid, b.rolename, a.mobileno, a.email from dbadmin a LEFT JOIN roleinfo b on a.roleid=b.id where a.username = ? and a.pswd = ? ";
        DBadmin admin = new DBadmin();
        try {
            RowMapper<DBadmin> mapper = (rs, rowNum) -> {
                DBadmin a = new DBadmin();
                a.setId(rs.getInt(1));
                a.setUsername(rs.getString(2));
                a.setPswd(rs.getString(3));
                a.setUserlevel(rs.getInt(4));
                a.setNickname(rs.getString(5));
                a.setRoleid(rs.getInt(6));
                a.setRolename(rs.getString(7));
                a.setMobileno(rs.getString(8));
                a.setEmail(rs.getString(9));
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

    public boolean update(DBadmin userinfo) {
        String mysql = "update dbadmin set username=?,pswd=?,userlevel=?,nickname=?,roleid=?,mobileno=?,email=? where id=?";

        boolean result = false;

        try {
            this.jdbcTemplate.update(mysql, userinfo.getUsername(), userinfo.getPswd(), userinfo.getUserlevel(), userinfo.getNickname(),
                    userinfo.getRoleid(), userinfo.getMobileno(), userinfo.getEmail(), userinfo.getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean delete(int id) {
        String mysql = "delete from dbadmin where id=?";

        boolean result = false;

        try {
            this.jdbcTemplate.update(mysql, id);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
